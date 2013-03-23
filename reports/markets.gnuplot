set title "Software market segments size in 2011"
#set auto x
set yrange [0:310]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set xtic rotate by -45 scale 0 font ",8"
#set bmargin 10
set term postscript eps
set output 'markets.eps'
plot 'markets.dat' using 2:xtic(1) ti "Size ($bn)" linecolor rgb "#CCCCCC"