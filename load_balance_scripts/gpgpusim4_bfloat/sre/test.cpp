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

int main ( int argc, char *argv[] )
{
	std::FILE * pFile = fopen ("RE.txt","w");
	if ( argc != 3 ){
		
		fprintf (pFile, "error");
	}else {
		
		ifstream GPU_result ( argv[1] );
		ifstream CPU_result ( argv[2] );
		
		if ( !GPU_result.is_open() || !CPU_result.is_open() ){
			
			fprintf (pFile, "error");
		}else{
			
			int threshold = 10;
			//if( std::strcmp( argv[1], "GESUMMV_GPU.txt" ) == 0 ){
			
			//}
			
			
			double gpu_number = 0;
			double cpu_number = 0;
			double SRE = 0;
			double SRE_reduced = 0;
			double SRE_reduced2 = 0;
			int read_count = 0;	
			int read_count_nan = 0;
			int read_count_large = 0;
			int reduction_count = 0;	
			
			int read_count_inf = 0;
			int read_count10000000 = 0;
			int read_count5000000 = 0;
			int read_count1000000 = 0;
			int read_count500000 = 0;
			int read_count100000 = 0;
			int read_count50000 = 0;
			int read_count10000 = 0;	
			int read_count5000 = 0;			
			int read_count1000 = 0;
			int read_count500 = 0;
			int read_count100 = 0;	
			int read_count50 = 0;
			int read_count10 = 0;
			int read_count5 = 0;
			int read_count1 = 0;
			int read_count_exact1 = 0;
			int read_count09 = 0;
			int read_count08 = 0;
			int read_count07 = 0;
			int read_count06 = 0;
			int read_count05 = 0;
			int read_count04 = 0;
			int read_count03 = 0;
			int read_count02 = 0;			
			int read_count01 = 0;
			int read_count005 = 0;
			int read_count001 = 0;
			
			int read_count_exact = 0;	
			int read_count_good	= 0;

/////////////////////////////////////////////////////diff
			int diff_read_count_all = 0;	
			int diff_read_count_reduced	= 0;
			int diff_read_count_reduced2 = 0;
			double diff_reduced = 0;
			double diff_reduced2 = 0;
			double diff_all = 0;
			
			std::string   cpu_line;
			std::string   gpu_line;
			
			while(std::getline(CPU_result, cpu_line, ' '))
			{				
				std::getline(GPU_result, gpu_line, ' ');
				
				std::stringstream  cpu_lineStream(cpu_line);
				std::stringstream  gpu_lineStream(gpu_line);
				
				// Read an integer at a time from the line
				while(cpu_lineStream >> cpu_number)
				{
					gpu_lineStream >> gpu_number;
					
					double abs_RE = std::abs( ( gpu_number - cpu_number ) / cpu_number );
					double abs_RE_reduced = abs_RE;
					double abs_RE_reduced2 = abs_RE;
					
					//fprintf (pFile, "gpu:%f, cpu:%f, RE:%f\n", gpu_number, cpu_number, abs_RE);
					

					/////////////////////////
					
					if( gpu_number == 0 && cpu_number == 0 ){
						
						read_count_exact++;
					}else if ( isnan(abs_RE) || isinf(abs_RE) ){
						
						read_count_inf++;
					}else if( abs_RE > 10000000 ){
						
						read_count10000000++;
					}else if( abs_RE > 5000000 ){
						
						read_count5000000++;
					}else if( abs_RE > 1000000 ){
						
						read_count1000000++;
					}else if( abs_RE > 500000 ){
						
						read_count500000++;
					}else if( abs_RE > 100000 ){
						
						read_count100000++;
					}else if( abs_RE > 50000 ){
						
						read_count50000++;
					}else if( abs_RE > 10000 ){
						
						read_count10000++;
					}else if( abs_RE > 5000 ){
						
						read_count5000++;
					}else if( abs_RE > 1000 ){
						
						read_count1000++;
					}else if( abs_RE > 500 ){
						
						read_count500++;
					}else if( abs_RE > 100 ){
						
						read_count100++;
					}else if( abs_RE > 50 ){
						
						read_count50++;
					}else if( abs_RE > 10 ){
						
						read_count10++;
					}else if( abs_RE > 5 ){
						
						read_count5++;
					}else if( abs_RE > 1 ){
						
						read_count1++;
					}else if( abs_RE == 1 ){
						
						read_count_exact1++;
					}else if( abs_RE > 0.9 ){
						
						read_count09++;
					}else if( abs_RE > 0.8 ){
						
						read_count08++;
					}else if( abs_RE > 0.7 ){
						
						read_count07++;
					}else if( abs_RE > 0.6 ){
						
						read_count06++;
					}else if( abs_RE > 0.5 ){
						
						read_count05++;
					}else if( abs_RE > 0.4 ){
						
						read_count04++;
					}else if( abs_RE > 0.3 ){
						
						read_count03++;
					}else if( abs_RE > 0.2 ){
						
						read_count02++;
					}else if( abs_RE > 0.1 ){
						
						read_count01++;
					}else if( abs_RE > 0.05 ){
						
						read_count05++;
					}else if( abs_RE > 0.01 ){
						
						read_count001++;
					}else if (abs_RE == 0){
						
						read_count_exact++;
					}else{
						
						read_count_good++;//0.01>  >0
					}
					
					
					if( gpu_number != 0 && cpu_number == 0 ){
						
						reduction_count++;
						abs_RE_reduced2 = 0;
					}else if( gpu_number = 0 && cpu_number != 0 ){
						
						reduction_count++;
						abs_RE_reduced2 = 0;
					}else if ( isnan(abs_RE) || isinf(abs_RE) ){
						
						reduction_count++;
						abs_RE_reduced2 = 0;
					}
					
					
					if( gpu_number == 0 && cpu_number == 0 ){
						
						abs_RE = 0;
						abs_RE_reduced = 0;
						abs_RE_reduced2 = 0;
					}else if ( isnan(abs_RE) || isinf(abs_RE) ){
						
						abs_RE = 1;
						abs_RE_reduced = 1;
						abs_RE_reduced2 = 0;						
						read_count_nan++;					
					}else if ( abs_RE > 1 ){
						
						abs_RE_reduced = 1;	
						abs_RE_reduced2 = 0;						
						read_count_large++;					
					}
					
					//fprintf (pFile, "%f\n", abs_RE );
					
					SRE_reduced += abs_RE_reduced;
					SRE_reduced2 += abs_RE_reduced2;
					SRE += abs_RE;
					read_count++;			

/////////////////////////////////////////////////////////////////////////diff
					double abs_diff = std::abs( gpu_number - cpu_number );
					double abs_diff_reduced = abs_diff;
					double abs_diff_reduced2 = abs_diff;

					
					if ( !isnan(abs_diff) && !isinf(abs_diff) ){
						diff_read_count_all++;
				        diff_all += abs_diff;
					}
					
					if ( !isnan(abs_diff_reduced) && !isinf(abs_diff_reduced) && abs_diff_reduced <= 1000){
						diff_read_count_reduced++;
						diff_reduced += abs_diff_reduced;				
					}
					
					if ( !isnan(abs_diff_reduced2) && !isinf(abs_diff_reduced2) && abs_diff_reduced2 <= 1000){
						diff_read_count_reduced2++;
						diff_reduced2 += abs_diff_reduced2;
					}else{
						diff_read_count_reduced2++;
						diff_reduced2 += 1000;
					}
				}
			}	
			
			read_count = read_count - 1;
			read_count_exact = read_count_exact - 1;
			
			fprintf (pFile, "inf:%d\n", read_count_inf );
			fprintf (pFile, " >10000000:%d\n", read_count10000000 );
			fprintf (pFile, "10000000> >5000000:%d\n", read_count5000000 );
			fprintf (pFile, "5000000> >1000000:%d\n", read_count1000000 );
			fprintf (pFile, "1000000> >500000:%d\n", read_count500000 );
			fprintf (pFile, "500000> >100000:%d\n", read_count100000 );
			fprintf (pFile, "100000> >50000:%d\n", read_count50000 );
			fprintf (pFile, "50000> >10000:%d\n", read_count10000 );
			fprintf (pFile, "10000> >5000:%d\n", read_count5000 );
			fprintf (pFile, "5000> >1000:%d\n", read_count1000 );
			fprintf (pFile, "1000> >500:%d\n", read_count500 );
			fprintf (pFile, "500> >100:%d\n", read_count100 );
			fprintf (pFile, "100> >50:%d\n", read_count50 );
			fprintf (pFile, "50> >10:%d\n", read_count10 );
			fprintf (pFile, "10> >5:%d\n", read_count5 );
			fprintf (pFile, "5> >1:%d\n", read_count1 );
			fprintf (pFile, "=1:%d\n", read_count_exact1 );
			fprintf (pFile, "1> >0.9:%d\n", read_count09 );
			fprintf (pFile, "0.9> >0.8:%d\n", read_count08 );
			fprintf (pFile, "0.8> >0.7:%d\n", read_count07 );
			fprintf (pFile, "0.7> >0.6:%d\n", read_count06 );
			fprintf (pFile, "0.6> >0.5:%d\n", read_count05 );
			fprintf (pFile, "0.5> >0.4:%d\n", read_count04 );
			fprintf (pFile, "0.4> >0.3:%d\n", read_count03 );
			fprintf (pFile, "0.3> >0.2:%d\n", read_count02 );
			fprintf (pFile, "0.2> >0.1:%d\n", read_count01 );
			fprintf (pFile, "0.1> >0.05:%d\n", read_count005 );
			fprintf (pFile, "0.05> >0.01:%d\n", read_count001 );
			fprintf (pFile, "0.01> >0:%d\n", read_count_good );
			fprintf (pFile, "=0:%d\n", read_count_exact );
			
			fprintf (pFile, "nan number:%d\n", read_count_nan );		
			fprintf (pFile, "large number:%d\n", read_count_large );
			fprintf (pFile, "all number:%d\n", read_count );			
			fprintf (pFile, "RE:%f\n", 100 * SRE_reduced / read_count );			
			fprintf (pFile, "RE1:%f\n", 100 * ( (double)( read_count_exact + read_count_good ) / (double)read_count ) );
			fprintf (pFile, "RE2:%f\n", 100 * ( (double)( read_count_exact + read_count_good + read_count001 ) / (double)read_count ) );
			fprintf (pFile, "RE3:%f\n", 100 * ( (double)( read_count_exact ) / (double)read_count ) );
			fprintf (pFile, "RE4:%f\n", 100 * SRE / read_count );
			fprintf (pFile, "RE5:%f\n", 100 * ( (double)( read_count_exact + read_count_good + read_count001 ) / (double)( read_count - reduction_count ) ) );
			fprintf (pFile, "RE6:%f\n", 100 * SRE_reduced2 / ( read_count - reduction_count ) );
			fprintf (pFile, "RE7:%f\n", 100 * SRE_reduced2 / ( read_count - reduction_count - read_count_large ) );			
			fprintf (pFile, "RE8:%f\n", 100 * SRE_reduced2 / ( read_count ) );
			
/////////////////////////////////////////////////////////////////////////diff
            fprintf (pFile, "diff:%f\n", 100 * diff_all / diff_read_count_all );
			fprintf (pFile, "diff1:%f\n", 100 * diff_reduced / diff_read_count_reduced );
			fprintf (pFile, "diff2:%f\n", 100 * diff_reduced2 / diff_read_count_reduced2 );
		}		
	}
	
	fclose (pFile);
	
	return 0;
}

/////////g++ -o test test.cpp
////////ln -s /stor1/hwang07/test/test .
//////////./test *_GPU.txt *_CPU.txt 
//////////// ./test *_GPU.txt /stor1/hwang07/asap/baseline/tsp_address_exp_gtoswl48_alloff_wattch1/shoc/Triad/*_GPU.txt
////////////  ./test *_GPU.txt /stor1/hwang07/asap/baseline/tsp_address_exp_gtoswl48_alloff_wattch1/shoc/Scan/*_GPU.txt
////////////  ./test *_GPU.txt /stor1/hwang07/asap/baseline/tsp_address_exp_gtoswl48_alloff_wattch1/rodinia/nw/*_GPU.txt
//////////stor1/hwang07/asap/baseline/tsp_address_exp_gtoswl48_alloff_wattch1/shoc/Reduction
///////// /stor2/hwang07/applications_modified/benchmarks/shoc/bin/Serial/CUDA/Scan
///////// /stor2/hwang07/applications_modified/benchmarks/shoc/bin/Serial/CUDA/Reduction
///////////   ./test *_GPU.txt /stor1/hwang07/asap/baseline/tsp_address_exp_gtoswl48_alloff_wattch1/Mars/MatrixMul/*_GPU.txt















