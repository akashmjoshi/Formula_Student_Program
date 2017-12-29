bestsave on
rule pcb (width 0.010000)
rule pcb (clearance 0.008000)
rule pcb (clearance 0.040000 (type via_area))
rule pcb (clearance 0.040000 (type wire_area))
bus diagonal
fanout 5
route 20
clean 2
route 25 16
clean 2
filter 5
recorner diagonal
unit inch
recorner diagonal 1 1 1
recorner diagonal .5 .5 .5
recorner diagonal .25 .25 .25
recorner diagonal .2 .2 .2
recorner diagonal .1 .1 .1
recorner diagonal .05 .05 .05
recorner diagonal .025 .025 .025
write script U:/Electronics/ORION 2013/PCB/SWPCB/display.scr 
status_file
