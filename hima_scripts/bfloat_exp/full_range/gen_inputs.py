import sys, time, random

for exp_name in range(-126, 129):
    
    f = open("/sciclone/pscr/hwang07/bfloat_analysis/data/py_float/uniform_float_two_sides_exp" + str(exp_name) + ".txt","w")
    
    randrange = -2 ** exp_name;
    random.seed(16)
    
    for x in range(0, 16384):
		for y in range(0, 32):
			randfloat = random.uniform(randrange, -randrange)
#			print("%0.32f " % randfloat, end="", file = f)      
			f.write(str(randfloat) + " ")
		f.write("\n")
    
    f.close()
  
  
for exp_name in range(0, 32):
    
    f = open("/sciclone/pscr/hwang07/bfloat_analysis/data/py_int/uniform_int_two_sides_exp" + str(exp_name) + ".txt","w")
    
    randrange = -2 ** exp_name;
    random.seed(16)
    
    for x in range(0, 16384):
		for y in range(0, 32):
			randint = random.randint(randrange, -randrange)
#			print("%0.32f " % randint, end="", file = f)
			f.write(str(randint) + " ")
		f.write("\n")

    f.close()