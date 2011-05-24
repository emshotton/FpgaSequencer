#!/usr/bin/env python

import math

notes = [   ("E" ,2637.02),
            ("F" ,2793.83),
            ("F#",2959.96),
            ("G" ,3135.96),
            ("G#",3322.44),
            ("A" ,3520.00),
            ("A#",3729.31),
            ("B" ,3951.07),
            ("C" ,4186.01),
            ("C#",4434.92),
            ("D" ,4698.64),
            ("D#",4978.03)]

def calc_running_freq(notes):
    running_freq = []
    for i in notes:
        running_freq.append(i[1]*128)
    return running_freq

def calc_clock_divisor(notes,clock_freq):
    divisors = []
    run_freqs = calc_running_freq(notes)
    for i in run_freqs:
        divisors.append(round(float(clock_freq)/i))
    return divisors


def calc_synthesised_freq(notes,clock_freq):
    synth_freq = []
    divisors = calc_clock_divisor(notes,clock_freq)
    for i in range(len(divisors)):
        synth_freq.append(float(float(float(clock_freq)/float(divisors[i]))/128))
    return synth_freq

def calc_synth_error(notes,clock_freq):
    error = []
    synth_freq = calc_synthesised_freq(notes,clock_freq)
    for i in range(len(notes)):
        error.append(math.fabs(notes[i][1]-synth_freq[i]))
    return error

def calc_avg_synth_error(notes,clock_freq):
    error = float(0)
    synth_freq = calc_synthesised_freq(notes, clock_freq)
    for i in range(len(notes)):
        error += math.fabs(notes[i][1]-synth_freq[i])
        
    error = error / len(notes)
    return error
    

frequency = 42000000

print "Frequency: "+str(frequency)

print "Error: "+str(calc_avg_synth_error(notes,frequency))

print "Clock Divisors: "+str(calc_clock_divisor(notes,frequency))
print "Errors:         "+str(calc_synth_error(notes,frequency))
#for i in range(5000000,50000000):
#    val=calc_avg_synth_error(notes,i)
#    if val < min:
#        min = val
#        result = i
#        print "Error: " + str(min) + " Freq: " + str(result)
#        
#print result
#print min
