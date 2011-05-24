#!/usr/bin/env python

import math

def to_hex(val):
    pass




if __name__ == "__main__":
    print ("main!")
    num_samples = 256
    result = ""
    max_count = (num_samples)/2 
    count = 0
    direction = 0
    c =0

    for i in range(num_samples):
#        k = float(i)/float(num_samples)*360
#        val = math.sin(math.radians(k))
#        num_bits = 8 
        #normalise to bit size
#        val = val*((math.pow(2,num_bits)-1)/2)
#        val = int(val + ((math.pow(2,num_bits)-1)/2))
#        str = hex(val)
#        str = str[2:]

        c+=1


        if direction == 0 : 
            count +=1

        if direction == 1 :
            count -=1

        if count == max_count:
            direction = 1

        
        if count < 0:
            print "OH GOD THERES AN ERROR!!!"

        str = hex(count*2)
        str = str[2:]

        if len(str) < 4:
            for j in range(2-len(str)):
                str = '0' + str

        str = "x\""+str+"\","
        result +=  str
    print result
    print c
