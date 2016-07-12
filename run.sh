./counter.sh > blockread.dat &
mkfifo pipe &
while [ 1 ]; do tail -64 blockread.dat> pipe; done &
watch -n 1 'gnuplot -e "set yrange [0:500];set terminal dumb;p \"blockread.dat\" with lines"'
