containers=( "./attacker" )


for i in "${containers[@]}"
do
   cat $i/run.sh
done