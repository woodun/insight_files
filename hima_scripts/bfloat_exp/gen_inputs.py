for exp_name in range(-126, 129):
     
    f = open("C:/Users/haona/Desktop/bfloat_collection/new_float_py/uniform_float_two_sides_exp" + str(exp_name) + ".txt","w")
     
    randrange = -2 ** exp_name;
    random.seed(0)
     
    if exp_name == 128:
        for x in range(0, 10):
            randfloat = random.uniform(randrange + 2 ** 104, -randrange - 2 ** 104)
    #         print("%0.32f " % randfloat, end="", file = f)
            f.write(str(randfloat) + " ")
    else:
        for x in range(0, 10):
            randfloat = random.uniform(randrange, -randrange)
    #         print("%0.32f " % randfloat, end="", file = f)      
            f.write(str(randfloat) + " ")
     
    f.close()
   
   
for exp_name in range(0, 32):
     
    f = open("C:/Users/haona/Desktop/bfloat_collection/new_int_py/uniform_int_two_sides_exp" + str(exp_name) + ".txt","w")
     
    randrange = -2 ** exp_name;
    random.seed(0)
     
    if exp_name == 31:
        for x in range(0, 10):
            randint = random.randint(randrange, -randrange - 1)
#             print("%0.32f " % randint, end="", file = f)
            f.write(str(randint) + " ")
    else:
            randint = random.randint(randrange, -randrange)
#             print("%0.32f " % randint, end="", file = f)
            f.write(str(randint) + " ")
       
    f.close()