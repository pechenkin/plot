i=$(./inl -u SYSTEM/MANAGER -t -q -f counter.sql | head -4 | tail -1 | cut -c 2-21)
t=0
while [ 1 ]
do
    j=$(./inl -u SYSTEM/MANAGER -t -q -f counter.sql | head -4 | tail -1 | cut -c 2-21)
    t=$(expr $t + 1)
    echo -n $t " "
    expr $j - $i
    i=$j
    sleep 1
done