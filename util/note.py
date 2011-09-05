#!/usr/bin/env python

import math

notes = [   
("E0" ,164.81375),
("F0" ,174.614375),
("F#0" ,184.9975),
("G0" ,195.9975),
("G#0" ,207.6525),
("A0" ,220.0),
("A#0" ,233.081875),
("B0" ,246.941875),
("C0" ,261.625625),
("C#0" ,277.1825),
("D0" ,293.665),
("D#0" ,311.126875),
("E1" ,188.358571429),
("F1" ,199.559285714),
("F#1" ,211.425714286),
("G1" ,223.997142857),
("G#1" ,237.317142857),
("A1" ,251.428571429),
("A#1" ,266.379285714),
("B1" ,282.219285714),
("C1" ,299.000714286),
("C#1" ,316.78),
("D1" ,335.617142857),
("D#1" ,355.573571429),
("E2" ,219.751666667),
("F2" ,232.819166667),
("F#2" ,246.663333333),
("G2" ,261.33),
("G#2" ,276.87),
("A2" ,293.333333333),
("A#2" ,310.775833333),
("B2" ,329.255833333),
("C2" ,348.834166667),
("C#2" ,369.576666667),
("D2" ,391.553333333),
("D#2" ,414.835833333),
("E3" ,263.702),
("F3" ,279.383),
("F#3" ,295.996),
("G3" ,313.596),
("G#3" ,332.244),
("A3" ,352.0),
("A#3" ,372.931),
("B3" ,395.107),
("C3" ,418.601),
("C#3" ,443.492),
("D3" ,469.864),
("D#3" ,497.803),
("E4" ,329.6275),
("F4" ,349.22875),
("F#4" ,369.995),
("G4" ,391.995),
("G#4" ,415.305),
("A4" ,440.0),
("A#4" ,466.16375),
("B4" ,493.88375),
("C4" ,523.25125),
("C#4" ,554.365),
("D4" ,587.33),
("D#4" ,622.25375),
("E5" ,439.503333333),
("F5" ,465.638333333),
("F#5" ,493.326666667),
("G5" ,522.66),
("G#5" ,553.74),
("A5" ,586.666666667),
("A#5" ,621.551666667),
("B5" ,658.511666667),
("C5" ,697.668333333),
("C#5" ,739.153333333),
("D5" ,783.106666667),
("D#5" ,829.671666667),
("E6" ,659.255),
("F6" ,698.4575),
("F#6" ,739.99),
("G6" ,783.99),
("G#6" ,830.61),
("A6" ,880.0),
("A#6" ,932.3275),
("B6" ,987.7675),
("C6" ,1046.5025),
("C#6" ,1108.73),
("D6" ,1174.66),
("D#6" ,1244.5075),
("E7" ,1318.51),
("F7" ,1396.915),
("F#7" ,1479.98),
("G7" ,1567.98),
("G#7" ,1661.22),
("A7" ,1760.0),
("A#7" ,1864.655),
("B7" ,1975.535),
("C7" ,2093.005),
("C#7" ,2217.46),
("D7" ,2349.32),
("D#7" ,2489.015),
("E8" ,2637.02),
("F8" ,2793.83),
("F#8" ,2959.96),
("G8" ,3135.96),
("G#8" ,3322.44),
("A8" ,3520.0),
("A#8" ,3729.31),
("B8" ,3951.07),
("C8" ,4186.01),
("C#8" ,4434.92),
("D8" ,4698.64),
("D#8" ,4978.03)
]

address_range = 1024
address_jump = {8:8,7:4,6:2,5:1,4:1,3:1,2:1,1:1,0:1}

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
