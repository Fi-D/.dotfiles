.SILENT:
linux: clean #Linux target, the first target to run following by the prerequisite on the clean target
	-./bin/linux.sh  #To run the linux.sh script in the bin directory
clean:  #clean target
	-./bin/cleanup.sh   #To run the cleanup.sh script in the bin directory
