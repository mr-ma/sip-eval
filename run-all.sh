#run clone and extraction passed to identify function names for the combination generator
sh coverage-improver.sh 
#extract filter fils (i.e. combinations) from the list of available function names
sh combinator.sh
#generat prottected binaries
sh generator.sh
#run each protected program and measure the overhead imposed by the protection
sh runexec-binaries.sh
#extract measured cpu and memory overhead 
python measure.py
#dump clone and extraction coverage improvement latex table
python measure-coverage-improvements.py
#plot the extracted overhead data and dump protection coverage latex table
python plot-dump.py

