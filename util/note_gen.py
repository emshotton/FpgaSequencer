#!/usr/bin/env python

import math

notes = [   
("E ", 4 ,329.6275),
("F ", 4 ,349.22875),
("F#", 4 ,369.995),
("G ", 4 ,391.995),
("G#", 4 ,415.305),
("A ", 4 ,440.0),
("A#", 4 ,466.16375),
("B ", 4 ,493.88375),
("C ", 4 ,523.25125),
("C#", 4 ,554.365),
("D ", 4 ,587.33),
("D#", 4 ,622.25375)
]
address_range = 1024
clock_frequency = 42000000
address_jump = {9:8,8:8,7:4,6:2,5:1,4:1,3:1,2:1,1:1,0:1,-1:1}

















def calc_running_freq(notes,address_sizes):
    running_freq = []
    for i in range(len(notes)):
        running_freq.append(notes[i][1]*   address_sizes[i]   )
    return running_freq

def calc_clock_divisor(notes,clock_freq,run_freqs):
    divisors = []
    #run_freqs = calc_running_freq(notes)
    for i in run_freqs:
        divisors.append(round(float(clock_freq)/i))
    return divisors


def calc_synthesised_freq(notes,clock_freq,divisors,address_sizes):
    synth_freq = []
    #divisors = calc_clock_divisor(notes,clock_freq)
    for i in range(len(divisors)):
        synth_freq.append(float(float(float(clock_freq)/float(divisors[i]))/   address_sizes[i]  ))
    return synth_freq

def calc_synth_error(notes,clock_freq, synth_freq):
    error = []
    #synth_freq = calc_synthesised_freq(notes,clock_freq,divisors)
    for i in range(len(notes)):
        error.append(math.fabs(notes[i][1]-synth_freq[i]))
    return error

def calc_avg_synth_error(notes,clock_freq , synth_freq):
    error = float(0)
    #synth_freq = calc_synthesised_freq(notes, clock_freq,divisors)
    for i in range(len(notes)):
        error += math.fabs(notes[i][1]-synth_freq[i])
        
    error = error / len(notes)
    return error
    

address_sizes = []


for i in notes:
    divisor = address_jump[ int(i[0][len(i[0])-1] ) ] 
    add = address_range/divisor
    address_sizes.append(add)



frequency = 42000000

running_frequencys = calc_running_freq(notes,address_sizes)
divisors = calc_clock_divisor(notes,frequency,running_frequencys)
synth_frequencys = calc_synthesised_freq(notes,frequency,divisors,address_sizes)



print len(notes)
print len(address_sizes)
print len(divisors)
print len(running_frequencys)
print len(synth_frequencys)


print "Frequency: "+str(frequency)

print "Error: "+str(calc_avg_synth_error(notes,frequency, synth_frequencys))

print "Clock Divisors: "+str(divisors)
print "Errors:         "+str(calc_synth_error(notes,frequency, synth_frequencys))
#for i in range(5000000,50000000):
#    val=calc_avg_synth_error(notes,i)
#    if val < min:
#        min = val
#        result = i
#        print "Error: " + str(min) + " Freq: " + str(result)
#        
#print result
#print min
