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
		
		//printf ("#########debug1: %dn", argc);
		//fflush(stdout);
		
		if ( argc == 4 ){
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
			
			///////////////error counter for all cache lines
			double sum_per_line_distance_float_F16 = 0;
			double sum_per_line_RE_float_F16 = 0;
			int sum_per_line_nan_float_F16 = 0; /////////////todo: add this?
			double sum_per_line_distance_float_F8 = 0;
			double sum_per_line_RE_float_F8 = 0;
			int sum_per_line_nan_float_F8 = 0;
			
			double sum_per_line_distance_float_B16 = 0;
			double sum_per_line_RE_float_B16 = 0;
			double sum_per_line_distance_float_B8 = 0;
			double sum_per_line_RE_float_B8 = 0;
			
			double sum_per_line_distance_float_NF16 = 0;
			double sum_per_line_RE_float_NF16 = 0;
			double sum_per_line_distance_float_NF8 = 0;
			double sum_per_line_RE_float_NF8 = 0;
			
			double sum_per_line_distance_float_NB16 = 0;
			double sum_per_line_RE_float_NB16 = 0;
			double sum_per_line_distance_float_NB8 = 0;
			double sum_per_line_RE_float_NB8 = 0;
			
			double sum_per_line_distance_float_IL16 = 0;
			double sum_per_line_RE_float_IL16 = 0;
			double sum_per_line_distance_float_IL8 = 0;
			double sum_per_line_RE_float_IL8 = 0;

			double sum_per_line_distance_float_IR16 = 0;
			double sum_per_line_RE_float_IR16 = 0;
			double sum_per_line_distance_float_IR8 = 0;
			double sum_per_line_RE_float_IR8 = 0;
			
			///////////////error counter per cache line
			double temp_per_line_distance_float_F16 = 0;
			double temp_per_line_RE_float_F16 = 0;
			double temp_per_line_distance_float_F8 = 0;
			double temp_per_line_RE_float_F8 = 0;
			
			double temp_per_line_distance_float_B16 = 0;
			double temp_per_line_RE_float_B16 = 0;
			double temp_per_line_distance_float_B8 = 0;
			double temp_per_line_RE_float_B8 = 0;
			
			double temp_per_line_distance_float_NF16 = 0;
			double temp_per_line_RE_float_NF16 = 0;
			double temp_per_line_distance_float_NF8 = 0;
			double temp_per_line_RE_float_NF8 = 0;
			
			double temp_per_line_distance_float_NB16 = 0;
			double temp_per_line_RE_float_NB16 = 0;
			double temp_per_line_distance_float_NB8 = 0;
			double temp_per_line_RE_float_NB8 = 0;
			
			double temp_per_line_distance_float_IL16 = 0;
			double temp_per_line_RE_float_IL16 = 0;
			double temp_per_line_distance_float_IL8 = 0;
			double temp_per_line_RE_float_IL8 = 0;

			double temp_per_line_distance_float_IR16 = 0;
			double temp_per_line_RE_float_IR16 = 0;
			double temp_per_line_distance_float_IR8 = 0;
			double temp_per_line_RE_float_IR8 = 0;
			
			/////////////////////////////////error distribution /////////todo: add more later
			int F16_RE_distribution_1000 = 0;
			int F16_RE_distribution_100 = 0;
			int F16_RE_distribution_10 = 0;
			int F16_RE_distribution_1 = 0;
			int F16_RE_distribution_01 = 0;
			int F16_RE_distribution_001 = 0;
			int F16_RE_distribution_0001 = 0;
			int F16_RE_distribution_00001 = 0;
			int F16_RE_distribution_000001 = 0;
			int F16_RE_distribution_0000001 = 0;
			int F16_RE_distribution_0 = 0;
			int F16_RE_nan_count = 0;
			
			int F8_RE_distribution_1000 = 0;
			int F8_RE_distribution_100 = 0;
			int F8_RE_distribution_10 = 0;
			int F8_RE_distribution_1 = 0;
			int F8_RE_distribution_01 = 0;
			int F8_RE_distribution_001 = 0;
			int F8_RE_distribution_0001 = 0;
			int F8_RE_distribution_00001 = 0;
			int F8_RE_distribution_000001 = 0;
			int F8_RE_distribution_0000001 = 0;
			int F8_RE_distribution_0 = 0;
			int F8_RE_nan_count = 0;
			
			int B16_RE_distribution_1000 = 0;
			int B16_RE_distribution_100 = 0;
			int B16_RE_distribution_10 = 0;
			int B16_RE_distribution_1 = 0;
			int B16_RE_distribution_01 = 0;
			int B16_RE_distribution_001 = 0;
			int B16_RE_distribution_0001 = 0;
			int B16_RE_distribution_00001 = 0;
			int B16_RE_distribution_000001 = 0;
			int B16_RE_distribution_0000001 = 0;
			int B16_RE_distribution_0 = 0;
			int B16_RE_nan_count = 0;
			
			int B8_RE_distribution_1000 = 0;
			int B8_RE_distribution_100 = 0;
			int B8_RE_distribution_10 = 0;
			int B8_RE_distribution_1 = 0;
			int B8_RE_distribution_01 = 0;
			int B8_RE_distribution_001 = 0;
			int B8_RE_distribution_0001 = 0;
			int B8_RE_distribution_00001 = 0;
			int B8_RE_distribution_000001 = 0;
			int B8_RE_distribution_0000001 = 0;
			int B8_RE_distribution_0 = 0;
			int B8_RE_nan_count = 0;
			
			int NF16_RE_distribution_1000 = 0;
			int NF16_RE_distribution_100 = 0;
			int NF16_RE_distribution_10 = 0;
			int NF16_RE_distribution_1 = 0;
			int NF16_RE_distribution_01 = 0;
			int NF16_RE_distribution_001 = 0;
			int NF16_RE_distribution_0001 = 0;
			int NF16_RE_distribution_00001 = 0;
			int NF16_RE_distribution_000001 = 0;
			int NF16_RE_distribution_0000001 = 0;
			int NF16_RE_distribution_0 = 0;
			int NF16_RE_nan_count = 0;
			
			int NF8_RE_distribution_1000 = 0;
			int NF8_RE_distribution_100 = 0;
			int NF8_RE_distribution_10 = 0;
			int NF8_RE_distribution_1 = 0;
			int NF8_RE_distribution_01 = 0;
			int NF8_RE_distribution_001 = 0;
			int NF8_RE_distribution_0001 = 0;
			int NF8_RE_distribution_00001 = 0;
			int NF8_RE_distribution_000001 = 0;
			int NF8_RE_distribution_0000001 = 0;
			int NF8_RE_distribution_0 = 0;
			int NF8_RE_nan_count = 0;
			
			int NB16_RE_distribution_1000 = 0;
			int NB16_RE_distribution_100 = 0;
			int NB16_RE_distribution_10 = 0;
			int NB16_RE_distribution_1 = 0;
			int NB16_RE_distribution_01 = 0;
			int NB16_RE_distribution_001 = 0;
			int NB16_RE_distribution_0001 = 0;
			int NB16_RE_distribution_00001 = 0;
			int NB16_RE_distribution_000001 = 0;
			int NB16_RE_distribution_0000001 = 0;
			int NB16_RE_distribution_0 = 0;
			int NB16_RE_nan_count = 0;
			
			int NB8_RE_distribution_1000 = 0;
			int NB8_RE_distribution_100 = 0;
			int NB8_RE_distribution_10 = 0;
			int NB8_RE_distribution_1 = 0;
			int NB8_RE_distribution_01 = 0;
			int NB8_RE_distribution_001 = 0;
			int NB8_RE_distribution_0001 = 0;
			int NB8_RE_distribution_00001 = 0;
			int NB8_RE_distribution_000001 = 0;
			int NB8_RE_distribution_0000001 = 0;
			int NB8_RE_distribution_0 = 0;
			int NB8_RE_nan_count = 0;
			
			int IL16_RE_distribution_1000 = 0;
			int IL16_RE_distribution_100 = 0;
			int IL16_RE_distribution_10 = 0;
			int IL16_RE_distribution_1 = 0;
			int IL16_RE_distribution_01 = 0;
			int IL16_RE_distribution_001 = 0;
			int IL16_RE_distribution_0001 = 0;
			int IL16_RE_distribution_00001 = 0;
			int IL16_RE_distribution_000001 = 0;
			int IL16_RE_distribution_0000001 = 0;
			int IL16_RE_distribution_0 = 0;
			int IL16_RE_nan_count = 0;
			
			int IL8_RE_distribution_1000 = 0;
			int IL8_RE_distribution_100 = 0;
			int IL8_RE_distribution_10 = 0;
			int IL8_RE_distribution_1 = 0;
			int IL8_RE_distribution_01 = 0;
			int IL8_RE_distribution_001 = 0;
			int IL8_RE_distribution_0001 = 0;
			int IL8_RE_distribution_00001 = 0;
			int IL8_RE_distribution_000001 = 0;
			int IL8_RE_distribution_0000001 = 0;
			int IL8_RE_distribution_0 = 0;
			int IL8_RE_nan_count = 0;
			
			int IR16_RE_distribution_1000 = 0;
			int IR16_RE_distribution_100 = 0;
			int IR16_RE_distribution_10 = 0;
			int IR16_RE_distribution_1 = 0;
			int IR16_RE_distribution_01 = 0;
			int IR16_RE_distribution_001 = 0;
			int IR16_RE_distribution_0001 = 0;
			int IR16_RE_distribution_00001 = 0;
			int IR16_RE_distribution_000001 = 0;
			int IR16_RE_distribution_0000001 = 0;
			int IR16_RE_distribution_0 = 0;
			int IR16_RE_nan_count = 0;
			
			int IR8_RE_distribution_1000 = 0;
			int IR8_RE_distribution_100 = 0;
			int IR8_RE_distribution_10 = 0;
			int IR8_RE_distribution_1 = 0;
			int IR8_RE_distribution_01 = 0;
			int IR8_RE_distribution_001 = 0;
			int IR8_RE_distribution_0001 = 0;
			int IR8_RE_distribution_00001 = 0;
			int IR8_RE_distribution_000001 = 0;
			int IR8_RE_distribution_0000001 = 0;
			int IR8_RE_distribution_0 = 0;
			int IR8_RE_nan_count = 0;
			/////////////////////////////////error distribution
			
			///////////////error counter per data			
			double abs_distance = 0;
			double abs_RE = 0;

			std::bitset<32> truncated_flit_bytes;			
			
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
					
					//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
					/////////////////////truncation error float
					/////////// F32 (1, 8, 23) (31, 30 - 23, 22 - 0) -> F16 (1, 5, 10) -> F8 (1, 4, 3): 
					/////////// F32 (1, 8, 23) (31, 30 - 23, 22 - 0) -> F16 (1, 5, 10):
					truncated_flit_bytes = temp_flit_byte; /////31 - 24, 23 - 16, 15 - 8, 7 - 0
					for(int i_bit = 30; i_bit >= 28; --i_bit){ ////////////bitset is little endian //////high bits are truncated in exp bits
						truncated_flit_bytes[i_bit] = 0;
					}
					
					for(int i_bit = 12; i_bit >= 0; --i_bit){ ////////////bitset is little endian //////low bits are truncated in significand bits
						truncated_flit_bytes[i_bit] = 0;
					}
					
					bit_converter.u_ = truncated_flit_bytes.to_ulong();
					abs_distance = std::abs( gpu_number_float - bit_converter.f_ );
					abs_RE = std::abs( abs_distance / gpu_number_float );
					
					if( bit_converter.f_ == 0 && gpu_number_float == 0 ){					
						abs_RE = 0;
					}else if ( isnan(abs_RE) || isinf(abs_RE) ){						
						abs_RE = 10000001;			
						F16_RE_nan_count++;					
					}					
					
					temp_per_line_distance_float_F16 += abs_distance;
					temp_per_line_RE_float_F16 += abs_RE;	
					
					/////////// F32 (1, 8, 23) (31, 30 - 23, 22 - 0) -> F16 (1, 5, 10) -> F8 (1, 4, 3): 
					/////////// F32 (1, 8, 23) (31, 30 - 23, 22 - 0) -> F8 (1, 4, 3): 
					truncated_flit_bytes = temp_flit_byte; /////31 - 24, 23 - 16, 15 - 8, 7 - 0
					for(int i_bit = 30; i_bit >= 27; --i_bit){ ////////////bitset is little endian //////high bits are truncated in exp bits
						truncated_flit_bytes[i_bit] = 0;
					}
					
					for(int i_bit = 19; i_bit >= 0; --i_bit){ ////////////bitset is little endian //////low bits are truncated in significand bits
						truncated_flit_bytes[i_bit] = 0;
					}
					
					bit_converter.u_ = truncated_flit_bytes.to_ulong();
					abs_distance = std::abs( gpu_number_float - bit_converter.f_ );
					abs_RE = std::abs( abs_distance / gpu_number_float );
					
					if( bit_converter.f_ == 0 && gpu_number_float == 0 ){					
						abs_RE = 0;
					}else if ( isnan(abs_RE) || isinf(abs_RE) ){						
						abs_RE = 10000001;			
						F8_RE_nan_count++;					
					}					
					
					temp_per_line_distance_float_F8 += abs_distance;
					temp_per_line_RE_float_F8 += abs_RE;
					
					/////////// F32 (1, 8, 23) (31, 30 - 23, 22 - 0) -> B16 (1, 8, 7)  -> B8 (1, 5, 2):
					/////////// F32 (1, 8, 23) (31, 30 - 23, 22 - 0) -> B16 (1, 8, 7):
					truncated_flit_bytes = temp_flit_byte; /////31 - 24, 23 - 16, 15 - 8, 7 - 0
					
					for(int i_bit = 15; i_bit >= 0; --i_bit){ ////////////bitset is little endian //////low bits are truncated in significand bits
						truncated_flit_bytes[i_bit] = 0;
					}
					
					bit_converter.u_ = truncated_flit_bytes.to_ulong();
					abs_distance = std::abs( gpu_number_float - bit_converter.f_ );
					abs_RE = std::abs( abs_distance / gpu_number_float );
					
					if( bit_converter.f_ == 0 && gpu_number_float == 0 ){					
						abs_RE = 0;
					}else if ( isnan(abs_RE) || isinf(abs_RE) ){						
						abs_RE = 10000001;			
						B16_RE_nan_count++;					
					}					
					
					temp_per_line_distance_float_B16 += abs_distance;
					temp_per_line_RE_float_B16 += abs_RE;
					
					/////////// F32 (1, 8, 23) (31, 30 - 23, 22 - 0) -> B16 (1, 8, 7)  -> B8 (1, 5, 2):
					/////////// F32 (1, 8, 23) (31, 30 - 23, 22 - 0) -> B8 (1, 5, 2):
					truncated_flit_bytes = temp_flit_byte; /////31 - 24, 23 - 16, 15 - 8, 7 - 0
					for(int i_bit = 30; i_bit >= 28; --i_bit){ ////////////bitset is little endian //////high bits are truncated in exp bits
						truncated_flit_bytes[i_bit] = 0;
					}
					
					for(int i_bit = 20; i_bit >= 0; --i_bit){ ////////////bitset is little endian //////low bits are truncated in significand bits
						truncated_flit_bytes[i_bit] = 0;
					}
					
					bit_converter.u_ = truncated_flit_bytes.to_ulong();
					abs_distance = std::abs( gpu_number_float - bit_converter.f_ );
					abs_RE = std::abs( abs_distance / gpu_number_float );
					
					if( bit_converter.f_ == 0 && gpu_number_float == 0 ){					
						abs_RE = 0;
					}else if ( isnan(abs_RE) || isinf(abs_RE) ){						
						abs_RE = 10000001;			
						B8_RE_nan_count++;					
					}					
					
					temp_per_line_distance_float_B8 += abs_distance;
					temp_per_line_RE_float_B8 += abs_RE;					
					/////////////////////truncation error float
					//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
					
					////////////check the number of 1s
					for(int i_bit = 31; i_bit >= 0; --i_bit){ ////////////bitset is little endian
						if(temp_flit_byte[i_bit] == 1){ 
							number_of_ones_array_float[temp_bit_count + 31 - i_bit]++;
							temp_number_of_ones_float++;////////per cache line
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
								temp_number_of_bit_flips_float++;////////per cache line
							////////////////////////////dbi
								temp_flips_count_in_flit_float++;///////per flit
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
					
					//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
					/////////////////////truncation error int
					/////////// I32 -> IL16 -> IL8 (left remained): 
					/////////// I32 -> IL16:
					truncated_flit_bytes = temp_flit_byte; /////31 - 24, 23 - 16, 15 - 8, 7 - 0
					for(int i_bit = 15; i_bit >= 0; --i_bit){ ////////////bitset is little endian //////right bits are truncated
						truncated_flit_bytes[i_bit] = 0;
					}	
					
					bit_converter.u_ = truncated_flit_bytes.to_ulong();
					abs_distance = std::abs( (double) gpu_number_int - (double) bit_converter.i_ );
					abs_RE = std::abs( abs_distance / (double) gpu_number_int );
					
					if( bit_converter.i_ == 0 && gpu_number_int == 0 ){					
						abs_RE = 0;
					}else if ( isnan(abs_RE) || isinf(abs_RE) ){						
						abs_RE = 10000001;			
						IL16_RE_nan_count++;				
					}					
					
					temp_per_line_distance_float_IL16 += abs_distance;
					temp_per_line_RE_float_IL16 += abs_RE;
					
					/////////// I32 -> IL16 -> IL8 (left remained): 
					/////////// I32 -> IL8:
					truncated_flit_bytes = temp_flit_byte; /////31 - 24, 23 - 16, 15 - 8, 7 - 0
					for(int i_bit = 23; i_bit >= 0; --i_bit){ ////////////bitset is little endian //////right bits are truncated
						truncated_flit_bytes[i_bit] = 0;
					}	
					
					bit_converter.u_ = truncated_flit_bytes.to_ulong();
					abs_distance = std::abs( (double) gpu_number_int - (double) bit_converter.i_ );
					abs_RE = std::abs( abs_distance / (double) gpu_number_int );
					
					if( bit_converter.i_ == 0 && gpu_number_int == 0 ){					
						abs_RE = 0;
					}else if ( isnan(abs_RE) || isinf(abs_RE) ){						
						abs_RE = 10000001;			
						IL8_RE_nan_count++;				
					}
					
					temp_per_line_distance_float_IL8 += abs_distance;
					temp_per_line_RE_float_IL8 += abs_RE;
					
					/////////// I32 -> IR16 -> IR8 (right remained):
					/////////// I32 -> IR16:
					truncated_flit_bytes = temp_flit_byte; /////31 - 24, 23 - 16, 15 - 8, 7 - 0
					for(int i_bit = 30; i_bit >= 15; --i_bit){ ////////////bitset is little endian //////left bits are truncated
						truncated_flit_bytes[i_bit] = 0;
					}	
					
					bit_converter.u_ = truncated_flit_bytes.to_ulong();
					abs_distance = std::abs( (double) gpu_number_int - (double) bit_converter.i_ );
					abs_RE = std::abs( abs_distance / (double) gpu_number_int );
					
					if( bit_converter.i_ == 0 && gpu_number_int == 0 ){					
						abs_RE = 0;
					}else if ( isnan(abs_RE) || isinf(abs_RE) ){						
						abs_RE = 10000001;			
						IR16_RE_nan_count++;			
					}					
					
					temp_per_line_distance_float_IR16 += abs_distance;
					temp_per_line_RE_float_IR16 += abs_RE;
					
					/////////// I32 -> IR16 -> IR8 (right remained):
					/////////// I32 -> IR8:
					truncated_flit_bytes = temp_flit_byte; /////31 - 24, 23 - 16, 15 - 8, 7 - 0
					for(int i_bit = 30; i_bit >= 7; --i_bit){ ////////////bitset is little endian //////left bits are truncated
						truncated_flit_bytes[i_bit] = 0;
					}
					
					bit_converter.u_ = truncated_flit_bytes.to_ulong();
					abs_distance = std::abs( (double) gpu_number_int - (double) bit_converter.i_ );
					abs_RE = std::abs( abs_distance / (double) gpu_number_int );
					
					if( bit_converter.i_ == 0 && gpu_number_int == 0 ){					
						abs_RE = 0;
					}else if ( isnan(abs_RE) || isinf(abs_RE) ){						
						abs_RE = 10000001;			
						IR8_RE_nan_count++;			
					}					
					
					temp_per_line_distance_float_IR8 += abs_distance;
					temp_per_line_RE_float_IR8 += abs_RE;
					/////////////////////truncation error int
					//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
					
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
								temp_number_of_bit_flips_int++;////////per cache line
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
					
					///////normal float exp range: 127 to -126 (254 to 127, 126 to 1), new float exp range: 127 to 0, -1 to -126, previously we use -0 and -127 for subnormal and inf
					///////normal float exp range: 127 to -126 (254 to 128, 127 to 1), new float exp range: 127 to 1, -0 to -126, currently we use 0 and -127 for subnormal and inf
					unsigned char exp_byte_new = 0;
					if(exp_byte == 255){
						exp_byte_new = 0b11111111;/////inf
					}else if(exp_byte == 0){
						exp_byte_new = 0b00000000;/////subnormal
					}else if(exp_byte >= 128){
						exp_byte_new = (exp_byte - 127) & 0b01111111;//////////positive
					}else{
						exp_byte_new = (127 - exp_byte) | 0b10000000;//////////negative
					}
				
					first_byte = (first_byte & 0b10000000) | (exp_byte_new >> 1);
					second_byte = (second_byte & 0b01111111) | (exp_byte_new << 7);
					bit_converter.u_ = (bit_converter.u_ & 0b00000000111111111111111111111111) | (first_byte << 24);///////////first_byte type auto changed to unsign
					bit_converter.u_ = (bit_converter.u_ & 0b11111111000000001111111111111111) | (second_byte << 16);///////////second_byte type auto changed to unsign
				
					temp_flit_byte = bitset<32>(bit_converter.u_);

					//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
					/////////////////////truncation error new
					//////////// NF32 (1, 8, 23) (31, 30 - 23, 22 - 0) -> NF16 (1, 5, 10) -> NF8 (1, 4, 3):
					/////////// NF32 (1, 8, 23) (31, 30 - 23, 22 - 0) -> NF16 (1, 5, 10):
					truncated_flit_bytes = temp_flit_byte; /////31 - 24, 23 - 16, 15 - 8, 7 - 0
					for(int i_bit = 29; i_bit >= 27; --i_bit){ ////////////bitset is little endian //////high bits are truncated in exp bits
						truncated_flit_bytes[i_bit] = 0;
					}
					
					for(int i_bit = 12; i_bit >= 0; --i_bit){ ////////////bitset is little endian //////low bits are truncated in significand bits
						truncated_flit_bytes[i_bit] = 0;
					}
					
					bit_converter.u_ = truncated_flit_bytes.to_ulong();
					
					//////////////////////////////////////////////covert back to original float for comparison
					first_byte = bit_converter.u_ >> 24;/////////////little endian
					second_byte = ( bit_converter.u_ >> 16 ) & 255;/////////////little endian
					exp_byte = (first_byte << 1 ) | ( second_byte >> 7 );
					///////normal float exp range: 127 to -126 (254 to 128, 127 to 1), new float exp range: 127 to 1, -0 to -126 (127 to 1, 128 to 254)
					///////currently we use 0 (0) and -127 (255) for subnormal and inf
					unsigned char exp_byte_original = 0;
					if(exp_byte == 255){
						exp_byte_original = 0b11111111;/////inf
					}else if(exp_byte == 0){
						exp_byte_original = 0b00000000;/////subnormal
					}else if(exp_byte >= 128){
						exp_byte_original = 255 - exp_byte;//////////negative**
					}else{
						exp_byte_original = exp_byte + 127;//////////positive**
					}
					
					first_byte = (first_byte & 0b10000000) | (exp_byte_original >> 1);
					second_byte = (second_byte & 0b01111111) | (exp_byte_original << 7);
					bit_converter.u_ = (bit_converter.u_ & 0b00000000111111111111111111111111) | (first_byte << 24);///////////first_byte type auto changed to unsign
					bit_converter.u_ = (bit_converter.u_ & 0b11111111000000001111111111111111) | (second_byte << 16);///////////second_byte type auto changed to unsign
					//////////////////////////////////////////////covert back to original float for comparison
					
					abs_distance = std::abs( gpu_number_new - bit_converter.f_ );
					abs_RE = std::abs( abs_distance / gpu_number_new );
					
					if( bit_converter.f_ == 0 && gpu_number_new == 0 ){					
						abs_RE = 0;
					}else if ( isnan(abs_RE) || isinf(abs_RE) ){						
						abs_RE = 10000001;			
						NF16_RE_nan_count++;					
					}					
					
					temp_per_line_distance_float_NF16 += abs_distance;
					temp_per_line_RE_float_NF16 += abs_RE;
					
					/////////// NF32 (1, 8, 23) (31, 30 - 23, 22 - 0) -> NF16 (1, 5, 10) -> NF8 (1, 4, 3): 
					/////////// NF32 (1, 8, 23) (31, 30 - 23, 22 - 0) -> NF8 (1, 4, 3):
					truncated_flit_bytes = temp_flit_byte; /////31 - 24, 23 - 16, 15 - 8, 7 - 0
					for(int i_bit = 29; i_bit >= 26; --i_bit){ ////////////bitset is little endian //////high bits are truncated in exp bits
						truncated_flit_bytes[i_bit] = 0;
					}
					
					for(int i_bit = 19; i_bit >= 0; --i_bit){ ////////////bitset is little endian //////low bits are truncated in significand bits
						truncated_flit_bytes[i_bit] = 0;
					}
					
					bit_converter.u_ = truncated_flit_bytes.to_ulong();
					
					//////////////////////////////////////////////covert back to original float for comparison
					first_byte = bit_converter.u_ >> 24;/////////////little endian
					second_byte = ( bit_converter.u_ >> 16 ) & 255;/////////////little endian
					exp_byte = (first_byte << 1 ) | ( second_byte >> 7 );
					///////normal float exp range: 127 to -126 (254 to 128, 127 to 1), new float exp range: 127 to 1, -0 to -126 (127 to 1, 128 to 254)
					///////currently we use 0 (0) and -127 (255) for subnormal and inf
					exp_byte_original = 0;
					if(exp_byte == 255){
						exp_byte_original = 0b11111111;/////inf
					}else if(exp_byte == 0){
						exp_byte_original = 0b00000000;/////subnormal
					}else if(exp_byte >= 128){
						exp_byte_original = 255 - exp_byte;//////////negative**
					}else{
						exp_byte_original = exp_byte + 127;//////////positive**
					}
					
					first_byte = (first_byte & 0b10000000) | (exp_byte_original >> 1);
					second_byte = (second_byte & 0b01111111) | (exp_byte_original << 7);
					bit_converter.u_ = (bit_converter.u_ & 0b00000000111111111111111111111111) | (first_byte << 24);///////////first_byte type auto changed to unsign
					bit_converter.u_ = (bit_converter.u_ & 0b11111111000000001111111111111111) | (second_byte << 16);///////////second_byte type auto changed to unsign
					//////////////////////////////////////////////covert back to original float for comparison
					
					abs_distance = std::abs( gpu_number_new - bit_converter.f_ );
					abs_RE = std::abs( abs_distance / gpu_number_new );
					
					if( bit_converter.f_ == 0 && gpu_number_new == 0 ){					
						abs_RE = 0;
					}else if ( isnan(abs_RE) || isinf(abs_RE) ){						
						abs_RE = 10000001;			
						NF8_RE_nan_count++;					
					}					
					
					temp_per_line_distance_float_NF8 += abs_distance;
					temp_per_line_RE_float_NF8 += abs_RE;
					
					/////////// NF32 (1, 8, 23) (31, 30 - 23, 22 - 0) -> NB16 (1, 8, 7)  -> NB8 (1, 5, 2):
					/////////// NF32 (1, 8, 23) (31, 30 - 23, 22 - 0) -> NB16 (1, 8, 7):
					truncated_flit_bytes = temp_flit_byte; /////31 - 24, 23 - 16, 15 - 8, 7 - 0
					
					for(int i_bit = 15; i_bit >= 0; --i_bit){ ////////////bitset is little endian //////low bits are truncated in significand bits
						truncated_flit_bytes[i_bit] = 0;
					}
					
					bit_converter.u_ = truncated_flit_bytes.to_ulong();
					
					//////////////////////////////////////////////covert back to original float for comparison
					first_byte = bit_converter.u_ >> 24;/////////////little endian
					second_byte = ( bit_converter.u_ >> 16 ) & 255;/////////////little endian
					exp_byte = (first_byte << 1 ) | ( second_byte >> 7 );
					///////normal float exp range: 127 to -126 (254 to 128, 127 to 1), new float exp range: 127 to 1, -0 to -126 (127 to 1, 128 to 254)
					///////currently we use 0 (0) and -127 (255) for subnormal and inf
					exp_byte_original = 0;
					if(exp_byte == 255){
						exp_byte_original = 0b11111111;/////inf
					}else if(exp_byte == 0){
						exp_byte_original = 0b00000000;/////subnormal
					}else if(exp_byte >= 128){
						exp_byte_original = 255 - exp_byte;//////////negative**
					}else{
						exp_byte_original = exp_byte + 127;//////////positive**
					}
					
					first_byte = (first_byte & 0b10000000) | (exp_byte_original >> 1);
					second_byte = (second_byte & 0b01111111) | (exp_byte_original << 7);
					bit_converter.u_ = (bit_converter.u_ & 0b00000000111111111111111111111111) | (first_byte << 24);///////////first_byte type auto changed to unsign
					bit_converter.u_ = (bit_converter.u_ & 0b11111111000000001111111111111111) | (second_byte << 16);///////////second_byte type auto changed to unsign
					//////////////////////////////////////////////covert back to original float for comparison
					
					abs_distance = std::abs( gpu_number_new - bit_converter.f_ );
					abs_RE = std::abs( abs_distance / gpu_number_new );
					
					if( bit_converter.f_ == 0 && gpu_number_new == 0 ){					
						abs_RE = 0;
					}else if ( isnan(abs_RE) || isinf(abs_RE) ){						
						abs_RE = 10000001;			
						NB16_RE_nan_count++;					
					}					
					
					temp_per_line_distance_float_NB16 += abs_distance;
					temp_per_line_RE_float_NB16 += abs_RE;
					
					/////////// F32 (1, 8, 23) (31, 30 - 23, 22 - 0) -> B16 (1, 8, 7)  -> B8 (1, 5, 2):
					/////////// F32 (1, 8, 23) (31, 30 - 23, 22 - 0) -> B8 (1, 5, 2):
					truncated_flit_bytes = temp_flit_byte; /////31 - 24, 23 - 16, 15 - 8, 7 - 0
					for(int i_bit = 29; i_bit >= 27; --i_bit){ ////////////bitset is little endian //////high bits are truncated in exp bits
						truncated_flit_bytes[i_bit] = 0;
					}
					
					for(int i_bit = 20; i_bit >= 0; --i_bit){ ////////////bitset is little endian //////low bits are truncated in significand bits
						truncated_flit_bytes[i_bit] = 0;
					}
					
					bit_converter.u_ = truncated_flit_bytes.to_ulong();
					
					//////////////////////////////////////////////covert back to original float for comparison
					first_byte = bit_converter.u_ >> 24;/////////////little endian
					second_byte = ( bit_converter.u_ >> 16 ) & 255;/////////////little endian
					exp_byte = (first_byte << 1 ) | ( second_byte >> 7 );
					///////normal float exp range: 127 to -126 (254 to 128, 127 to 1), new float exp range: 127 to 1, -0 to -126 (127 to 1, 128 to 254)
					///////currently we use 0 (0) and -127 (255) for subnormal and inf
					exp_byte_original = 0;
					if(exp_byte == 255){
						exp_byte_original = 0b11111111;/////inf
					}else if(exp_byte == 0){
						exp_byte_original = 0b00000000;/////subnormal
					}else if(exp_byte >= 128){
						exp_byte_original = 255 - exp_byte;//////////negative**
					}else{
						exp_byte_original = exp_byte + 127;//////////positive**
					}
					
					first_byte = (first_byte & 0b10000000) | (exp_byte_original >> 1);
					second_byte = (second_byte & 0b01111111) | (exp_byte_original << 7);
					bit_converter.u_ = (bit_converter.u_ & 0b00000000111111111111111111111111) | (first_byte << 24);///////////first_byte type auto changed to unsign
					bit_converter.u_ = (bit_converter.u_ & 0b11111111000000001111111111111111) | (second_byte << 16);///////////second_byte type auto changed to unsign
					//////////////////////////////////////////////covert back to original float for comparison
					
					abs_distance = std::abs( gpu_number_new - bit_converter.f_ );
					abs_RE = std::abs( abs_distance / gpu_number_new );
					
					if( bit_converter.f_ == 0 && gpu_number_new == 0 ){					
						abs_RE = 0;
					}else if ( isnan(abs_RE) || isinf(abs_RE) ){						
						abs_RE = 10000001;			
						NB8_RE_nan_count++;					
					}					
					
					temp_per_line_distance_float_NB8 += abs_distance;
					temp_per_line_RE_float_NB8 += abs_RE;			
					/////////////////////truncation error new
					//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////					
					
					////////////check the number of 1s
					for(int i_bit = 31; i_bit >= 0; --i_bit){ ////////////bitset is little endian
						if(temp_flit_byte[i_bit] == 1){
							number_of_ones_array_new[temp_bit_count + 31 - i_bit]++;
							temp_number_of_ones_new++;////////per cache line
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
								temp_number_of_bit_flips_new++;////////per cache line
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
									number_of_ones_array_int[256 * temp_flit_count + r_bit] += reverse_number_of_ones_array_int[256 * temp_flit_count + r_bit];
									////////////reverse ones count
								}
								
								temp_number_of_ones_int = temp_number_of_ones_int + 256 - 2 * temp_ones_count_in_flit_int;////////reverse distribution counter
							}							
							if(temp_flips_count_in_flit_int > 128){ //////////larger than half of the flit size
								for(int r_bit = 255; r_bit >= 0; --r_bit){
									number_of_bit_flips_array_int[256 * temp_flit_count + r_bit] += reverse_number_of_bit_flips_array_int[256 * temp_flit_count + r_bit]; ////////////reverse flips count
								}
								for(int r_float = 7; r_float >= 0; --r_float){								
									temp_flit_byte_array_int[r_float].flip(); ////////////reverse flit history
								}
								
								temp_number_of_bit_flips_int = temp_number_of_bit_flips_int + 256 - 2 * temp_flips_count_in_flit_int;////////reverse distribution counter
							}
							
							
							if(temp_ones_count_in_flit_float > 128){ //////////larger than half of the flit size
								for(int r_bit = 255; r_bit >= 0; --r_bit){
									number_of_ones_array_float[256 * temp_flit_count + r_bit] += reverse_number_of_ones_array_float[256 * temp_flit_count + r_bit]; ////////////reverse ones count
								}
								
								temp_number_of_ones_float = temp_number_of_ones_float + 256 - 2 * temp_ones_count_in_flit_float;////////reverse distribution counter
							}							
							if(temp_flips_count_in_flit_float > 128){ //////////larger than half of the flit size
								for(int r_bit = 255; r_bit >= 0; --r_bit){
									number_of_bit_flips_array_float[256 * temp_flit_count + r_bit] += reverse_number_of_bit_flips_array_float[256 * temp_flit_count + r_bit]; ////////////reverse flips count
								}
								for(int r_float = 7; r_float >= 0; --r_float){								
									temp_flit_byte_array_float[r_float].flip(); ////////////reverse flit history
								}
								
								temp_number_of_bit_flips_float = temp_number_of_bit_flips_float + 256 - 2 * temp_flips_count_in_flit_float;////////reverse distribution counter
							}
							
							
							if(temp_ones_count_in_flit_new > 128){ //////////larger than half of the flit size
								for(int r_bit = 255; r_bit >= 0; --r_bit){
									number_of_ones_array_new[256 * temp_flit_count + r_bit] += reverse_number_of_ones_array_new[256 * temp_flit_count + r_bit];
									////////////reverse ones count
								}
								
								temp_number_of_ones_new = temp_number_of_ones_new + 256 - (2 * temp_ones_count_in_flit_new);////////reverse distribution counter
							}							
							if(temp_flips_count_in_flit_new > 128){ //////////larger than half of the flit size
								for(int r_bit = 255; r_bit >= 0; --r_bit){
									number_of_bit_flips_array_new[256 * temp_flit_count + r_bit] += reverse_number_of_bit_flips_array_new[256 * temp_flit_count + r_bit]; ////////////reverse flips count
								}
								for(int r_float = 7; r_float >= 0; --r_float){				
									temp_flit_byte_array_new[r_float].flip(); ////////////reverse flit history
								}
								
								temp_number_of_bit_flips_new = temp_number_of_bit_flips_new + 256 - 2 * temp_flips_count_in_flit_new;////////reverse distribution counter
							}						
						}/////////////////////////////////////end of: if(DBI_enabled){
							
						/*
						if(temp_number_of_bit_flips_int < 0){
							fprintf (pFile, "debug1: total_cache_line_count:%d\n", total_cache_line_count );
							
							fprintf (pFile, "debug1: temp_number_of_ones_float:%d\n", temp_number_of_ones_float );
							fprintf (pFile, "debug1: temp_number_of_bit_flips_float:%d\n", temp_number_of_bit_flips_float );
							fprintf (pFile, "debug1: temp_number_of_ones_int:%d\n", temp_number_of_ones_int );
							fprintf (pFile, "debug1: temp_number_of_bit_flips_int:%d\n", temp_number_of_bit_flips_int );
							fprintf (pFile, "debug1: temp_number_of_ones_new:%d\n", temp_number_of_ones_new );
							fprintf (pFile, "debug1: temp_number_of_bit_flips_new:%d\n", temp_number_of_bit_flips_new );
							
							fprintf (pFile, "debug1: temp_ones_count_in_flit_int:%d\n", temp_ones_count_in_flit_int );
							fprintf (pFile, "debug1: temp_flips_count_in_flit_int:%d\n", temp_flips_count_in_flit_int );
							fprintf (pFile, "debug1: temp_ones_count_in_flit_float:%d\n", temp_ones_count_in_flit_float );
							fprintf (pFile, "debug1: temp_flips_count_in_flit_float:%d\n", temp_flips_count_in_flit_float );
							fprintf (pFile, "debug1: temp_ones_count_in_flit_new:%d\n", temp_ones_count_in_flit_new );
							fprintf (pFile, "debug1: temp_flips_count_in_flit_new:%d\n", temp_flips_count_in_flit_new );
						}
						*/
						
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
						
						/////////////////////////////////per cache line error distribution
						///////////////////////////////F16
						temp_per_line_RE_float_F16 = temp_per_line_RE_float_F16 / 32;
						temp_per_line_distance_float_F16 = temp_per_line_distance_float_F16 / 32;
						
						if( temp_per_line_RE_float_F16 > 1000 ){							
							F16_RE_distribution_1000++;							
						}else if( temp_per_line_RE_float_F16 > 100 ){							
							F16_RE_distribution_100++;
						}else if( temp_per_line_RE_float_F16 > 10 ){							
							F16_RE_distribution_10++;
						}else if( temp_per_line_RE_float_F16 > 1 ){							
							F16_RE_distribution_1++;
						}else if( temp_per_line_RE_float_F16 > 0.1 ){					
							F16_RE_distribution_01++;
						}else if( temp_per_line_RE_float_F16 > 0.01 ){							
							F16_RE_distribution_001++;
						}else if( temp_per_line_RE_float_F16 > 0.001 ){							
							F16_RE_distribution_0001++;
						}else if( temp_per_line_RE_float_F16 > 0.0001 ){							
							F16_RE_distribution_00001++;
						}else if( temp_per_line_RE_float_F16 > 0.00001 ){							
							F16_RE_distribution_000001++;
						}else if( temp_per_line_RE_float_F16 > 0.000001 ){							
							F16_RE_distribution_0000001++;
						}else if( temp_per_line_RE_float_F16 == 0 ){							
							F16_RE_distribution_0++;
						}
						
						sum_per_line_RE_float_F16 += temp_per_line_RE_float_F16;
						sum_per_line_distance_float_F16 += temp_per_line_distance_float_F16;
						
						temp_per_line_distance_float_F16 = 0;
						temp_per_line_RE_float_F16 = 0;
						
						///////////////////////////////F8
						temp_per_line_RE_float_F8 = temp_per_line_RE_float_F8 / 32;
						temp_per_line_distance_float_F8 = temp_per_line_distance_float_F8 / 32;
						
						if( temp_per_line_RE_float_F8 > 1000 ){							
							F8_RE_distribution_1000++;							
						}else if( temp_per_line_RE_float_F8 > 100 ){							
							F8_RE_distribution_100++;
						}else if( temp_per_line_RE_float_F8 > 10 ){							
							F8_RE_distribution_10++;
						}else if( temp_per_line_RE_float_F8 > 1 ){							
							F8_RE_distribution_1++;
						}else if( temp_per_line_RE_float_F8 > 0.1 ){					
							F8_RE_distribution_01++;
						}else if( temp_per_line_RE_float_F8 > 0.01 ){							
							F8_RE_distribution_001++;
						}else if( temp_per_line_RE_float_F8 > 0.001 ){							
							F8_RE_distribution_0001++;
						}else if( temp_per_line_RE_float_F8 > 0.0001 ){							
							F8_RE_distribution_00001++;
						}else if( temp_per_line_RE_float_F8 > 0.00001 ){							
							F8_RE_distribution_000001++;
						}else if( temp_per_line_RE_float_F8 > 0.000001 ){							
							F8_RE_distribution_0000001++;
						}else if( temp_per_line_RE_float_F8 == 0 ){							
							F8_RE_distribution_0++;
						}
						
						sum_per_line_RE_float_F8 += temp_per_line_RE_float_F8;
						sum_per_line_distance_float_F8 += temp_per_line_distance_float_F8;
						
						temp_per_line_distance_float_F8 = 0;
						temp_per_line_RE_float_F8 = 0;
						
						///////////////////////////////B16
						temp_per_line_RE_float_B16 = temp_per_line_RE_float_B16 / 32;
						temp_per_line_distance_float_B16 = temp_per_line_distance_float_B16 / 32;
						
						if( temp_per_line_RE_float_B16 > 1000 ){							
							B16_RE_distribution_1000++;							
						}else if( temp_per_line_RE_float_B16 > 100 ){							
							B16_RE_distribution_100++;
						}else if( temp_per_line_RE_float_B16 > 10 ){							
							B16_RE_distribution_10++;
						}else if( temp_per_line_RE_float_B16 > 1 ){							
							B16_RE_distribution_1++;
						}else if( temp_per_line_RE_float_B16 > 0.1 ){					
							B16_RE_distribution_01++;
						}else if( temp_per_line_RE_float_B16 > 0.01 ){							
							B16_RE_distribution_001++;
						}else if( temp_per_line_RE_float_B16 > 0.001 ){							
							B16_RE_distribution_0001++;
						}else if( temp_per_line_RE_float_B16 > 0.0001 ){							
							B16_RE_distribution_00001++;
						}else if( temp_per_line_RE_float_B16 > 0.00001 ){							
							B16_RE_distribution_000001++;
						}else if( temp_per_line_RE_float_B16 > 0.000001 ){							
							B16_RE_distribution_0000001++;
						}else if( temp_per_line_RE_float_B16 == 0 ){							
							B16_RE_distribution_0++;
						}
						
						sum_per_line_RE_float_B16 += temp_per_line_RE_float_B16;
						sum_per_line_distance_float_B16 += temp_per_line_distance_float_B16;
						
						temp_per_line_distance_float_B16 = 0;
						temp_per_line_RE_float_B16 = 0;
						
						///////////////////////////////B8
						temp_per_line_RE_float_B8 = temp_per_line_RE_float_B8 / 32;
						temp_per_line_distance_float_B8 = temp_per_line_distance_float_B8 / 32;
						
						if( temp_per_line_RE_float_B8 > 1000 ){							
							B8_RE_distribution_1000++;							
						}else if( temp_per_line_RE_float_B8 > 100 ){							
							B8_RE_distribution_100++;
						}else if( temp_per_line_RE_float_B8 > 10 ){							
							B8_RE_distribution_10++;
						}else if( temp_per_line_RE_float_B8 > 1 ){							
							B8_RE_distribution_1++;
						}else if( temp_per_line_RE_float_B8 > 0.1 ){					
							B8_RE_distribution_01++;
						}else if( temp_per_line_RE_float_B8 > 0.01 ){							
							B8_RE_distribution_001++;
						}else if( temp_per_line_RE_float_B8 > 0.001 ){							
							B8_RE_distribution_0001++;
						}else if( temp_per_line_RE_float_B8 > 0.0001 ){							
							B8_RE_distribution_00001++;
						}else if( temp_per_line_RE_float_B8 > 0.00001 ){							
							B8_RE_distribution_000001++;
						}else if( temp_per_line_RE_float_B8 > 0.000001 ){							
							B8_RE_distribution_0000001++;
						}else if( temp_per_line_RE_float_B8 == 0 ){							
							B8_RE_distribution_0++;
						}
						
						sum_per_line_RE_float_B8 += temp_per_line_RE_float_B8;
						sum_per_line_distance_float_B8 += temp_per_line_distance_float_B8;
						
						temp_per_line_distance_float_B8 = 0;
						temp_per_line_RE_float_B8 = 0;
						
						///////////////////////////////NF16
						temp_per_line_RE_float_NF16 = temp_per_line_RE_float_NF16 / 32;
						temp_per_line_distance_float_NF16 = temp_per_line_distance_float_NF16 / 32;
						
						if( temp_per_line_RE_float_NF16 > 1000 ){				
							NF16_RE_distribution_1000++;							
						}else if( temp_per_line_RE_float_NF16 > 100 ){							
							NF16_RE_distribution_100++;
						}else if( temp_per_line_RE_float_NF16 > 10 ){							
							NF16_RE_distribution_10++;
						}else if( temp_per_line_RE_float_NF16 > 1 ){							
							NF16_RE_distribution_1++;
						}else if( temp_per_line_RE_float_NF16 > 0.1 ){					
							NF16_RE_distribution_01++;
						}else if( temp_per_line_RE_float_NF16 > 0.01 ){							
							NF16_RE_distribution_001++;
						}else if( temp_per_line_RE_float_NF16 > 0.001 ){							
							NF16_RE_distribution_0001++;
						}else if( temp_per_line_RE_float_NF16 > 0.0001 ){							
							NF16_RE_distribution_00001++;
						}else if( temp_per_line_RE_float_NF16 > 0.00001 ){							
							NF16_RE_distribution_000001++;
						}else if( temp_per_line_RE_float_NF16 > 0.000001 ){							
							NF16_RE_distribution_0000001++;
						}else if( temp_per_line_RE_float_NF16 == 0 ){							
							NF16_RE_distribution_0++;
						}
						
						sum_per_line_RE_float_NF16 += temp_per_line_RE_float_NF16;
						sum_per_line_distance_float_NF16 += temp_per_line_distance_float_NF16;
						
						temp_per_line_distance_float_NF16 = 0;
						temp_per_line_RE_float_NF16 = 0;
						
						///////////////////////////////NF8
						temp_per_line_RE_float_NF8 = temp_per_line_RE_float_NF8 / 32;
						temp_per_line_distance_float_NF8 = temp_per_line_distance_float_NF8 / 32;
						
						if( temp_per_line_RE_float_NF8 > 1000 ){							
							NF8_RE_distribution_1000++;							
						}else if( temp_per_line_RE_float_NF8 > 100 ){							
							NF8_RE_distribution_100++;
						}else if( temp_per_line_RE_float_NF8 > 10 ){							
							NF8_RE_distribution_10++;
						}else if( temp_per_line_RE_float_NF8 > 1 ){							
							NF8_RE_distribution_1++;
						}else if( temp_per_line_RE_float_NF8 > 0.1 ){					
							NF8_RE_distribution_01++;
						}else if( temp_per_line_RE_float_NF8 > 0.01 ){							
							NF8_RE_distribution_001++;
						}else if( temp_per_line_RE_float_NF8 > 0.001 ){							
							NF8_RE_distribution_0001++;
						}else if( temp_per_line_RE_float_NF8 > 0.0001 ){							
							NF8_RE_distribution_00001++;
						}else if( temp_per_line_RE_float_NF8 > 0.00001 ){							
							NF8_RE_distribution_000001++;
						}else if( temp_per_line_RE_float_NF8 > 0.000001 ){							
							NF8_RE_distribution_0000001++;
						}else if( temp_per_line_RE_float_NF8 == 0 ){							
							NF8_RE_distribution_0++;
						}
						
						sum_per_line_RE_float_NF8 += temp_per_line_RE_float_NF8;
						sum_per_line_distance_float_NF8 += temp_per_line_distance_float_NF8;
						
						temp_per_line_distance_float_NF8 = 0;
						temp_per_line_RE_float_NF8 = 0;
						
						///////////////////////////////NB16
						temp_per_line_RE_float_NB16 = temp_per_line_RE_float_NB16 / 32;
						temp_per_line_distance_float_NB16 = temp_per_line_distance_float_NB16 / 32;
						
						if( temp_per_line_RE_float_NB16 > 1000 ){							
							NB16_RE_distribution_1000++;							
						}else if( temp_per_line_RE_float_NB16 > 100 ){							
							NB16_RE_distribution_100++;
						}else if( temp_per_line_RE_float_NB16 > 10 ){							
							NB16_RE_distribution_10++;
						}else if( temp_per_line_RE_float_NB16 > 1 ){							
							NB16_RE_distribution_1++;
						}else if( temp_per_line_RE_float_NB16 > 0.1 ){					
							NB16_RE_distribution_01++;
						}else if( temp_per_line_RE_float_NB16 > 0.01 ){							
							NB16_RE_distribution_001++;
						}else if( temp_per_line_RE_float_NB16 > 0.001 ){							
							NB16_RE_distribution_0001++;
						}else if( temp_per_line_RE_float_NB16 > 0.0001 ){							
							NB16_RE_distribution_00001++;
						}else if( temp_per_line_RE_float_NB16 > 0.00001 ){							
							NB16_RE_distribution_000001++;
						}else if( temp_per_line_RE_float_NB16 > 0.000001 ){							
							NB16_RE_distribution_0000001++;
						}else if( temp_per_line_RE_float_NB16 == 0 ){							
							NB16_RE_distribution_0++;
						}
						
						sum_per_line_RE_float_NB16 += temp_per_line_RE_float_NB16;
						sum_per_line_distance_float_NB16 += temp_per_line_distance_float_NB16;
						
						temp_per_line_distance_float_NB16 = 0;
						temp_per_line_RE_float_NB16 = 0;
						
						///////////////////////////////NB8
						temp_per_line_RE_float_NB8 = temp_per_line_RE_float_NB8 / 32;
						temp_per_line_distance_float_NB8 = temp_per_line_distance_float_NB8 / 32;
						
						if( temp_per_line_RE_float_NB8 > 1000 ){							
							NB8_RE_distribution_1000++;							
						}else if( temp_per_line_RE_float_NB8 > 100 ){							
							NB8_RE_distribution_100++;
						}else if( temp_per_line_RE_float_NB8 > 10 ){							
							NB8_RE_distribution_10++;
						}else if( temp_per_line_RE_float_NB8 > 1 ){							
							NB8_RE_distribution_1++;
						}else if( temp_per_line_RE_float_NB8 > 0.1 ){					
							NB8_RE_distribution_01++;
						}else if( temp_per_line_RE_float_NB8 > 0.01 ){							
							NB8_RE_distribution_001++;
						}else if( temp_per_line_RE_float_NB8 > 0.001 ){							
							NB8_RE_distribution_0001++;
						}else if( temp_per_line_RE_float_NB8 > 0.0001 ){							
							NB8_RE_distribution_00001++;
						}else if( temp_per_line_RE_float_NB8 > 0.00001 ){							
							NB8_RE_distribution_000001++;
						}else if( temp_per_line_RE_float_NB8 > 0.000001 ){							
							NB8_RE_distribution_0000001++;
						}else if( temp_per_line_RE_float_NB8 == 0 ){							
							NB8_RE_distribution_0++;
						}
						
						sum_per_line_RE_float_NB8 += temp_per_line_RE_float_NB8;
						sum_per_line_distance_float_NB8 += temp_per_line_distance_float_NB8;
						
						temp_per_line_distance_float_NB8 = 0;
						temp_per_line_RE_float_NB8 = 0;
						
						///////////////////////////////IL16
						temp_per_line_RE_float_IL16 = temp_per_line_RE_float_IL16 / 32;
						temp_per_line_distance_float_IL16 = temp_per_line_distance_float_IL16 / 32;
						
						if( temp_per_line_RE_float_IL16 > 1000 ){							
							IL16_RE_distribution_1000++;							
						}else if( temp_per_line_RE_float_IL16 > 100 ){							
							IL16_RE_distribution_100++;
						}else if( temp_per_line_RE_float_IL16 > 10 ){							
							IL16_RE_distribution_10++;
						}else if( temp_per_line_RE_float_IL16 > 1 ){							
							IL16_RE_distribution_1++;
						}else if( temp_per_line_RE_float_IL16 > 0.1 ){					
							IL16_RE_distribution_01++;
						}else if( temp_per_line_RE_float_IL16 > 0.01 ){							
							IL16_RE_distribution_001++;
						}else if( temp_per_line_RE_float_IL16 > 0.001 ){							
							IL16_RE_distribution_0001++;
						}else if( temp_per_line_RE_float_IL16 > 0.0001 ){							
							IL16_RE_distribution_00001++;
						}else if( temp_per_line_RE_float_IL16 > 0.00001 ){							
							IL16_RE_distribution_000001++;
						}else if( temp_per_line_RE_float_IL16 > 0.000001 ){							
							IL16_RE_distribution_0000001++;
						}else if( temp_per_line_RE_float_IL16 == 0 ){							
							IL16_RE_distribution_0++;
						}
						
						sum_per_line_RE_float_IL16 += temp_per_line_RE_float_IL16;
						sum_per_line_distance_float_IL16 += temp_per_line_distance_float_IL16;
						
						temp_per_line_distance_float_IL16 = 0;
						temp_per_line_RE_float_IL16 = 0;
						
						///////////////////////////////IL8
						temp_per_line_RE_float_IL8 = temp_per_line_RE_float_IL8 / 32;
						temp_per_line_distance_float_IL8 = temp_per_line_distance_float_IL8 / 32;
						
						if( temp_per_line_RE_float_IL8 > 1000 ){							
							IL8_RE_distribution_1000++;							
						}else if( temp_per_line_RE_float_IL8 > 100 ){							
							IL8_RE_distribution_100++;
						}else if( temp_per_line_RE_float_IL8 > 10 ){							
							IL8_RE_distribution_10++;
						}else if( temp_per_line_RE_float_IL8 > 1 ){							
							IL8_RE_distribution_1++;
						}else if( temp_per_line_RE_float_IL8 > 0.1 ){					
							IL8_RE_distribution_01++;
						}else if( temp_per_line_RE_float_IL8 > 0.01 ){							
							IL8_RE_distribution_001++;
						}else if( temp_per_line_RE_float_IL8 > 0.001 ){							
							IL8_RE_distribution_0001++;
						}else if( temp_per_line_RE_float_IL8 > 0.0001 ){							
							IL8_RE_distribution_00001++;
						}else if( temp_per_line_RE_float_IL8 > 0.00001 ){							
							IL8_RE_distribution_000001++;
						}else if( temp_per_line_RE_float_IL8 > 0.000001 ){							
							IL8_RE_distribution_0000001++;
						}else if( temp_per_line_RE_float_IL8 == 0 ){							
							IL8_RE_distribution_0++;
						}
						
						sum_per_line_RE_float_IL8 += temp_per_line_RE_float_IL8;
						sum_per_line_distance_float_IL8 += temp_per_line_distance_float_IL8;
						
						temp_per_line_distance_float_IL8 = 0;
						temp_per_line_RE_float_IL8 = 0;
						
						///////////////////////////////IR16
						temp_per_line_RE_float_IR16 = temp_per_line_RE_float_IR16 / 32;
						temp_per_line_distance_float_IR16 = temp_per_line_distance_float_IR16 / 32;
						
						if( temp_per_line_RE_float_IR16 > 1000 ){							
							IR16_RE_distribution_1000++;							
						}else if( temp_per_line_RE_float_IR16 > 100 ){							
							IR16_RE_distribution_100++;
						}else if( temp_per_line_RE_float_IR16 > 10 ){							
							IR16_RE_distribution_10++;
						}else if( temp_per_line_RE_float_IR16 > 1 ){							
							IR16_RE_distribution_1++;
						}else if( temp_per_line_RE_float_IR16 > 0.1 ){					
							IR16_RE_distribution_01++;
						}else if( temp_per_line_RE_float_IR16 > 0.01 ){							
							IR16_RE_distribution_001++;
						}else if( temp_per_line_RE_float_IR16 > 0.001 ){							
							IR16_RE_distribution_0001++;
						}else if( temp_per_line_RE_float_IR16 > 0.0001 ){							
							IR16_RE_distribution_00001++;
						}else if( temp_per_line_RE_float_IR16 > 0.00001 ){							
							IR16_RE_distribution_000001++;
						}else if( temp_per_line_RE_float_IR16 > 0.000001 ){							
							IR16_RE_distribution_0000001++;
						}else if( temp_per_line_RE_float_IR16 == 0 ){							
							IR16_RE_distribution_0++;
						}
						
						sum_per_line_RE_float_IR16 += temp_per_line_RE_float_IR16;
						sum_per_line_distance_float_IR16 += temp_per_line_distance_float_IR16;
						
						temp_per_line_distance_float_IR16 = 0;
						temp_per_line_RE_float_IR16 = 0;
						
						///////////////////////////////IR8
						temp_per_line_RE_float_IR8 = temp_per_line_RE_float_IR8 / 32;
						temp_per_line_distance_float_IR8 = temp_per_line_distance_float_IR8 / 32;
						
						if( temp_per_line_RE_float_IR8 > 1000 ){							
							IR8_RE_distribution_1000++;							
						}else if( temp_per_line_RE_float_IR8 > 100 ){							
							IR8_RE_distribution_100++;
						}else if( temp_per_line_RE_float_IR8 > 10 ){							
							IR8_RE_distribution_10++;
						}else if( temp_per_line_RE_float_IR8 > 1 ){							
							IR8_RE_distribution_1++;
						}else if( temp_per_line_RE_float_IR8 > 0.1 ){					
							IR8_RE_distribution_01++;
						}else if( temp_per_line_RE_float_IR8 > 0.01 ){							
							IR8_RE_distribution_001++;
						}else if( temp_per_line_RE_float_IR8 > 0.001 ){							
							IR8_RE_distribution_0001++;
						}else if( temp_per_line_RE_float_IR8 > 0.0001 ){							
							IR8_RE_distribution_00001++;
						}else if( temp_per_line_RE_float_IR8 > 0.00001 ){							
							IR8_RE_distribution_000001++;
						}else if( temp_per_line_RE_float_IR8 > 0.000001 ){							
							IR8_RE_distribution_0000001++;
						}else if( temp_per_line_RE_float_IR8 == 0 ){							
							IR8_RE_distribution_0++;
						}
						
						sum_per_line_RE_float_IR8 += temp_per_line_RE_float_IR8;
						sum_per_line_distance_float_IR8 += temp_per_line_distance_float_IR8;
						
						temp_per_line_distance_float_IR8 = 0;
						temp_per_line_RE_float_IR8 = 0;
						/////////////////////////////////per cache line error distribution
						
						
						///////////////per cache line distribution array
						distribution_number_of_ones_array_float[temp_number_of_ones_float]++; ////////////todo: is temp_number_of_ones_float modified with DBI? ##ok
						distribution_number_of_bit_flips_array_float[temp_number_of_bit_flips_float]++;
						distribution_number_of_ones_array_int[temp_number_of_ones_int]++; 
						distribution_number_of_bit_flips_array_int[temp_number_of_bit_flips_int]++; 
						distribution_number_of_ones_array_new[temp_number_of_ones_new]++;
						distribution_number_of_bit_flips_array_new[temp_number_of_bit_flips_new]++;
						
						/*
						if(distribution_number_of_ones_array_new[1024] > 0){
							fprintf (pFile, "debug2: total_cache_line_count:%d\n", total_cache_line_count );
							
							fprintf (pFile, "debug2: temp_number_of_ones_float:%d\n", temp_number_of_ones_float );
							fprintf (pFile, "debug2: temp_number_of_bit_flips_float:%d\n", temp_number_of_bit_flips_float );
							fprintf (pFile, "debug2: temp_number_of_ones_int:%d\n", temp_number_of_ones_int );
							fprintf (pFile, "debug2: temp_number_of_bit_flips_int:%d\n", temp_number_of_bit_flips_int );
							fprintf (pFile, "debug2: temp_number_of_ones_new:%d\n", temp_number_of_ones_new );
							fprintf (pFile, "debug2: temp_number_of_bit_flips_new:%d\n", temp_number_of_bit_flips_new );
							
							fprintf (pFile, "debug2: temp_ones_count_in_flit_int:%d\n", temp_ones_count_in_flit_int );
							fprintf (pFile, "debug2: temp_flips_count_in_flit_int:%d\n", temp_flips_count_in_flit_int );
							fprintf (pFile, "debug2: temp_ones_count_in_flit_float:%d\n", temp_ones_count_in_flit_float );
							fprintf (pFile, "debug2: temp_flips_count_in_flit_float:%d\n", temp_flips_count_in_flit_float );
							fprintf (pFile, "debug2: temp_ones_count_in_flit_new:%d\n", temp_ones_count_in_flit_new );
							fprintf (pFile, "debug2: temp_flips_count_in_flit_new:%d\n", temp_flips_count_in_flit_new );
						}						
						
						if(DBI_enabled){
							if(temp_number_of_ones_float > 512){
								fprintf (pFile, "\n");
								fprintf (pFile, "#################################debug#########################\n");
								fprintf (pFile, "debug1025_ones_float: ");
								for(int m = 0; m < 1024; ++m){
									fprintf (pFile, "%d ", reverse_number_of_ones_array_float[m] );
								}
								fprintf (pFile, "\n");
								
								fprintf (pFile, "debug1025_bit_flips_float: ");
								for(int m = 0; m < 1024; ++m){
									fprintf (pFile, "%d ", reverse_number_of_bit_flips_array_float[m] );
								}
								fprintf (pFile, "\n");
								
								exit(0);
							}
							
							if(temp_number_of_ones_new > 512 || distribution_number_of_ones_array_new[1024] > 0){
								
								fprintf (pFile, "total_cache_line_count:%d\n", total_cache_line_count );
								fprintf (pFile, "total_flit_count:%d\n", total_flit_count );
								fprintf (pFile, "total_float_count:%d\n", total_float_count );
			
								fprintf (pFile, "\n");
								fprintf (pFile, "#################################debug#########################\n");
								fprintf (pFile, "debug1025_ones_new: ");
								for(int m = 0; m < 1024; ++m){
									fprintf (pFile, "%d ", reverse_number_of_ones_array_new[m] );
								}
								fprintf (pFile, "\n");
								
								fprintf (pFile, "debug1025_bit_flips_new: ");
								for(int m = 0; m < 1024; ++m){
									fprintf (pFile, "%d ", reverse_number_of_bit_flips_array_new[m] );
								}
								fprintf (pFile, "\n");
								
								exit(0);
							}
						}
						*/
						
						///////////////temp count per cache line
						temp_number_of_ones_float = 0;
						temp_number_of_bit_flips_float = 0;
						temp_number_of_ones_int = 0; 
						temp_number_of_bit_flips_int = 0; 
						temp_number_of_ones_new = 0;
						temp_number_of_bit_flips_new = 0;						
												
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
					}
				}
			}////////////////////end of: while( std::getline(GPU_result, gpu_line) ) {
			
			
			fprintf (pFile, "total_cache_line_count:%d\n", total_cache_line_count );
			fprintf (pFile, "total_flit_count:%d\n", total_flit_count );
			fprintf (pFile, "total_float_count:%d\n", total_float_count );
			
			/*	
			/////////////////////////debug		
			fprintf (pFile, "\n");
			fprintf (pFile, "#################################distributions1025#########################\n");
			
			fprintf (pFile, "distribution1025_ones_int: ");
			for(int m = 0; m < 1025; ++m){
				fprintf (pFile, "%d ", distribution_number_of_ones_array_int[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution1025_ones_float: ");
			for(int m = 0; m < 1025; ++m){
				fprintf (pFile, "%d ", distribution_number_of_ones_array_float[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution1025_ones_new: ");
			for(int m = 0; m < 1025; ++m){
				fprintf (pFile, "%d ", distribution_number_of_ones_array_new[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution1025_flips_int: ");
			for(int m = 0; m < 1025; ++m){
				fprintf (pFile, "%d ", distribution_number_of_bit_flips_array_int[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution1025_flips_float: ");
			for(int m = 0; m < 1025; ++m){
				fprintf (pFile, "%d ", distribution_number_of_bit_flips_array_float[m] );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution1025_flips_new: ");
			for(int m = 0; m < 1025; ++m){
				fprintf (pFile, "%d ", distribution_number_of_bit_flips_array_new[m] );
			}
			fprintf (pFile, "\n");
			/////////////////////////debug
			*/
			
				
			fprintf (pFile, "\n");
			fprintf (pFile, "#################################distributions32#########################\n");
			
			//////////////shrinked distribution results
			int distribution_number_of_ones_array32_float[32];
			int distribution_number_of_bit_flips_array32_float[32];
			int distribution_number_of_ones_array32_int[32]; 
			int distribution_number_of_bit_flips_array32_int[32]; 
			int distribution_number_of_ones_array32_new[32];
			int distribution_number_of_bit_flips_array32_new[32];
			
			int distribution_number_of_ones_array8_float[8];
			int distribution_number_of_bit_flips_array8_float[8];
			int distribution_number_of_ones_array8_int[8]; 
			int distribution_number_of_bit_flips_array8_int[8]; 
			int distribution_number_of_ones_array8_new[8];
			int distribution_number_of_bit_flips_array8_new[8];
			
			int distribution_number_of_ones_array4_float[8];
			int distribution_number_of_bit_flips_array4_float[8];
			int distribution_number_of_ones_array4_int[8]; 
			int distribution_number_of_bit_flips_array4_int[8]; 
			int distribution_number_of_ones_array4_new[8];
			int distribution_number_of_bit_flips_array4_new[8];
			
			/////////////initialize
			for(int m = 0; m < 32; ++m){
				distribution_number_of_ones_array32_float[m] = 0;
				distribution_number_of_bit_flips_array32_float[m] = 0;
				distribution_number_of_ones_array32_int[m] = 0;
				distribution_number_of_bit_flips_array32_int[m] = 0;
				distribution_number_of_ones_array32_new[m] = 0;
				distribution_number_of_bit_flips_array32_new[m] = 0;
			}
			
			for(int m = 0; m < 8; ++m){
				distribution_number_of_ones_array8_float[m] = 0;
				distribution_number_of_bit_flips_array8_float[m] = 0;
				distribution_number_of_ones_array8_int[m] = 0;
				distribution_number_of_bit_flips_array8_int[m] = 0;
				distribution_number_of_ones_array8_new[m] = 0;
				distribution_number_of_bit_flips_array8_new[m] = 0;
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
			
			////////////////distribution shrink to 8
			for(int m = 0; m < 8; ++m){
				for(int n = 0; n < 4; ++n){
					distribution_number_of_ones_array8_float[m] += distribution_number_of_ones_array32_float[4 * m + n];
					distribution_number_of_bit_flips_array8_float[m] += distribution_number_of_bit_flips_array32_float[4 * m + n];
					distribution_number_of_ones_array8_int[m] += distribution_number_of_ones_array32_int[4 * m + n];
					distribution_number_of_bit_flips_array8_int[m] += distribution_number_of_bit_flips_array32_int[4 * m + n];
					distribution_number_of_ones_array8_new[m] += distribution_number_of_ones_array32_new[4 * m + n];
					distribution_number_of_bit_flips_array8_new[m] += distribution_number_of_bit_flips_array32_new[4 * m + n];
				}
			}

			////////////////distribution shrink to 4
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 2; ++n){
					distribution_number_of_ones_array4_float[m] += distribution_number_of_ones_array8_float[2 * m + n];
					distribution_number_of_bit_flips_array4_float[m] += distribution_number_of_bit_flips_array8_float[2 * m + n];
					distribution_number_of_ones_array4_int[m] += distribution_number_of_ones_array8_int[2 * m + n];
					distribution_number_of_bit_flips_array4_int[m] += distribution_number_of_bit_flips_array8_int[2 * m + n];
					distribution_number_of_ones_array4_new[m] += distribution_number_of_ones_array8_new[2 * m + n];
					distribution_number_of_bit_flips_array4_new[m] += distribution_number_of_bit_flips_array8_new[2 * m + n];
				}
			}			
			
			///////////////////per cache line distributions
			fprintf (pFile, "distribution32_ones_int: ");
			for(int m = 0; m < 32; ++m){
				fprintf (pFile, "%f ", distribution_number_of_ones_array32_int[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution32_ones_float: ");
			for(int m = 0; m < 32; ++m){
				fprintf (pFile, "%f ", distribution_number_of_ones_array32_float[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution32_ones_new: ");
			for(int m = 0; m < 32; ++m){
				fprintf (pFile, "%f ", distribution_number_of_ones_array32_new[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution32_flips_int: ");
			for(int m = 0; m < 32; ++m){
				fprintf (pFile, "%f ", distribution_number_of_bit_flips_array32_int[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution32_flips_float: ");
			for(int m = 0; m < 32; ++m){
				fprintf (pFile, "%f ", distribution_number_of_bit_flips_array32_float[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution32_flips_new: ");
			for(int m = 0; m < 32; ++m){
				fprintf (pFile, "%f ", distribution_number_of_bit_flips_array32_new[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "\n");
			fprintf (pFile, "#################################distributions8#########################\n");
			
			fprintf (pFile, "distribution8_ones_int: ");
			for(int m = 0; m < 8; ++m){
				fprintf (pFile, "%f ", distribution_number_of_ones_array8_int[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution8_ones_float: ");
			for(int m = 0; m < 8; ++m){
				fprintf (pFile, "%f ", distribution_number_of_ones_array8_float[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution8_ones_new: ");
			for(int m = 0; m < 8; ++m){
				fprintf (pFile, "%f ", distribution_number_of_ones_array8_new[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution8_flips_int: ");
			for(int m = 0; m < 8; ++m){
				fprintf (pFile, "%f ", distribution_number_of_bit_flips_array8_int[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution8_flips_float: ");
			for(int m = 0; m < 8; ++m){
				fprintf (pFile, "%f ", distribution_number_of_bit_flips_array8_float[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution8_flips_new: ");
			for(int m = 0; m < 8; ++m){
				fprintf (pFile, "%f ", distribution_number_of_bit_flips_array8_new[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "\n");
			fprintf (pFile, "#################################distributions4#########################\n");
			
			fprintf (pFile, "distribution4_ones_int: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%f ", distribution_number_of_ones_array4_int[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution4_ones_float: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%f ", distribution_number_of_ones_array4_float[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution4_ones_new: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%f ", distribution_number_of_ones_array4_new[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution4_flips_int: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%f ", distribution_number_of_bit_flips_array4_int[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution4_flips_float: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%f ", distribution_number_of_bit_flips_array4_float[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "distribution4_flips_new: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%f ", distribution_number_of_bit_flips_array4_new[m] / (float) total_cache_line_count );
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
			
			///////////////////per cache line counts bits + bytes
			fprintf (pFile, "overall_ones_int: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%f ", byte_bits_ones_sum_int[m][n] / (float) total_cache_line_count );
				}
				fprintf (pFile, "%f ", byte_ones_sum_int[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "overall_ones_float: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%f ", byte_bits_ones_sum_float[m][n] / (float) total_cache_line_count );
				}
				fprintf (pFile, "%f ", byte_ones_sum_float[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "overall_ones_new: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%f ", byte_bits_ones_sum_new[m][n] / (float) total_cache_line_count );
				}
				fprintf (pFile, "%f ", byte_ones_sum_new[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "overall_flips_int: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%f ", byte_bits_flips_sum_int[m][n] / (float) total_cache_line_count );
				}
				fprintf (pFile, "%f ", byte_flips_sum_int[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "overall_flips_float: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%f ", byte_bits_flips_sum_float[m][n] / (float) total_cache_line_count );
				}
				fprintf (pFile, "%f ", byte_flips_sum_float[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "overall_flips_new: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%f ", byte_bits_flips_sum_new[m][n] / (float) total_cache_line_count );
				}
				fprintf (pFile, "%f ", byte_flips_sum_new[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			///////////////////per cache line counts bits
			fprintf (pFile, "\n");
			fprintf (pFile, "#################################only bits#########################\n");			
			fprintf (pFile, "bits_ones_int: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%f ", byte_bits_ones_sum_int[m][n] / (float) total_cache_line_count );
				}
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "bits_ones_float: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%f ", byte_bits_ones_sum_float[m][n] / (float) total_cache_line_count );
				}
			}
			fprintf (pFile, "\n");			
			
			fprintf (pFile, "bits_ones_new: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%f ", byte_bits_ones_sum_new[m][n] / (float) total_cache_line_count );
				}
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "bits_flips_int: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%f ", byte_bits_flips_sum_int[m][n] / (float) total_cache_line_count );
				}				
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "bits_flips_float: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%f ", byte_bits_flips_sum_float[m][n] / (float) total_cache_line_count );
				}
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "bits_flips_new: ");
			for(int m = 0; m < 4; ++m){
				for(int n = 0; n < 8; ++n){
					fprintf (pFile, "%f ", byte_bits_flips_sum_new[m][n] / (float) total_cache_line_count );
				}				
			}
			fprintf (pFile, "\n");
			
			///////////////////per cache line counts bytes
			fprintf (pFile, "\n");
			fprintf (pFile, "#################################bytes#########################\n");
			fprintf (pFile, "bytes_ones_int: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%f ", byte_ones_sum_int[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "bytes_ones_float: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%f ", byte_ones_sum_float[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "bytes_ones_new: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%f ", byte_ones_sum_new[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "bytes_flips_int: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%f ", byte_flips_sum_int[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "bytes_flips_float: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%f ", byte_flips_sum_float[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			fprintf (pFile, "bytes_flips_new: ");
			for(int m = 0; m < 4; ++m){
				fprintf (pFile, "%f ", byte_flips_sum_new[m] / (float) total_cache_line_count );
			}
			fprintf (pFile, "\n");
			
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			///////////////////////////error outputs		
			fprintf (pFile, "\n");
			fprintf (pFile, "#################################Errors#########################\n");			
			/////////// F32 (1, 8, 23) -> F16 (1, 5, 10) -> F8 (1, 4, 3):
			fprintf (pFile, "sum_per_line_distance_float_F16: %f\n", sum_per_line_distance_float_F16 / (double) total_cache_line_count );
			fprintf (pFile, "sum_per_line_RE_float_F16: %f\n", sum_per_line_RE_float_F16 / (double) total_cache_line_count );
			fprintf (pFile, "\n");
			fprintf (pFile, "sum_per_line_distance_float_F8: %f\n", sum_per_line_distance_float_F8 / (double) total_cache_line_count );
			fprintf (pFile, "sum_per_line_RE_float_F8: %f\n", sum_per_line_RE_float_F8 / (double) total_cache_line_count );
			fprintf (pFile, "\n");
			
			/////////// F32 (1, 8, 23) -> B16 (1, 8, 7)  -> B8 (1, 5, 2):
			fprintf (pFile, "sum_per_line_distance_float_B16: %f\n", sum_per_line_distance_float_B16 / (double) total_cache_line_count );
			fprintf (pFile, "sum_per_line_RE_float_B16: %f\n", sum_per_line_RE_float_B16 / (double) total_cache_line_count );
			fprintf (pFile, "\n");
			fprintf (pFile, "sum_per_line_distance_float_B8: %f\n", sum_per_line_distance_float_B8 / (double) total_cache_line_count );
			fprintf (pFile, "sum_per_line_RE_float_B8: %f\n", sum_per_line_RE_float_B8 / (double) total_cache_line_count );
			fprintf (pFile, "\n");
			
			/////////// NF32 (1, 8, 23) -> NF16 (1, 5, 10) -> NF8 (1, 4, 3):
			fprintf (pFile, "sum_per_line_distance_float_NF16: %f\n", sum_per_line_distance_float_NF16 / (double) total_cache_line_count );
			fprintf (pFile, "sum_per_line_RE_float_NF16: %f\n", sum_per_line_RE_float_NF16 / (double) total_cache_line_count );
			fprintf (pFile, "\n");
			fprintf (pFile, "sum_per_line_distance_float_NF8: %f\n", sum_per_line_distance_float_NF8 / (double) total_cache_line_count );
			fprintf (pFile, "sum_per_line_RE_float_NF8: %f\n", sum_per_line_RE_float_NF8 / (double) total_cache_line_count );
			fprintf (pFile, "\n");
			
			/////////// NF32 (1, 8, 23) -> NB16 (1, 8, 7)  -> NB8 (1, 5, 2):
			fprintf (pFile, "sum_per_line_distance_float_NB16: %f\n", sum_per_line_distance_float_NB16 / (double) total_cache_line_count );
			fprintf (pFile, "sum_per_line_RE_float_NB16: %f\n", sum_per_line_RE_float_NB16 / (double) total_cache_line_count );
			fprintf (pFile, "\n");
			fprintf (pFile, "sum_per_line_distance_float_NB8: %f\n", sum_per_line_distance_float_NB8 / (double) total_cache_line_count );
			fprintf (pFile, "sum_per_line_RE_float_NB8: %f\n", sum_per_line_RE_float_NB8 / (double) total_cache_line_count );
			fprintf (pFile, "\n");
			
			/////////// I32 -> IL16 -> IL8 (left remained):
			fprintf (pFile, "sum_per_line_distance_float_IL16: %f\n", sum_per_line_distance_float_IL16 / (double) total_cache_line_count );
			fprintf (pFile, "sum_per_line_RE_float_IL16: %f\n", sum_per_line_RE_float_IL16 / (double) total_cache_line_count );
			fprintf (pFile, "\n");
			fprintf (pFile, "sum_per_line_distance_float_IL8: %f\n", sum_per_line_distance_float_IL8 / (double) total_cache_line_count );
			fprintf (pFile, "sum_per_line_RE_float_IL8: %f\n", sum_per_line_RE_float_IL8 / (double) total_cache_line_count );
			fprintf (pFile, "\n");
			
			/////////// I32 -> IR16 -> IR8 (right remained):
			fprintf (pFile, "sum_per_line_distance_float_IR16: %f\n", sum_per_line_distance_float_IR16 / (double) total_cache_line_count );
			fprintf (pFile, "sum_per_line_RE_float_IR16: %f\n", sum_per_line_RE_float_IR16 / (double) total_cache_line_count );
			fprintf (pFile, "\n");
			fprintf (pFile, "sum_per_line_distance_float_IR8: %f\n", sum_per_line_distance_float_IR8 / (double) total_cache_line_count );
			fprintf (pFile, "sum_per_line_RE_float_IR8: %f\n", sum_per_line_RE_float_IR8 / (double) total_cache_line_count );
			fprintf (pFile, "\n");
			

			fprintf (pFile, "sum_per_line_distance_float_all: %f %f %f %f %f %f %f %f\n", 
			sum_per_line_distance_float_F16 / (double) total_cache_line_count, sum_per_line_distance_float_F8 / (double) total_cache_line_count, 
			sum_per_line_distance_float_B16 / (double) total_cache_line_count, sum_per_line_distance_float_B8 / (double) total_cache_line_count, 
			sum_per_line_distance_float_NF16 / (double) total_cache_line_count, sum_per_line_distance_float_NF8 / (double) total_cache_line_count, 
			sum_per_line_distance_float_NB16 / (double) total_cache_line_count, sum_per_line_distance_float_NB8 / (double) total_cache_line_count);
			
			fprintf (pFile, "sum_per_line_distance_int_all: %f %f %f %f %f %f %f %f %f %f %f %f\n", 
			sum_per_line_distance_float_F16 / (double) total_cache_line_count, sum_per_line_distance_float_F8 / (double) total_cache_line_count, 
			sum_per_line_distance_float_B16 / (double) total_cache_line_count, sum_per_line_distance_float_B8 / (double) total_cache_line_count, 
			sum_per_line_distance_float_NF16 / (double) total_cache_line_count, sum_per_line_distance_float_NF8 / (double) total_cache_line_count, 
			sum_per_line_distance_float_NB16 / (double) total_cache_line_count, sum_per_line_distance_float_NB8 / (double) total_cache_line_count, 
			sum_per_line_distance_float_IL16 / (double) total_cache_line_count, sum_per_line_distance_float_IL8 / (double) total_cache_line_count,
			sum_per_line_distance_float_IR16 / (double) total_cache_line_count, sum_per_line_distance_float_IR8 / (double) total_cache_line_count);
			
			fprintf (pFile, "sum_per_line_RE_float_all: %f %f %f %f %f %f %f %f\n", 
			sum_per_line_RE_float_F16 / (double) total_cache_line_count, sum_per_line_RE_float_F8 / (double) total_cache_line_count, 
			sum_per_line_RE_float_B16 / (double) total_cache_line_count, sum_per_line_RE_float_B8 / (double) total_cache_line_count, 
			sum_per_line_RE_float_NF16 / (double) total_cache_line_count, sum_per_line_RE_float_NF8 / (double) total_cache_line_count, 
			sum_per_line_RE_float_NB16 / (double) total_cache_line_count, sum_per_line_RE_float_NB8 / (double) total_cache_line_count);
			
			fprintf (pFile, "sum_per_line_RE_int_all: %f %f %f %f %f %f %f %f %f %f %f %f\n", 
			sum_per_line_RE_float_F16 / (double) total_cache_line_count, sum_per_line_RE_float_F8 / (double) total_cache_line_count, 
			sum_per_line_RE_float_B16 / (double) total_cache_line_count, sum_per_line_RE_float_B8 / (double) total_cache_line_count, 
			sum_per_line_RE_float_NF16 / (double) total_cache_line_count, sum_per_line_RE_float_NF8 / (double) total_cache_line_count, 
			sum_per_line_RE_float_NB16 / (double) total_cache_line_count, sum_per_line_RE_float_NB8 / (double) total_cache_line_count, 
			sum_per_line_RE_float_IL16 / (double) total_cache_line_count, sum_per_line_RE_float_IL8 / (double) total_cache_line_count,
			sum_per_line_RE_float_IR16 / (double) total_cache_line_count, sum_per_line_RE_float_IR8 / (double) total_cache_line_count);
			
			fprintf (pFile, "\n");
			fprintf (pFile, "#################################Error_distributions#########################\n");

			//////////////////////currently 11 categories
			fprintf (pFile, "F16_RE_distributions: %f %f %f %f %f %f %f %f %f %f %f\n", 
			F16_RE_distribution_1000 / (float) total_cache_line_count, 
			F16_RE_distribution_100 / (float) total_cache_line_count, 
			F16_RE_distribution_10 / (float) total_cache_line_count,
			F16_RE_distribution_1 / (float) total_cache_line_count, 
			F16_RE_distribution_01 / (float) total_cache_line_count, 
			F16_RE_distribution_001 / (float) total_cache_line_count, 
			F16_RE_distribution_0001 / (float) total_cache_line_count, 
			F16_RE_distribution_00001 / (float) total_cache_line_count, 
			F16_RE_distribution_000001 / (float) total_cache_line_count,
			F16_RE_distribution_0000001 / (float) total_cache_line_count, 
			F16_RE_distribution_0 / (float) total_cache_line_count);
			
			fprintf (pFile, "F8_RE_distributions: %f %f %f %f %f %f %f %f %f %f %f\n", 
			F8_RE_distribution_1000 / (float) total_cache_line_count, 
			F8_RE_distribution_100 / (float) total_cache_line_count, 
			F8_RE_distribution_10 / (float) total_cache_line_count,
			F8_RE_distribution_1 / (float) total_cache_line_count, 
			F8_RE_distribution_01 / (float) total_cache_line_count, 
			F8_RE_distribution_001 / (float) total_cache_line_count, 
			F8_RE_distribution_0001 / (float) total_cache_line_count, 
			F8_RE_distribution_00001 / (float) total_cache_line_count, 
			F8_RE_distribution_000001 / (float) total_cache_line_count,
			F8_RE_distribution_0000001 / (float) total_cache_line_count, 
			F8_RE_distribution_0 / (float) total_cache_line_count);
			fprintf (pFile, "\n");
			
			fprintf (pFile, "B16_RE_distributions: %f %f %f %f %f %f %f %f %f %f %f\n", 
			B16_RE_distribution_1000 / (float) total_cache_line_count, 
			B16_RE_distribution_100 / (float) total_cache_line_count, 
			B16_RE_distribution_10 / (float) total_cache_line_count,
			B16_RE_distribution_1 / (float) total_cache_line_count, 
			B16_RE_distribution_01 / (float) total_cache_line_count, 
			B16_RE_distribution_001 / (float) total_cache_line_count, 
			B16_RE_distribution_0001 / (float) total_cache_line_count, 
			B16_RE_distribution_00001 / (float) total_cache_line_count, 
			B16_RE_distribution_000001 / (float) total_cache_line_count,
			B16_RE_distribution_0000001 / (float) total_cache_line_count, 
			B16_RE_distribution_0 / (float) total_cache_line_count);
			
			fprintf (pFile, "B8_RE_distributions: %f %f %f %f %f %f %f %f %f %f %f\n", 
			B8_RE_distribution_1000 / (float) total_cache_line_count, 
			B8_RE_distribution_100 / (float) total_cache_line_count, 
			B8_RE_distribution_10 / (float) total_cache_line_count,
			B8_RE_distribution_1 / (float) total_cache_line_count, 
			B8_RE_distribution_01 / (float) total_cache_line_count, 
			B8_RE_distribution_001 / (float) total_cache_line_count, 
			B8_RE_distribution_0001 / (float) total_cache_line_count, 
			B8_RE_distribution_00001 / (float) total_cache_line_count, 
			B8_RE_distribution_000001 / (float) total_cache_line_count,
			B8_RE_distribution_0000001 / (float) total_cache_line_count, 
			B8_RE_distribution_0 / (float) total_cache_line_count);
			fprintf (pFile, "\n");
			
			fprintf (pFile, "NF16_RE_distributions: %f %f %f %f %f %f %f %f %f %f %f\n", 
			NF16_RE_distribution_1000 / (float) total_cache_line_count, 
			NF16_RE_distribution_100 / (float) total_cache_line_count, 
			NF16_RE_distribution_10 / (float) total_cache_line_count,
			NF16_RE_distribution_1 / (float) total_cache_line_count, 
			NF16_RE_distribution_01 / (float) total_cache_line_count, 
			NF16_RE_distribution_001 / (float) total_cache_line_count, 
			NF16_RE_distribution_0001 / (float) total_cache_line_count, 
			NF16_RE_distribution_00001 / (float) total_cache_line_count, 
			NF16_RE_distribution_000001 / (float) total_cache_line_count,
			NF16_RE_distribution_0000001 / (float) total_cache_line_count, 
			NF16_RE_distribution_0 / (float) total_cache_line_count);
			
			fprintf (pFile, "NF8_RE_distributions: %f %f %f %f %f %f %f %f %f %f %f\n", 
			NF8_RE_distribution_1000 / (float) total_cache_line_count, 
			NF8_RE_distribution_100 / (float) total_cache_line_count, 
			NF8_RE_distribution_10 / (float) total_cache_line_count,
			NF8_RE_distribution_1 / (float) total_cache_line_count, 
			NF8_RE_distribution_01 / (float) total_cache_line_count, 
			NF8_RE_distribution_001 / (float) total_cache_line_count, 
			NF8_RE_distribution_0001 / (float) total_cache_line_count, 
			NF8_RE_distribution_00001 / (float) total_cache_line_count, 
			NF8_RE_distribution_000001 / (float) total_cache_line_count,
			NF8_RE_distribution_0000001 / (float) total_cache_line_count, 
			NF8_RE_distribution_0 / (float) total_cache_line_count);
			fprintf (pFile, "\n");
			
			fprintf (pFile, "NB16_RE_distributions: %f %f %f %f %f %f %f %f %f %f %f\n", 
			NB16_RE_distribution_1000 / (float) total_cache_line_count, 
			NB16_RE_distribution_100 / (float) total_cache_line_count, 
			NB16_RE_distribution_10 / (float) total_cache_line_count,
			NB16_RE_distribution_1 / (float) total_cache_line_count, 
			NB16_RE_distribution_01 / (float) total_cache_line_count, 
			NB16_RE_distribution_001 / (float) total_cache_line_count, 
			NB16_RE_distribution_0001 / (float) total_cache_line_count, 
			NB16_RE_distribution_00001 / (float) total_cache_line_count, 
			NB16_RE_distribution_000001 / (float) total_cache_line_count,
			NB16_RE_distribution_0000001 / (float) total_cache_line_count, 
			NB16_RE_distribution_0 / (float) total_cache_line_count);
			
			fprintf (pFile, "NB8_RE_distributions: %f %f %f %f %f %f %f %f %f %f %f\n", 
			NB8_RE_distribution_1000 / (float) total_cache_line_count, 
			NB8_RE_distribution_100 / (float) total_cache_line_count, 
			NB8_RE_distribution_10 / (float) total_cache_line_count,
			NB8_RE_distribution_1 / (float) total_cache_line_count, 
			NB8_RE_distribution_01 / (float) total_cache_line_count, 
			NB8_RE_distribution_001 / (float) total_cache_line_count, 
			NB8_RE_distribution_0001 / (float) total_cache_line_count, 
			NB8_RE_distribution_00001 / (float) total_cache_line_count, 
			NB8_RE_distribution_000001 / (float) total_cache_line_count,
			NB8_RE_distribution_0000001 / (float) total_cache_line_count, 
			NB8_RE_distribution_0 / (float) total_cache_line_count);
			fprintf (pFile, "\n");
			
			fprintf (pFile, "IL16_RE_distributions: %f %f %f %f %f %f %f %f %f %f %f\n", 
			IL16_RE_distribution_1000 / (float) total_cache_line_count, 
			IL16_RE_distribution_100 / (float) total_cache_line_count, 
			IL16_RE_distribution_10 / (float) total_cache_line_count,
			IL16_RE_distribution_1 / (float) total_cache_line_count, 
			IL16_RE_distribution_01 / (float) total_cache_line_count, 
			IL16_RE_distribution_001 / (float) total_cache_line_count, 
			IL16_RE_distribution_0001 / (float) total_cache_line_count, 
			IL16_RE_distribution_00001 / (float) total_cache_line_count, 
			IL16_RE_distribution_000001 / (float) total_cache_line_count,
			IL16_RE_distribution_0000001 / (float) total_cache_line_count, 
			IL16_RE_distribution_0 / (float) total_cache_line_count);
			
			fprintf (pFile, "IL8_RE_distributions: %f %f %f %f %f %f %f %f %f %f %f\n", 
			IL8_RE_distribution_1000 / (float) total_cache_line_count, 
			IL8_RE_distribution_100 / (float) total_cache_line_count, 
			IL8_RE_distribution_10 / (float) total_cache_line_count,
			IL8_RE_distribution_1 / (float) total_cache_line_count, 
			IL8_RE_distribution_01 / (float) total_cache_line_count, 
			IL8_RE_distribution_001 / (float) total_cache_line_count, 
			IL8_RE_distribution_0001 / (float) total_cache_line_count, 
			IL8_RE_distribution_00001 / (float) total_cache_line_count, 
			IL8_RE_distribution_000001 / (float) total_cache_line_count,
			IL8_RE_distribution_0000001 / (float) total_cache_line_count, 
			IL8_RE_distribution_0 / (float) total_cache_line_count);
			fprintf (pFile, "\n");
			
			fprintf (pFile, "IR16_RE_distributions: %f %f %f %f %f %f %f %f %f %f %f\n", 
			IR16_RE_distribution_1000 / (float) total_cache_line_count, 
			IR16_RE_distribution_100 / (float) total_cache_line_count, 
			IR16_RE_distribution_10 / (float) total_cache_line_count,
			IR16_RE_distribution_1 / (float) total_cache_line_count, 
			IR16_RE_distribution_01 / (float) total_cache_line_count, 
			IR16_RE_distribution_001 / (float) total_cache_line_count, 
			IR16_RE_distribution_0001 / (float) total_cache_line_count, 
			IR16_RE_distribution_00001 / (float) total_cache_line_count, 
			IR16_RE_distribution_000001 / (float) total_cache_line_count,
			IR16_RE_distribution_0000001 / (float) total_cache_line_count, 
			IR16_RE_distribution_0 / (float) total_cache_line_count);
			
			fprintf (pFile, "IR8_RE_distributions: %f %f %f %f %f %f %f %f %f %f %f\n", 
			IR8_RE_distribution_1000 / (float) total_cache_line_count, 
			IR8_RE_distribution_100 / (float) total_cache_line_count, 
			IR8_RE_distribution_10 / (float) total_cache_line_count,
			IR8_RE_distribution_1 / (float) total_cache_line_count, 
			IR8_RE_distribution_01 / (float) total_cache_line_count, 
			IR8_RE_distribution_001 / (float) total_cache_line_count, 
			IR8_RE_distribution_0001 / (float) total_cache_line_count, 
			IR8_RE_distribution_00001 / (float) total_cache_line_count, 
			IR8_RE_distribution_000001 / (float) total_cache_line_count,
			IR8_RE_distribution_0000001 / (float) total_cache_line_count, 
			IR8_RE_distribution_0 / (float) total_cache_line_count);
			fprintf (pFile, "\n");
		}
		
		
		fclose (pFile);
	}
	
	
	
	return 0;
}

/////////g++ -o exp1 exp1.cpp
////////ln -s /stor1/hwang07/test/test .
//////////./test *_GPU.txt *_CPU.txt 

/////////// ./exp1 uniform_float_two_sides_1024.txt test2.txt
/////////// ./exp1 uniform_float_two_sides_1024.txt test1.txt 1
//////////// valgrind --leak-check=yes exp1 uniform_float_two_sides_1024.txt test1.txt 1

/////////// r uniform_float_two_sides_1024.txt test1.txt 1

/////////PROG=/sciclone/pscr/hwang07/bfloat_analysis/exp1
/////////ARGS="/sciclone/pscr/hwang07/bfloat_analysis/data/matlab_float/uniform_float_one_side_exp0.txt /////////////sciclone/pscr/hwang07/bfloat_analysis/results_float/uniform_float_one_side_result0.txt"

///////////   /sciclone/pscr/hwang07/bfloat_analysis/exp1 "/sciclone/pscr/hwang07/bfloat_analysis/data/matlab_float/uniform_float_one_side_exp0.txt test3.txt"


/////////////ln -s /sciclone/data10/hwang07/GPU_RESEARCH/amc/test .

////////// ./exp1 uniform_float_two_sides_1024.txt result_ut1024.txt 

////////// ./exp1 normal_float_two_sides_1024.txt result_nt1024.txt 1


///////////add high/med/low cache line count? ##ok
///////////add DBI? ##ok
/////////////////////////DBI for both number of 1s and number of flips? #yes
///////////test with int data? ##ok
///////////total for all bytes? ##not needed. easy to get.
/////////// do a full range study and draw line plot? ##ok. redo only if fixing the checks below.
/////////// re-generate the plot, do we have the same figure? ##yes
/////////// for new, why it is not symmetric around 0? is it using complement code? ##no. is it converted correctly from float? ##yes.
/////////// for int stored in int, why it is starting at 1? ##it is because int uses complement code.

/////////// study on realistic data ##ok
/////////// disable dbi and see the distribution? ##ok. Does not help. Did not see bimodel distribution. Try with int input (stored as float) together with weights (see Squeezenet)?
/////////// test for cat image only? ##ok. The image do have different center of distribution than weights.
/////////// bit flips for the first byte only? ##Maybe it is too small to consider.
/////////// add truncation and distribution of error ##ok
/////////// write extract_mnist.cc ##ok

/////////// redo 1s and flips exp since new format has been changed
/////////// add more detailed error distribution and redo exp2
/////////// if Hongyuan provides more weights later we can also redo exp2
/////////// oral thesis draft and ppt

/////////// truncation schemes: 
/////////// F32 (1, 8, 23) -> F16 (1, 5, 10) -> F8 (1, 4, 3):
/////////// F32 (1, 8, 23) -> B16 (1, 8, 7)  -> B8 (1, 5, 2):
/////////// NF32 (1, 8, 23) -> NF16 (1, 5, 10) -> NF8 (1, 4, 3): 
/////////// NF32 (1, 8, 23) -> NB16 (1, 8, 7) -> NB8 (1, 5, 2):
/////////// I32 -> IL16 -> IL8 (left)
/////////// I32 -> IR16 -> IR8 (right)

/////// F32: 127 to 1, 0 to -126 (254 to 128, 127 to 1), 0 is subnormal, 255 is inf
/////// F16: 15 to 1, 0 to -14 (30 to 16, 15 to 1), 0 is subnormal, 31 is inf
/////// F8: 7 to 1, 0 to -6 (14 to 8, 7 to 1), 0 is subnormal, 15 is inf

/////// F32: 127 to 1, 0 to -126 (254 to 128, 127 to 1), 0 is subnormal, 255 is inf
/////// B16: 127 to 1, 0 to -126 (254 to 128, 127 to 1), 0 is subnormal, 255 is inf
/////// B8: 15 to 1, 0 to -14 (30 to 16, 15 to 1), 0 is subnormal, 31 is inf

/////// NF32: 127 to 1, 0 to -126 (127 to 1, -0 to -126), 0 is subnormal, 255 is inf
/////// NF16: 15 to 1, 0 to -14 (15 to 1, -0 to -14), 0 is subnormal, 31 is inf
/////// NF8: 7 to 1, 0 to -6 (7 to 1, -0 to -6), 0 is subnormal, 15 is inf

/////// NF32: 127 to 1, 0 to -126 (127 to 1, -0 to -126), 0 is subnormal, 255 is inf
/////// NB16: 127 to 1, 0 to -126 (127 to 1, -0 to -126), 0 is subnormal, 255 is inf
/////// NB8: 15 to 1, 0 to -14 (15 to 1, -0 to -14), 0 is subnormal, 31 is inf


/////////// Steve Canon --- If BFloat16 is a good idea, BFloat8 is even better (just take the top half of a Float16).
/////////// 

/////////// it seems the current DBI implementation might be fine under our assumption about DBI:
///////////check: if the flit is inversed at the number of 1s, are we using that inversed flit for bit flips comparison? Or we still use the original flit for bit flips (Do we assume that DBI inverses back immediately after the transmission)?
///////////check: Is the history changed accordingly if flit was inversed by number of ones or number of flips (or both of them)? #history is changed for flips, ones ???. (If DBI inverses back, then ones do not change history. We are fine.)
///////////note: if inversed at the number of ones, it would affect: 1. the comparison result of flips for the current flit (bit counter reversed, distribution counter reversed). 2. the history to compared with for the next flit.


/////////// /sciclone/data10/hwang07/Tango/GPU/AlexNet/data/out_AlexNet


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








