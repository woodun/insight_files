#include <stdio.h>
#include<iostream>
#include<fstream>
#include<string>
#include <fstream>
#include <math.h>
#include <cmath>
#include <stdlib.h>
#include <sstream>


using namespace std;

int main ( int argc, char *argv[] ) {
	
	typedef union {
		float f_;
		unsigned u_;
		int i_;		
	} FloatBits;
	
	FloatBits bit_converter;

	std::FILE * pFile = fopen ("Results.txt","w");
	if ( argc < 2 ){
		
		fprintf (pFile, "error");
	}else {
		
		ifstream GPU_result ( argv[1] );		
		
		if ( !GPU_result.is_open() ){
			
			fprintf (pFile, "error");
		}else{			
			
			//if( std::strcmp( argv[1], "GESUMMV_GPU.txt" ) == 0 ){			
			
			//}			
			
			float gpu_number_float;
			int gpu_number_int;
			float gpu_number_new;
			
			unsigned number_of_ones_array_float[1024]; ///////////////8 bits per byte * 4B per float * 8 float per flit * 4 flits = 1024
			unsigned number_of_bit_flips_array_float[1024]; ////////////////8 bits per byte * 4B per float * 8 float per flit * 3 flits = 768 (only three flips with four flits)
			unsigned number_of_ones_array_int[1024]; 
			unsigned number_of_bit_flips_array_int[1024]; 
			unsigned number_of_ones_array_new[1024];
			unsigned number_of_bit_flips_array_new[1024];
			
			for(int m = 0; m < 1024; ++m){
				number_of_ones_array = 0;
			}			
			for(int m = 0; m < 1024; ++m){
				number_of_bit_flips_array = 0;
			}
			
			unsigned total_cache_line_count = 0;
			unsigned total_flit_count = 0;
			unsigned total_float_count = 0;
			
			std::bitset<32> temp_flit_byte_array[8]; //////////////4B per float * 8 float per flit = 32B
			unsigned temp_float_count = 0; ///////////float count within flit
			unsigned temp_flit_count = 0; ///////////flit count within cache line
			unsigned temp_bit_count = 0; ///////////bit count within cache line
			std::bitset<32> temp_flit_byte;			

			std::string   gpu_line;
			
			//while( std::getline(GPU_result, gpu_line, ' ') ) {
			while( std::getline(GPU_result, gpu_line) ) {
				std::stringstream  gpu_lineStream_float(gpu_line);
				std::stringstream  gpu_lineStream_int(gpu_line);
				std::stringstream  gpu_lineStream_new(gpu_line);
				
				// Read an integer at a time from the line
				while(gpu_lineStream_float >> gpu_number_float) {						
					//fprintf (pFile, "gpu:%f\n", gpu_number_float);
					
					//////////////////////////////////////////////ieee float format
					bit_converter.f_ = gpu_number_float;
					temp_flit_byte = bitset<32>(bit_converter.u_);					
					
					////////////check the number of 1s
					for(int i_bit = 31; i_bit >= 0; --i_bit){ ////////////bitset is little endian
						if(temp_flit_byte[i_bit] == 1){ 
							number_of_ones_array_float[temp_bit_count + 31 - i_bit]++;
						}
					}				
					
					////////////check bitflips
					if(temp_flit_count > 0){/////////only flit 1, 2, 3's flip can be counted.
						for(int i_bit = 31; i_bit >= 0; --i_bit){ ////////////bitset is little endian
							if(temp_flit_byte[i_bit] != temp_flit_byte_array[temp_float_count][i_bit]){
								number_of_bit_flips_array_float[temp_bit_count + 31 - i_bit]++;
							}
						}
					}					
					
					
					//////////////////////////////////////////////ieee int format ////////float can read int, int cannot read float.
					//////////////////////////////////////////////////////////////////////the '.' as an unidentifiable character will be read as 0, and set EOL.
					//////////////////////////////////////////////////////////////////////so ignore int results when using float data. 
					//////////////////////////////////////////////////////////////////////but float result is validate when using int data.
					gpu_lineStream_int >> gpu_number_int;
					
					bit_converter.i_ = gpu_number_float;//////////todo
					temp_flit_byte = bitset<32>(bit_converter.u_);					
					
					////////////check the number of 1s
					for(int i_bit = 31; i_bit >= 0; --i_bit){ ////////////bitset is little endian
						if(temp_flit_byte[i_bit] == 1){ 
							number_of_ones_array_float[temp_bit_count + 31 - i_bit]++;
						}
					}				
					
					////////////check bitflips
					if(temp_flit_count > 0){/////////only flit 1, 2, 3's flip can be counted.
						for(int i_bit = 31; i_bit >= 0; --i_bit){ ////////////bitset is little endian
							if(temp_flit_byte[i_bit] != temp_flit_byte_array[temp_float_count][i_bit]){
								number_of_bit_flips_array_float[temp_bit_count + 31 - i_bit]++;
							}
						}
					}
					
				
					//////////////////////////////////////////////new float format /////////same precision as float
					gpu_lineStream_new >> gpu_number_new;
					
					bit_converter.f_ = gpu_number_float;
					temp_flit_byte = bitset<32>(bit_converter.u_);					
					
					////////////check the number of 1s
					for(int i_bit = 31; i_bit >= 0; --i_bit){ ////////////bitset is little endian
						if(temp_flit_byte[i_bit] == 1){ 
							number_of_ones_array_float[temp_bit_count + 31 - i_bit]++;
						}
					}				
					
					////////////check bitflips
					if(temp_flit_count > 0){/////////only flit 1, 2, 3's flip can be counted.
						for(int i_bit = 31; i_bit >= 0; --i_bit){ ////////////bitset is little endian
							if(temp_flit_byte[i_bit] != temp_flit_byte_array[temp_float_count][i_bit]){
								number_of_bit_flips_array_float[temp_bit_count + 31 - i_bit]++;
							}
						}
					}
					
					///////////////////////////////////////////////////////////////////update history flit bits
					temp_flit_byte_array[temp_float_count] = temp_flit_byte;
					
					/////////////next indices
					if(temp_float_count == 7){
						total_flit_count++;		
						temp_flit_count	= total_flit_count % 4;				
					}
					
					total_float_count++;
					temp_float_count = total_float_count % 8;
					temp_bit_count = ( total_float_count % 32 ) * 32;
				}
			}
			
			//read_count = read_count - 1; ////////why -1 ?
			
			fprintf (pFile, "inf:%d\n", read_count_inf );
		}
	}
	
	fclose (pFile);
	
	return 0;
}

/////////g++ -o test test.cpp
////////ln -s /stor1/hwang07/test/test .
//////////./test *_GPU.txt *_CPU.txt 

/////////////ln -s /sciclone/data10/hwang07/GPU_RESEARCH/amc/test .



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








