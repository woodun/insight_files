#include <stdio.h>
#include<iostream>
#include<fstream>
#include<string>
#include <fstream>
#include <math.h>
#include <cmath>
#include <stdlib.h>
#include <sstream>
#include <bitset>
//#include <cstdlib>


using namespace std;

int main ( int argc, char *argv[] ) {
	
	int DBI_enabled = 0;
	
	typedef union {
		float f_;
		unsigned u_;
		int i_;		
	} FloatBits;
	
	FloatBits bit_converter;
	
	if ( argc < 3 ){
		
		printf ("error");
	}else {
		
		if ( argc = 4 ){
			DBI_enabled = atoi( argv[3] );			
		}
		
		std::FILE * pFile = fopen (argv[2],"w");
		
		ifstream GPU_result ( argv[1] );		
		
		if ( !GPU_result.is_open() ){
			
			fprintf (pFile, "error");
		}else{			
			
			//if( std::strcmp( argv[1], "GESUMMV_GPU.txt" ) == 0 ){			
			
			//}			
			
			float gpu_number_float;
			int gpu_number_int;
			float gpu_number_new;
			
			///////////////per bit sum array
			int number_of_ones_array_float[1024]; ////////8 bits per byte * 4B per float * 8 float per flit * 4 flits = 1024
			int number_of_bit_flips_array_float[1024]; ///////8 bits per byte * 4B per float * 8 float per flit * 3 flits = 768 (only three flips with four flits)
			int number_of_ones_array_int[1024]; 
			int number_of_bit_flips_array_int[1024]; 
			int number_of_ones_array_new[1024];
			int number_of_bit_flips_array_new[1024];
			
			/////////////////////dbi
			///////////////reverse per bit sum array per cache line
			int reverse_number_of_ones_array_float[1024];
			int reverse_number_of_bit_flips_array_float[1024];
			int reverse_number_of_ones_array_int[1024];
			int reverse_number_of_bit_flips_array_int[1024];
			int reverse_number_of_ones_array_new[1024];
			int reverse_number_of_bit_flips_array_new[1024];
			/////////////////////dbi
			
			///////////////temp count per cache line
			int temp_number_of_ones_float = 0; 
			int temp_number_of_bit_flips_float = 0;
			int temp_number_of_ones_int = 0; 
			int temp_number_of_bit_flips_int = 0; 
			int temp_number_of_ones_new = 0;
			int temp_number_of_bit_flips_new = 0;
			
			///////////////per cache line distribution array
			int distribution_number_of_ones_array_float[1025];
			int distribution_number_of_bit_flips_array_float[1025];
			int distribution_number_of_ones_array_int[1025]; 
			int distribution_number_of_bit_flips_array_int[1025]; 
			int distribution_number_of_ones_array_new[1025];
			int distribution_number_of_bit_flips_array_new[1025];
			
			/////////////initialize
			for(int m = 0; m < 1024; ++m){
				number_of_ones_array_float[m] = 0;
				number_of_ones_array_int[m] = 0;
				number_of_ones_array_new[m] = 0;
			}
			for(int m = 0; m < 1024; ++m){
				number_of_bit_flips_array_float[m] = 0;
				number_of_bit_flips_array_int[m] = 0;
				number_of_bit_flips_array_new[m] = 0;
			}
			for(int m = 0; m < 1025; ++m){
				distribution_number_of_ones_array_float[m] = 0;
				distribution_number_of_ones_array_int[m] = 0;
				distribution_number_of_ones_array_new[m] = 0;
			}
			for(int m = 0; m < 1025; ++m){
				distribution_number_of_bit_flips_array_float[m] = 0;
				distribution_number_of_bit_flips_array_int[m] = 0;
				distribution_number_of_bit_flips_array_new[m] = 0;
			}
			/////////////////////dbi
			for(int m = 0; m < 1024; ++m){
				reverse_number_of_ones_array_float[m] = 0;
				reverse_number_of_ones_array_int[m] = 0;
				reverse_number_of_ones_array_new[m] = 0;
			}
			for(int m = 0; m < 1024; ++m){
				reverse_number_of_bit_flips_array_float[m] = 0;
				reverse_number_of_bit_flips_array_int[m] = 0;
				reverse_number_of_bit_flips_array_new[m] = 0;
			}
			/////////////////////dbi
			
			int total_cache_line_count = 0;
			int total_flit_count = 0;
			int total_float_count = 0;
			
			std::bitset<32> temp_flit_byte_array_float[8]; //////////////4B per float * 8 float per flit = 32B
			std::bitset<32> temp_flit_byte_array_int[8]; //////////////4B per float * 8 float per flit = 32B
			std::bitset<32> temp_flit_byte_array_new[8]; //////////////4B per float * 8 float per flit = 32B
			int temp_float_count = 0; ///////////float count within flit
			int temp_flit_count = 0; ///////////flit count within cache line
			int temp_bit_count = 0; ///////////bit count within cache line
			std::bitset<32> temp_flit_byte;
			/////////////////////dbi
			int temp_ones_count_in_flit_int = 0;
			int temp_flips_count_in_flit_int = 0;
			int temp_ones_count_in_flit_float = 0;
			int temp_flips_count_in_flit_float = 0;
			int temp_ones_count_in_flit_new = 0;
			int temp_flips_count_in_flit_new = 0;			
			/////////////////////dbi

			std::string   gpu_line;
			
			//while( std::getline(GPU_result, gpu_line, ' ') ) {
			while( std::getline(GPU_result, gpu_line) ) {
				std::stringstream  gpu_lineStream_float(gpu_line);
				std::stringstream  gpu_lineStream_int(gpu_line);
				std::stringstream  gpu_lineStream_new(gpu_line);
				
				// Read an integer at a time from the line
				while(gpu_lineStream_float >> gpu_number_float) {						
					//fprintf (pFile, "gpu:%f\n", gpu_number_float);
					
					//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
					//////////////////////////////////////////////ieee float format
					bit_converter.f_ = gpu_number_float;
					temp_flit_byte = bitset<32>(bit_converter.u_);					
					
					////////////check the number of 1s
					for(int i_bit = 31; i_bit >= 0; --i_bit){ ////////////bitset is little endian
						if(temp_flit_byte[i_bit] == 1){ 
							number_of_ones_array_float[temp_bit_count + 31 - i_bit]++;
							temp_number_of_ones_float++;
						////////////////////////////dbi
							temp_ones_count_in_flit_float++;///////per flit 
							reverse_number_of_ones_array_float[temp_bit_count + 31 - i_bit]--;							
						}else{
							reverse_number_of_ones_array_float[temp_bit_count + 31 - i_bit]++;
						}	
						////////////////////////////dbi
					}				
					
					////////////check bitflips
					if(temp_flit_count > 0){/////////only flit 1, 2, 3's flip can be counted.
						for(int i_bit = 31; i_bit >= 0; --i_bit){ ////////////bitset is little endian
							if(temp_flit_byte[i_bit] != temp_flit_byte_array_float[temp_float_count][i_bit]){
								number_of_bit_flips_array_float[temp_bit_count + 31 - i_bit]++;
								temp_number_of_bit_flips_float++;
							////////////////////////////dbi
								temp_flips_count_in_flit_int++;///////per flit 
								reverse_number_of_bit_flips_array_float[temp_bit_count + 31 - i_bit]--;								
							}else{
								reverse_number_of_bit_flips_array_float[temp_bit_count + 31 - i_bit]++;
							}
							////////////////////////////dbi
						}
					}

					/////////////////////////////////////////////////update history flit bits
					temp_flit_byte_array_float[temp_float_count] = temp_flit_byte;
					
					
					//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
					//////////////////////////////////////////////ieee int format ////////float can read int, int cannot read float.
					//////////////////////////////////////////////////////////////////////the '.' as an unidentifiable character will be read as 0, and set EOL.
					//////////////////////////////////////////////////////////////////////so ignore int results when using float data. 
					//////////////////////////////////////////////////////////////////////but float result is validate when using int data.
					gpu_lineStream_int >> gpu_number_int;
					
					bit_converter.i_ = gpu_number_int;
					temp_flit_byte = bitset<32>(bit_converter.u_);
					
					
					////////////check the number of 1s
					for(int i_bit = 31; i_bit >= 0; --i_bit){ ////////////bitset is little endian
						if(temp_flit_byte[i_bit] == 1){ 
							number_of_ones_array_int[temp_bit_count + 31 - i_bit]++;
							temp_number_of_ones_int++;/////per cache line
						////////////////////////////dbi
							temp_ones_count_in_flit_int++;///////per flit 
							reverse_number_of_ones_array_int[temp_bit_count + 31 - i_bit]--;							
						}else{
							reverse_number_of_ones_array_int[temp_bit_count + 31 - i_bit]++;
						}	
						////////////////////////////dbi						
					}	
					
					////////////check bitflips
					if(temp_flit_count > 0){/////////only flit 1, 2, 3's flip can be counted.
						for(int i_bit = 31; i_bit >= 0; --i_bit){ ////////////bitset is little endian
							if(temp_flit_byte[i_bit] != temp_flit_byte_array_int[temp_float_count][i_bit]){
								number_of_bit_flips_array_int[temp_bit_count + 31 - i_bit]++;
								temp_number_of_bit_flips_int++;
							////////////////////////////dbi
								temp_flips_count_in_flit_int++;///////per flit 
								reverse_number_of_bit_flips_array_int[temp_bit_count + 31 - i_bit]--;								
							}else{
								reverse_number_of_bit_flips_array_int[temp_bit_count + 31 - i_bit]++;
							}
							////////////////////////////dbi
						}
					}
					
					/////////////////////////////////////////////////update history flit bits
					temp_flit_byte_array_int[temp_float_count] = temp_flit_byte;
				
				
					//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
					//////////////////////////////////////////////new float format /////////same precision as float
					gpu_lineStream_new >> gpu_number_new;
					
					bit_converter.f_ = gpu_number_new;
					
					/////////////////////////////////////////////convert to new float type
					unsigned char first_byte = bit_converter.u_ >> 24;/////////////little endian
					unsigned char second_byte = ( bit_converter.u_ >> 16 ) & 255;/////////////little endian
					unsigned char exp_byte = (first_byte << 1 ) | ( second_byte >> 7 );
					
					///////normal float exp range: 127 to -126 (254 to 127, 126 to 1), new float exp range: 127 to 0, -1 to -126, currently we use -0 and -127 for subnormal and inf
					unsigned char exp_byte_new = 0;
					if(exp_byte == 255){
						exp_byte_new = 0b11111111;
					}else if(exp_byte == 0){
						exp_byte_new = 0b10000000;
					}else if(exp_byte >= 127){
						exp_byte_new = (exp_byte - 127) & 0b01111111;//////////positive
					}else{
						exp_byte_new = (127 - exp_byte) | 0b10000000;//////////negative
					}
				
					first_byte = (first_byte & 0b10000000) | (exp_byte_new >> 1);
					second_byte = (second_byte & 0b01111111) | (exp_byte_new << 7);
					bit_converter.u_ = (bit_converter.u_ & 0b00000000111111111111111111111111) | (first_byte << 24);///////////first_byte type auto changed to unsign
					bit_converter.u_ = (bit_converter.u_ & 0b11111111000000001111111111111111) | (second_byte << 16);///////////second_byte type auto changed to unsign
				
					temp_flit_byte = bitset<32>(bit_converter.u_);					
					
					////////////check the number of 1s
					for(int i_bit = 31; i_bit >= 0; --i_bit){ ////////////bitset is little endian
						if(temp_flit_byte[i_bit] == 1){
							number_of_ones_array_new[temp_bit_count + 31 - i_bit]++;
							temp_number_of_ones_new++;
						////////////////////////////dbi
							temp_ones_count_in_flit_new++;///////per flit 
							reverse_number_of_ones_array_new[temp_bit_count + 31 - i_bit]--;							
						}else{
							reverse_number_of_ones_array_new[temp_bit_count + 31 - i_bit]++;
						}	
						////////////////////////////dbi
					}
					
					////////////check bitflips
					if(temp_flit_count > 0){/////////only flit 1, 2, 3's flip can be counted.
						for(int i_bit = 31; i_bit >= 0; --i_bit){ ////////////bitset is little endian
							if(temp_flit_byte[i_bit] != temp_flit_byte_array_new[temp_float_count][i_bit]){
								number_of_bit_flips_array_new[temp_bit_count + 31 - i_bit]++;
								temp_number_of_bit_flips_new++;
							////////////////////////////dbi
								temp_flips_count_in_flit_new++;///////per flit 
								reverse_number_of_bit_flips_array_new[temp_bit_count + 31 - i_bit]--;								
							}else{
								reverse_number_of_bit_flips_array_new[temp_bit_count + 31 - i_bit]++;
							}
							////////////////////////////dbi
						}
					}

					/////////////////////////////////////////////////update history flit bits
					temp_flit_byte_array_new[temp_float_count] = temp_flit_byte;
					
					//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
					/////////////next indices					
					total_float_count++;
					temp_float_count = total_float_count % 8; ///////////float count within flit
					temp_bit_count = ( total_float_count % 32 ) * 32; ///////////bit count within cache line
					
					if(temp_float_count == 0){ ////////////////////////////per flit
						
						////////////////////////////dbi
						if(DBI_enabled){
							if(temp_ones_count_in_flit_int > 128){ //////////larger than half of the flit size
								for(int r_bit = 255; r_bit >= 0; --r_bit){
									number_of_ones_array_int[256 * temp_flit_count + r_bit] += reverse_number_of_ones_array_int[256 * temp_flit_count + r_bit]; ////////////reverse ones count
								}
							}							
							if(temp_flips_count_in_flit_int > 128){ //////////larger than half of the flit size
								for(int r_bit = 255; r_bit >= 0; --r_bit){
									number_of_bit_flips_array_int[256 * temp_flit_count + r_bit] += reverse_number_of_bit_flips_array_int[256 * temp_flit_count + r_bit]; ////////////reverse flips count
								}
								for(int r_float = 7; r_float >= 0; --r_float){								
									temp_flit_byte_array_int[r_float].flip(); ////////////reverse flit history
								}
							}
							
							
							if(temp_ones_count_in_flit_float > 128){ //////////larger than half of the flit size
								for(int r_bit = 255; r_bit >= 0; --r_bit){
									number_of_ones_array_float[256 * temp_flit_count + r_bit] += reverse_number_of_ones_array_float[256 * temp_flit_count + r_bit]; ////////////reverse ones count
								}
							}							
							if(temp_flips_count_in_flit_float > 128){ //////////larger than half of the flit size
								for(int r_bit = 255; r_bit >= 0; --r_bit){
									number_of_bit_flips_array_float[256 * temp_flit_count + r_bit] += reverse_number_of_bit_flips_array_float[256 * temp_flit_count + r_bit]; ////////////reverse flips count
								}
								for(int r_float = 7; r_float >= 0; --r_float){								
									temp_flit_byte_array_float[r_float].flip(); ////////////reverse flit history
								}
							}
							
							
						if(temp_ones_count_in_flit_new > 128){ //////////larger than half of the flit size
								for(int r_bit = 255; r_bit >= 0; --r_bit){
									number_of_ones_array_new[256 * temp_flit_count + r_bit] += reverse_number_of_ones_array_new[256 * temp_flit_count + r_bit]; ////////////reverse ones count
								}
							}							
							if(temp_flips_count_in_flit_new > 128){ //////////larger than half of the flit size
								for(int r_bit = 255; r_bit >= 0; --r_bit){
									number_of_bit_flips_array_new[256 * temp_flit_count + r_bit] += reverse_number_of_bit_flips_array_new[256 * temp_flit_count + r_bit]; ////////////reverse flips count
								}
								for(int r_float = 7; r_float >= 0; --r_float){				
									temp_flit_byte_array_new[r_float].flip(); ////////////reverse flit history
								}
							}						
						}/////////////////////////////////////end of: if(DBI_enabled){
						
						temp_ones_count_in_flit_int = 0;
						temp_flips_count_in_flit_int = 0;
						temp_ones_count_in_flit_float = 0;
						temp_flips_count_in_flit_float = 0;
						temp_ones_count_in_flit_new = 0;
						temp_flips_count_in_flit_new = 0;
						////////////////////////////dbi
						
						total_flit_count++;
						temp_flit_count	= total_flit_count % 4; ///////////flit count within cache line
					}
					
					if(temp_bit_count == 0){ ////////////////////////////per cache line
						total_cache_line_count++;
						
						////////////////////////////dbi
						for(int m = 0; m < 1024; ++m){
							reverse_number_of_ones_array_int[m] = 0;
							reverse_number_of_bit_flips_array_int[m] = 0;
							reverse_number_of_ones_array_float[m] = 0;
							reverse_number_of_bit_flips_array_float[m] = 0;
							reverse_number_of_ones_array_new[m] = 0;
							reverse_number_of_bit_flips_array_new[m] = 0;
						}
						////////////////////////////dbi
			
						///////////////per cache line distribution array
						distribution_number_of_ones_array_float[temp_number_of_ones_float]++;
						distribution_number_of_bit_flips_array_float[temp_number_of_bit_flips_float]++;
						distribution_number_of_ones_array_int[temp_number_of_ones_int]++; 
						distribution_number_of_bit_flips_array_int[temp_number_of_bit_flips_int]++; 
						distribution_number_of_ones_array_new[temp_number_of_ones_new]++;
						distribution_number_of_bit_flips_array_new[temp_number_of_bit_flips_new]++;
						
						///////////////temp count per cache line
						temp_number_of_ones_float = 0; 
						temp_number_of_bit_flips_float = 0;
						temp_number_of_ones_int = 0; 
						temp_number_of_bit_flips_int = 0; 
						temp_number_of_ones_new = 0;
						temp_number_of_bit_flips_new = 0;
					}
				}
			}////////////////////end of: while( std::getline(GPU_result, gpu_line) ) {
			
			
			fprintf (pFile, "total_cache_line_count:%d\n", total_cache_line_count );
			fprintf (pFile, "total_flit_count:%d\n", total_flit_count );
			fprintf (pFile, "total_float_count:%d\n", total_float_count );
				
			fprintf (pFile, "\n");
			fprintf (pFile, "#################################distributions32#########################\n");
			
			//////////////shrinked distribution results
			int distribution_number_of_ones_array32_float[32];
			int distribution_number_of_bit_flips_array32_float[32];
			int distribution_number_of_ones_array32_int[32]; 
			int distribution_number_of_bit_flips_array32_int[32]; 
			int distribution_number_of_ones_array32_new[32];
			int distribution_number_of_bit_flips_array32_new[32];
			
			int distribution_number_of_ones_array4_float[4];
			int distribution_number_of_bit_flips_array4_float[4];
			int distribution_number_of_ones_array4_int[4]; 
			int distribution_number_of_bit_flips_array4_int[4]; 
			int distribution_number_of_ones_array4_new[4];
			int distribution_number_of_bit_flips_array4_new[4];
			
			/////////////initialize
			for(int m = 0; m < 32; ++m){
				distribution_number_of_ones_array32_float[m] = 0;
				distribution_number_of_bit_flips_array32_float[m] = 0;
				distribution_number_of_ones_array32_int[m] = 0;
				distribution_number_of_bit_flips_array32_int[m] = 0;
				distribution_number_of_ones_array32_new[m] = 0;
				distribution_number_of_bit_flips_array32_new[m] = 0;
			}
			for(int m = 0; m < 4; ++m){
				distribution_number_of_ones_array4_float[m] = 0;
				distribution_number_of_bit_flips_array4_float[m] = 0;
				distribution_number_of_ones_array4_int[m] = 0;
				distribution_number_of_bit_flips_array4_int[m] = 0;
				distribution_number_of_ones_array4_new[m] = 0;
				distribution_number_of_bit_flips_array4_new[m] = 0;
			}
			
			////////////////distribution shrink to 32
			distribution_number_of_ones_array32_float[0] = distribution_number_of_ones_array_float[0];
			distribution_number_of_bit_flips_array32_float[0] = distribution_number_of_bit_flips_array_float[0];
			distribution_number_of_ones_array32_int[0] = distribution_number_of_ones_array_int[0];
			distribution_number_of_bit_flips_array32_int[0] = distribution_number_of_bit_flips_array_int[0];
			distribution_number_of_ones_array32_new[0] = distribution_number_of_ones_array_new[0];
			distribution_number_of_bit_flips_array32_new[0] = distribution_number_of_bit_flips_array_new[0];
			for(int m = 0; m < 32; ++m){
				for(int n = 0; n < 32; ++n){
					distribution_number_of_ones_array32_float[m] += distribution_number_of_ones_array_float[32 * m + n + 1];
					distribution_number_of_bit_flips_array32_float[m] += distribution_number_of_bit_flips_array_float[32 * m + n + 1];
					distribution_number_of_ones_array32_int[m] += distribution_number_of_ones_array_int[32 * m + n + 1];
					distribution_number_of_bit_flips_array32_int[m] += distribution_number_of_bit_flips_array_int[32 * m + n + 1];
					distribution_number_of_ones_array32_new[m] += distribution_number_of_ones_array_new[32 * m + n + 1];
					distribution_number_of_bit_flips_array32_new[m] += distribution_number_of_bit_flips_array_new[32 * m + n + 1];
				}
			}

			////////////////distribution shrink to 4
			distribution_number_of_ones_array4_float[0] = distribution_number_of_ones_array_float[0];
			distribution_number_of_bit_flips_array4_float[0] = distribution_number_of_bit_flips_array_float[0];
			distribution_number_of_ones_array4_int[0] = distribution_number_of_ones_array_int[0];
			distribution_number_of_bit_flips_array4_int[0] = distribution_number_of_bit_flips_array_int[0];
			distribution_number_of_ones_array4_new[0] = distribution_number_of_ones_array_new[0];
			distribution_number_of_bit_flips_array4_new[0] = distribution_number_of_bit_flips_array_new[0];
			for(int m = 0; m < 32; ++m){
				for(int n = 0; n < 32; ++n){
					distribution_number_of_ones_array4_float[m] += distribution_number_of_ones_array_float[32 * m + n + 1];
					distribution_number_of_bit_flips_array4_float[m] += distribution_number_of_bit_flips_array_float[32 * m + n + 1];
					distribution_number_of_ones_array4_int[m] += distribution_number_of_ones_array_int[32 * m + n + 1];
					distribution_number_of_bit_flips_array4_int[m] += distribution_number_of_bit_flips_array_int[32 * m + n + 1];
					distribution_number_of_ones_array4_new[m] += distribution_number_of_ones_array_new[32 * m + n + 1];
					distribution_number_of_bit_flips_array4_new[m] += distribution_number_of_bit_flips_array_new[32 * m + n + 1];
				}
			}
			
			fprintf (pFile, "distribution32_ones_int: ");
			for(int m = 0; m < 32; ++m){
				fprintf (pFile, "%d ", distribution_number_of_ones_array32_int[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution32_ones_float: ");
			for(int m = 0; m < 32; ++m){
				fprintf (pFile, "%d ", distribution_number_of_ones_array32_float[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution32_ones_new: ");
			for(int m = 0; m < 32; ++m){
				fprintf (pFile, "%d ", distribution_number_of_ones_array32_new[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution32_flips_int: ");
			for(int m = 0; m < 32; ++m){
				fprintf (pFile, "%d ", distribution_number_of_bit_flips_array32_int[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution32_flips_float: ");
			for(int m = 0; m < 32; ++m){
				fprintf (pFile, "%d ", distribution_number_of_bit_flips_array32_float[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution32_flips_new: ");
			for(int m = 0; m < 32; ++m){
				fprintf (pFile, "%d ", distribution_number_of_bit_flips_array32_new[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "\n");
			fprintf (pFile, "#################################distributions4#########################\n");
			
			fprintf (pFile, "distribution4_ones_int: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%d ", distribution_number_of_ones_array4_int[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution4_ones_float: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%d ", distribution_number_of_ones_array4_float[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution4_ones_new: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%d ", distribution_number_of_ones_array4_new[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution4_flips_int: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%d ", distribution_number_of_bit_flips_array4_int[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution4_flips_float: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%d ", distribution_number_of_bit_flips_array4_float[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution4_flips_new: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%d ", distribution_number_of_bit_flips_array4_new[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "\n");
			fprintf (pFile, "#################################overalls#########################\n");
			
			
			unsigned byte_bits_ones_sum_float[4][8];
			unsigned byte_bits_flips_sum_float[4][8];
			unsigned byte_ones_sum_float[4];
			unsigned byte_flips_sum_float[4];
			
			unsigned byte_bits_ones_sum_int[4][8];
			unsigned byte_bits_flips_sum_int[4][8];
			unsigned byte_ones_sum_int[4];
			unsigned byte_flips_sum_int[4];
			
			unsigned byte_bits_ones_sum_new[4][8];
			unsigned byte_bits_flips_sum_new[4][8];
			unsigned byte_ones_sum_new[4];
			unsigned byte_flips_sum_new[4];

			/////////////initialize
			for(int m = 0; m < 4; ++m){
				byte_ones_sum_float[m] = 0;
				byte_flips_sum_float[m] = 0;
				
				byte_ones_sum_int[m] = 0;
				byte_flips_sum_int[m] = 0;
				
				byte_ones_sum_new[m] = 0;
				byte_flips_sum_new[m] = 0;
				
				for(int n = 0; n < 8; ++n){
					byte_bits_ones_sum_float[m][n] = 0;
					byte_bits_flips_sum_float[m][n] = 0;
					
					byte_bits_ones_sum_int[m][n] = 0;
					byte_bits_flips_sum_int[m][n] = 0;
					
					byte_bits_ones_sum_new[m][n] = 0;
					byte_bits_flips_sum_new[m][n] = 0;
				}
			}			
			
			///////////////all 32 bits in float
			for(int l = 0; l < 32; ++l){////////////////1024 / 32 = 32
				for(int m = 0; m < 4; ++m){
					for(int n = 0; n < 8; ++n){
						byte_bits_ones_sum_float[m][n] += number_of_ones_array_float[32 * l + 8 * m + n];
						byte_bits_flips_sum_float[m][n] += number_of_bit_flips_array_float[32 * l + 8 * m + n];
						
						byte_bits_ones_sum_int[m][n] += number_of_ones_array_int[32 * l + 8 * m + n];
						byte_bits_flips_sum_int[m][n] += number_of_bit_flips_array_int[32 * l + 8 * m + n];
						
						byte_bits_ones_sum_new[m][n] += number_of_ones_array_new[32 * l + 8 * m + n];
						byte_bits_flips_sum_new[m][n] += number_of_bit_flips_array_new[32 * l + 8 * m + n];
					}
				}
			}
			
			///////////////all 4 bytes in float
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					byte_ones_sum_float[m] += byte_bits_ones_sum_float[m][n];
					byte_flips_sum_float[m] += byte_bits_flips_sum_float[m][n];
					
					byte_ones_sum_int[m] += byte_bits_ones_sum_int[m][n];
					byte_flips_sum_int[m] += byte_bits_flips_sum_int[m][n];
					
					byte_ones_sum_new[m] += byte_bits_ones_sum_new[m][n];
					byte_flips_sum_new[m] += byte_bits_flips_sum_new[m][n];
				}
			}
			
			fprintf (pFile, "overall_ones_int: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%d ", byte_bits_ones_sum_int[m][n] );
				}
				fprintf (pFile, "%d ", byte_ones_sum_int[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "overall_ones_float: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%d ", byte_bits_ones_sum_float[m][n] );
				}
				fprintf (pFile, "%d ", byte_ones_sum_float[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "overall_ones_new: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%d ", byte_bits_ones_sum_new[m][n] );
				}
				fprintf (pFile, "%d ", byte_ones_sum_new[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "overall_flips_int: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%d ", byte_bits_flips_sum_int[m][n] );
				}
				fprintf (pFile, "%d ", byte_flips_sum_int[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "overall_flips_float: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%d ", byte_bits_flips_sum_float[m][n] );
				}
				fprintf (pFile, "%d ", byte_flips_sum_float[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "overall_flips_new: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%d ", byte_bits_flips_sum_new[m][n] );
				}
				fprintf (pFile, "%d ", byte_flips_sum_new[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "\n");
			fprintf (pFile, "#################################only bits#########################\n");
			fprintf (pFile, "bits_ones_int: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%d ", byte_bits_ones_sum_int[m][n] );
				}
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "bits_ones_float: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%d ", byte_bits_ones_sum_float[m][n] );
				}
			}
			fprintf (pFile, "\n");			
			
			fprintf (pFile, "bits_ones_new: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%d ", byte_bits_ones_sum_new[m][n] );
				}
				fprintf (pFile, "%d ", byte_ones_sum_new[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "bits_flips_int: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%d ", byte_bits_flips_sum_int[m][n] );
				}
				fprintf (pFile, "%d ", byte_flips_sum_int[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "bits_flips_float: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%d ", byte_bits_flips_sum_float[m][n] );
				}
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "bits_flips_new: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%d ", byte_bits_flips_sum_new[m][n] );
				}
				fprintf (pFile, "%d ", byte_flips_sum_new[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "\n");
			fprintf (pFile, "#################################bytes#########################\n");
			fprintf (pFile, "bytes_ones_int: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%d ", byte_ones_sum_int[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "bytes_ones_float: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%d ", byte_ones_sum_float[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "bytes_ones_new: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%d ", byte_ones_sum_new[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "bytes_flips_int: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%d ", byte_flips_sum_int[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "bytes_flips_float: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%d ", byte_flips_sum_float[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "bytes_flips_new: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%d ", byte_flips_sum_new[m] );
			}
			fprintf (pFile, "\n");
		}
		
		
		fclose (pFile);
	}
	
	
	
	return 0;
}

/////////g++ -o exp1 exp1.cpp
////////ln -s /stor1/hwang07/test/test .
//////////./test *_GPU.txt *_CPU.txt 

/////////////ln -s /sciclone/data10/hwang07/GPU_RESEARCH/amc/test .

////////// ./exp1 uniform_float_two_sides_1024.txt result_ut1024.txt 

////////// ./exp1 normal_float_two_sides_1024.txt result_nt1024.txt 1

///////////add high/med/low cache line count? ##ok
///////////add DBI?
///////////test with int data? ##ok
///////////total for all bytes?

//   /sciclone/pscr/hwang07/bfloat_analysis/exp1 /sciclone/pscr/hwang07/bfloat_analysis/data/matlab/normal_float_one_side_exp0.txt /sciclone/pscr/hwang07/bfloat_analysis/results/normal_float_one_side_result0.txt

/*
int endian_test() 
{
    
    typedef union {
		float f_;
		unsigned u_;
		unsigned char c_[4];
	} FloatBits;

    FloatBits x;
    x.f_ = 4;
    
    unsigned n = x.u_;        

    std::bitset<32> y(n);
    std::cout << y << '\n';
    
    unsigned char m = x.c_[3];
    
    std::bitset<8> z(m);
    std::cout << z << '\n';

	//////////////////////vortex is little endian

    return 0;
}
*/








