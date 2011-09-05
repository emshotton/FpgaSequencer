#!/usr/bin/env python

import math

def to_hex(val):
    pass


if __name__ == "__main__":
    num_samples = 1024
    num_bits = 16 
    result = ""
    print "memory_initialization_radix=16;"
    print "memory_initialization_vector="
    for i in range(num_samples):
        k = float(i)/float(num_samples)*360
        val = math.sin(math.radians(k))
        #normalise to bit size
        val = val*((math.pow(2,num_bits)-1)/2)
        val = int(val + ((math.pow(2,num_bits)-1)/2))
        str = hex(val)
        str = str[2:]

        if len(str) < 4:
            for j in range(4-len(str)):
                str = '0' + str

        #str = "x\""+str+"\","
	
	if (i == 1023 ):
            str = str + ";\n"
	else:
            str = str+",\n"
    	
        result +=  str
    print result
