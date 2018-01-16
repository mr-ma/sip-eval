#run clone and extraction passed to identify function names for the combination generator
sh coverage-improver.sh 
#extract filter fils (i.e. combinations) from the list of available function names
sh combinator.sh
#generat prottected binaries
sh generator.sh
if [ $? -eq 0 ]; then

	echo 'OK generator'

else

	echo 'FAIL generator'

	exit    

 fi  
#run each protected program and measure the overhead imposed by the protection
sh runexec-binaries.sh
if [ $? -eq 0 ]; then

	echo 'OK runexec'

else

	echo 'FAIL runexec'

	exit    

 fi  
#extract measured cpu and memory overhead 
python measure.py
if [ $? -eq 0 ]; then

	echo 'OK measure'

else

	echo 'FAIL measure'

	exit    

 fi  
#dump clone and extraction coverage improvement latex table
python measure-coverage-improvements.py
#plot the extracted overhead data and dump protection coverage latex table
python plot-dump.py

