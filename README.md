# Linux_skills

# Module 1 installing POP_OS 
I have Downloaded pop!_os linux distribution ,since its based of ubuntu i dont see any problem , i tried installing ubuntu about a month ago andfailed and then i tried downloadeing Debian but found it more complicated , then found out that pop!_os is a begginer friendly distro.
the downloading steps are like that : 
first you download the distro on a USB flash drive .
then you restart your PC but when yousee the PC's logo you press F2 button to enter the BIOS , change the system boot steps to enter the pop!_os
, now you will download the , you have two options I to delete every thing on your PC or to give this new OS part of your hard disk and save all your info .
after downloading  the new operating system you can remove  the USB flash drive and here now you have two operating systems on your PC.

# screen shots of basic linux commands
echo command prints text in the terminal.
![echo image](https://github.com/AhmadKais/Linux_skills/blob/main/echo.png)

ls is a command that shows items in a specific directory.
cd moves to a given directory and cdc .. returns to the father drectory
mkdir make directory makes a new directory with given name 
![ls_cd_mkdir image](https://github.com/AhmadKais/Linux_skills/blob/main/ls_cd_mkdir.png)

evince is a command to open PDF files 
pwd is a command to pring the path to the working directory 
man is a short for manual it explains the command and the flags and other parameters other commands make
![evince_pwd_man](https://github.com/AhmadKais/Linux_skills/blob/main/evince_pwd_man.png)

man man shows a manual for the man command
![man_man](https://github.com/AhmadKais/Linux_skills/blob/main/man_man.png)

copy command i copies an existing PDF file 
![cp](https://github.com/AhmadKais/Linux_skills/blob/main/cp_pwd_.png)

rm removes a file or a directory with the correct flag
![rm](https://github.com/AhmadKais/Linux_skills/blob/main/rm.png)

The whereis command in Linux locates the binary, source, and manual page files of a given command.
![whereis](https://github.com/AhmadKais/Linux_skills/blob/main/whereis.png)

The whereis command in Linux locates the binary, source, and manual page files of a given command.
![whoami](https://github.com/AhmadKais/Linux_skills/blob/main/whoami_clear.png)

The uname command in Linux retrieves system information and prints it, displaying details about the operating system.
![uname](https://github.com/AhmadKais/Linux_skills/blob/main/uname.png)

The ps command in Linux is used to display information about active processes. It shows a snapshot of the currently running processes on the system.
The df command stands for "disk free" and is used to display information about the disk space usage on the file systems in Linux. It shows details like total disk space, used space, available space, and file system types.
The cal command is a simple calendar utility in Linux that displays a calendar for a specific month or year in the terminal. When used without arguments, it shows the current month's calendar.
![ps_df_cal](https://github.com/AhmadKais/Linux_skills/blob/main/ps_df_cal.png)

# Module 2:
in ti fursa_files directory i create two new empty directories , new_dir and new_dir2 using the mkdir command ,
i create two text files for each new directory then i move one of the files in 
new_dir to another directory new_dir2 and i try to move file4 to new_dir1 
but new_dir1 directory does not exist so what happens is that it changes the name of file4.txt to new_dir1 and moves it  to the current directory , then i fix the problem and change the files name back to file4 .
![new_files_dir](https://github.com/AhmadKais/Linux_skills/blob/main/new_files_dir.png)

just a screenshot of the nano text editor
![nano](https://github.com/AhmadKais/Linux_skills/blob/main/nano.png)

file amnipulation using mkdir and mv , the same screen shot we saw earlier
![file manipulation](https://github.com/AhmadKais/Linux_skills/blob/main/file%20manipulation.png)

cat cp and append commands in linux 
![cat_sp_append](https://github.com/AhmadKais/Linux_skills/blob/main/cat_cp_append_replace.png)

deleting file using rmdir and rm -r 
![delete_file_dir](https://github.com/AhmadKais/Linux_skills/blob/main/delete_file_dir.png)

# Module 3:
creating a new user 
![user_create](https://github.com/AhmadKais/Linux_skills/blob/main/user_create.png)

changing to another user and changing permissions using chmod
![permissions](https://github.com/AhmadKais/Linux_skills/blob/main/permissions.png)

# Module 4:

ps aux in Linux displays a detailed list of all running processes, including those from all users and system daemons, with extensive information about each process's resource usage.

![ps](https://github.com/AhmadKais/Linux_skills/blob/main/ps%20aux.png)

top: Command-line utility displaying real-time system information, including processes, resource usage, and system statistics.
![top](https://github.com/AhmadKais/Linux_skills/blob/main/top.png)

htop: Interactive process viewer offering a visually appealing display of system processes and resource utilization in real-time.
![htop](https://github.com/AhmadKais/Linux_skills/blob/main/htop.png)

neofetch: Command displaying system information and OS details in a visually appealing ASCII art format.
![neofetch](https://github.com/AhmadKais/Linux_skills/blob/main/neofetch.png)

kill: Command used to terminate or end a specified process on a Unix-based system.
![killing_fire_fox](https://github.com/AhmadKais/Linux_skills/blob/main/killing%20firefox.png)

fg brings a background process to the foreground in a Unix shell, allowing interaction with it.
if we for example type sleep 100 we wont be able to use the terminal for 100 seconds but if we type sleep 100& then we will be able to use the terminal because the command is runnug in the background , the jobs comand lists running commands and fg%1 brings the first process to the foreground

![bringing_process_to_fg](https://github.com/AhmadKais/Linux_skills/blob/main/bringing%20process%20to%20front.png)

# Module 5:

searching for a package
![searching valgrind](https://github.com/AhmadKais/Linux_skills/blob/main/downloading%20packeges%20valgrind.png)

installing valgrind using apt package manager , valgrind detecs memory leaks  
![downloading valgrind](https://github.com/AhmadKais/Linux_skills/blob/main/downloading%20valgrind.png)

updating and upgrading the OS
![sudo update upgrade](https://github.com/AhmadKais/Linux_skills/blob/main/sudo%20upgrade%20update.png)

The command dpkg -l | grep valgrind in Linux lists installed packages (dpkg -l) and filters the output using grep to display only the lines containing "valgrind." This helps to identify if the package named "valgrind" is installed on the system and provides information about its status or version if it's present.
![checking downloaded packages](https://github.com/AhmadKais/Linux_skills/blob/main/checking%20downloaded%20package.png)

before we continue i suggest you watch this linux bash tutorial playlist : 
https://www.youtube.com/playlist?list=PLT98CRl2KxKGj-VKtApD8-zCqSaN2mD4w

# Module 6 : 
if [ ! -d "$source_dir" ]; then: This line checks if the source directory specified by source_dir variable (/home/kais/Desktop/Fursa_Files/new_dir1) exists and is a directory (-d). If it doesn't exist (! -d), it displays an error message and exits the script with exit code 1.

if [ ! -d "$destination_dir" ]; then: This part checks if the destination directory specified by destination_dir variable (/home/kais/Desktop/Fursa_Files/new_dir2) exists. If it doesn't exist, it creates the directory using mkdir -p.
for file in "$source_dir"/*; do: This loop iterates through each file in the source directory.
    if [ -f "$file" ]; then: Inside the loop, this checks if the current item ($file) is a regular file (-f). If it is, the script copies the file from the source directory to the destination directory, renaming it with the timestamped prefix using cp.
    echo "Copied $(basename "$file") to $destination_dir": Displays a message indicating which file was copied.
![script](https://github.com/AhmadKais/Linux_skills/blob/main/script%20for%20backups.png)

changing the mode of the script to excutable and then runing it 
first try running the scsript
![script try](https://github.com/AhmadKais/Linux_skills/blob/main/script%20try.png)

running the script for the second time
![script demo](https://github.com/AhmadKais/Linux_skills/blob/main/script%20demo.png)

# Module 7 :











