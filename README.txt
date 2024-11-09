The purpose of this repository is to setup the directories for a script file and add
a crontab entry for the script. The main driver script executes a wall command that relates 
to the GDDC competition, and encourages participants to check their crontab files.

In order to properly setup this crontab entry:

- Make sure the wall_setup.sh file is executable (sudo chmod +x)
- Run the wall_setup.sh file with sudo privileges
- Run the gddc_cronjob.sh file without sudo privileges
- Enjoy!  :D


sudo mv ./load_gddc.sh; 
