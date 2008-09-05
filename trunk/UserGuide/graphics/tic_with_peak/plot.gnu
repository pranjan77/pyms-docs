# plot.gnu
#
# Usage:
#     $ gnuplot plot.gnu
#
# This script was executed in pyms-test/01/output/ to create
# tic_with_peak.fig
#

set term fig
set output 'tic_with_peak.fig'

set xrange [5.5:8.0]
set yrange [0:1e7]

set xlabel 'retentione time [min]'
set ylabel 'Intensity'

plot 'tic.dat' using 1:2 notitle w l

