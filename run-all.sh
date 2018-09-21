#run extraction passed to identify function names for the combination generator
sh coverage-improver.sh 
#extract filter fils (i.e. combinations) from the list of available function names
sh combinator.sh
#generate SC+OH+SROH protected binaries
bash generator.sh fdcontinue
if [ $? -eq 0 ]; then

	echo 'OK OH/SROH/SC generator'

else

	echo 'FAIL OH/SROH/SC generator'

	exit    

fi  
#generate SC protected binaries
bash generator-sc.sh fdcontinue
if [ $? -eq 0 ]; then

	echo 'OK SC generator'

else

	echo 'FAIL SC generator'

	exit    

fi 
#run each protected program and measure the overhead imposed by the OH+SROH+SC protection
sh runexec-binaries.sh binaries/
if [ $? -eq 0 ]; then

	echo 'OK OH/SROH/SC runexec'

else

	echo 'FAIL OH/SROH/SC runexec'

	exit    

 fi  

#run each protected program and measure the overhead imposed by the SC protection
sh runexec-binaries.sh binaries-sc/
if [ $? -eq 0 ]; then

        echo 'OK SC runexec'
else
        echo 'FAIL SC runexec'
        exit
 fi

#extract measured cpu and memory overhead 
python measure.py binaries/
if [ $? -eq 0 ]; then

	echo 'OK OH/SROH/SC measure'

else

	echo 'FAIL OH/SROH/SC measure'

	exit    

 fi  
#extract measured cpu and memory overhead 
python measure.py binaries-sc/
if [ $? -eq 0 ]; then

        echo 'OK SC measure'

else

        echo 'FAIL SC measure'

        exit

 fi
#dump clone and extraction coverage improvement latex table
#python measure-coverage-improvements.py
#plot the extracted overhead data and dump protection coverage latex table
python plot-dump-combined.py -p True

