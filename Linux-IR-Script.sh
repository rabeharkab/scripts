#
echo -e "###  Atos script for gathering Linux system artifacts for Digital Forensics and Incidence Response activities  ###"
echo -e "Do run this script with root (Sudo) privileges"
echo -e "Script running *****************"#
echo -e "#------------------------------------- System Related Information ------------------------------------- #" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null#
echo -e "############  Linux kernel version  ############" >>Lin-IR-output.txt 2>/dev/null
uname -a >>Lin-IR-output.txt 2>/dev/null
cat /etc/*release >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null#
echo -e "############  System Hostname  ############" >>Lin-IR-output.txt 2>/dev/null
hostname >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null##
echo -e "############  Recent Logins to systems  ############" >>Lin-IR-output.txt 2>/dev/null
last >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
#
echo -e "############  Current date,time and timezone of the system  ############" >>Lin-IR-output.txt 2>/dev/null
date >>Lin-IR-output.txt 2>/dev/null
cat /etc/timezone>>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null#
echo -e "############  Current Login User  ############" >>Lin-IR-output.txt 2>/dev/null
who >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null#
echo -e "############  Users in the system (Passwd File)  ############" >>Lin-IR-output.txt 2>/dev/null
cat /etc/passwd >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null#
echo -e "############  Super users list (sudoers file)  ############" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
cat /etc/sudoers >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null#
echo -e "#------------------------------------- Network Related Information  ------------------------------------- #" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null#
echo -e "############  IP address and adapter details  ############" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
ifconfig -a >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null##
echo -e "############  Network Connections  ############" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
netstat -anop >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null#
echo -e "#------------------------------------- Firewall Status and Rules  ------------------------------------- #" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
echo -e "############  List all IPtable rules  ############" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
iptables -L>>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null#
echo -e "#------------------------------------- Running Processes and services  ------------------------------------- #" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null#
echo -e "############  Processes running in the system  ############" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
ps -eaf --forest >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null#
echo -e "############  Status of all Services in the system  ############" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
service --status-all >>Lin-IR-output.txt 2>/dev/null
echo -e "\n" >>Lin-IR-output.txt 2>/dev/null#
echo -e "############  List of open files and corresponding processes  ############" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
lsof >>Lin-IR-output.txt 2>/dev/null
echo -e "\n" >>Lin-IR-output.txt 2>/dev/null#
echo -e "#------------------------------------- History of Commands executed in bash shell  ------------------------------------- #" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null#
echo 'export HISTTIMEFORMAT="%d/%m/%y %T "' >> ~/.bash_profile 2>/dev/null
source ~/.bash_profile 2>/dev/null
history >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null#
echo -e "#------------------------------------- Mapped Drives and Shares  ------------------------------------- #" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null#
echo -e "############  Mounted file systems  ############" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
mount >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null#
echo -e "############  Filesystems and partition Info  ############" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
df -h >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null##
echo -e "#------------------------------------- Installed Applications  ------------------------------------- #" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
dpkg -l  >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null#
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
rpm -qa --qf '(%{INSTALLTIME:date}): %{NAME}-%{VERSION}\n'  >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
# ls -alh /usr/bin/
# ls -alh /sbin/
# dpkg -l
# rpm -qa
# ls -alh /var/cache/apt/archivesO
# ls -alh /var/cache/yum/#
echo -e "#------------------------------------- Common areas for persistance  ------------------------------------- #" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
ls -al /etc/init >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null#
echo -e "#------------------------------------- List of files and folders in Temporary directories  ------------------------------------- #" >>Lin-IR-output.txt 2>/dev/null#
echo -e "############  List of files in /tmp directory  ############" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
ls -al /tmp >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
echo -e "############  List of files in /var/tmp directory  ############" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
ls -al /var/tmp >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
echo -e "############  List of files in /dev/shm directory  ############" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
ls -al /dev/shm >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null#
echo -e "#------------------------------------- Advanced Linux File Permissions (sticky bit, SUID & GUID)  ------------------------------------- #" >>Lin-IR-output.txt 2>/dev/null#
echo -e "############  Files with Sticky bit set  ############" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
find / -perm -1000 -type d 2>/dev/null >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
echo -e "############  Files with SGID (chmod 2000)  set  ############" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
find / -perm -g=s -type f 2>/dev/null  >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
echo -e "############  Files with SUID (chmod 4000)  set  ############" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
find / -perm -u=s -type f 2>/dev/null >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
echo -e "############ All World writable files  ############" >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
find / -perm -o+w >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
#
echo -e #------------------------------------- Recent files created ------------------------------------- # " >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
echo -e "############ Files created in last 10 days in tmp directory ############" >>Lin-IR-output.txt 2>/dev/null
find / tmp -ctime -10>>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
echo -e "############  Files created in last 10 days in home directory ############" >>Lin-IR-output.txt 2>/dev/null
find / home -ctime -10>>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
echo -e "############  Files created in last 3 days in root directory ############" >>Lin-IR-output.txt 2>/dev/null
find / root -ctime -3>>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null#
echo -e "#------------------------------------- Scheduled Tasks  ------------------------------------- #" >>Lin-IR-output.txt 2>/dev/null
echo -e "##1#################################################" >>Lin-IR-output.txt 2>/dev/null
crontab -l  >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
echo -e "##2#################################################" >>Lin-IR-output.txt 2>/dev/null
ls -alh /var/spool/cron >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
echo -e "##3#################################################" >>Lin-IR-output.txt 2>/dev/null
ls -al /etc/ | grep cron >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
echo -e "##4#################################################" >>Lin-IR-output.txt 2>/dev/null
ls -al /etc/cron* >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
echo -e "##5#################################################" >>Lin-IR-output.txt 2>/dev/null
cat /etc/cron* >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
echo -e "##6#################################################" >>Lin-IR-output.txt 2>/dev/null
cat /etc/at.allow >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
echo -e "##7#################################################" >>Lin-IR-output.txt 2>/dev/null
cat /etc/at.deny >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
echo -e "##8#################################################" >>Lin-IR-output.txt 2>/dev/null
cat /etc/cron.allow >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
echo -e "##9#################################################" >>Lin-IR-output.txt 2>/dev/null
cat /etc/cron.deny >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
echo -e "##10#################################################" >>Lin-IR-output.txt 2>/dev/null
cat /etc/crontab >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
echo -e "##11#################################################" >>Lin-IR-output.txt 2>/dev/null
cat /etc/anacrontab >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null
echo -e "##12#################################################" >>Lin-IR-output.txt 2>/dev/null
cat /var/spool/cron/crontabs/root >>Lin-IR-output.txt 2>/dev/null
echo -e "\n">>Lin-IR-output.txt 2>/dev/null##
echo -e "******************** Script execution completed "#
# Lin-IR-output.txt 2>/dev/null 2>&1#
# echo -e "#------------------------------------- Copy log files  ------------------------------------- #" >>Lin-IR-output.txt 2>/dev/null
# /var/log/*, /var/log/auth.d or msg.d ,
# /var/www/html/
# /var/log/auditd/
# /var/log/httpd/access_log or /var/log/apache2/access.log##
# *********  Property of Paladion. If any issues, kindly contact incident.responders@paladion.net  , lalit.joshi@paladion.net  	*************** #