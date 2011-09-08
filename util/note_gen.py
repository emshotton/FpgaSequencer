#!/usr/bin/env python

import math

note_base = [   
("C ", 4 ,261.63),
("C#", 4 ,277.18),
("D ", 4 ,293.66),
("D#", 4 ,311.13),
("E ", 4 ,329.63),
("F ", 4 ,349.23),
("F#", 4 ,369.99),
("G ", 4 ,392.00),
("G#", 4 ,415.30),
("A ", 4 ,440.00),
("A#", 4 ,466.16),
("B ", 4 ,493.88)
]
note_mult={-1:1.0/32.0 , 0:1.0/16.0, 1:1.0/8.0 ,2:1.0/4.0, 3:1.0/2.0, 4:1.0, 5:2.0, 6:4.0, 7:8.0, 8:16.0, 9:32.0}

notes = []
address_range = 1024
clock_frequency = 42000000
#address_jump = {9:8,8:8,7:4,6:2,5:1,4:1,3:1,2:1,1:1,0:1,-1:1}

#Generate the notes
for i in range(-1,10):
    for j in note_base:
	note = (j[0],i,j[2]*note_mult[i])
	notes.append(note)
for i in range(4):
    notes.pop(len(notes)-1)

print "memory_initialization_radix=16;"
print "memory_initialization_vector="
count =0
for i in notes:
    #calculate nearest available running frequency
    min_error =1000000
    min_error_VHDL_dividor = 0
    closest_freq =0
    best_address_jump =0
    error =1000000


    for k in range(1,16):	
        #required_running_frequency = (address_range/address_jump[i[1]])*i[2]
        required_running_frequency = (address_range/k)*i[2]

        for j in range(2048*2-2):
            div = j+1
            freq = float(clock_frequency)/float(div)
            error = math.fabs(required_running_frequency - freq)
     	    if (error < min_error):
                min_error = error
                min_error_VHDL_dividor = j
                closest_freq = freq
		best_address_jump = k

    closest_note_freq = (closest_freq/(address_range/best_address_jump))

    note_freq_error = math.fabs(i[2] -  closest_note_freq )

#    print "note:                   " + i[0] + str(i[1])
#    print "note frequency:         " + str(i[2])
#    print "closest note frequency: " + str(closest_note_freq)
#    print "ideal dividor:          " + str(required_running_frequency) 
#    print "closest dividor:        " + str(closest_freq)
#    print "address jump value:     " + str(best_address_jump)#str(address_jump[i[1]])
#    print "note frequency error:   " + str(note_freq_error)
#    print "------------Raw Info-----------"
#    print "clock_dividor:          " + str(min_error_VHDL_dividor)
#    print "address_jump:           " + str(best_address_jump)

    st = hex((min_error_VHDL_dividor*16)+best_address_jump)
    st = st[2:]
    while (len(st)<4):
        st = "0"+st

    if (count == (len(notes)-1)):
	st = st + ";"
    else:
    	st = st+","
    print st
    count = count + 1

quit()









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
