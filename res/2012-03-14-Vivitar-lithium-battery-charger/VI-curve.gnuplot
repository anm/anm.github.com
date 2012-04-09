set terminal png
set output "VI-curve.png"

set xrange [0:200]
set yrange [0:1]
set y2range [0:9]

set ylabel "Current (A)"
set y2label "Voltage (V)"
set xlabel "Load (Ohms)"

set ytics nomirror
set y2tics

plot "./VI-curve" using 1:2 axes x1y1 title "I" with lines, \
     "./VI-curve" using 1:3 axes x1y2 title "V" with lines