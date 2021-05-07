#/bin/bash
 echo " hellow world"
groupadd security
useradd ansible -G security
groupadd deploy
useradd deployer -G deploy
for i in job crazy busy sharup ; 
do  
  userdel -r  $i 
echo " users are successfully deleted"
sleep 3
done


if 
  [ -f /etc/passwd ]
then 
echo " file exit"
else
echo "file does not exist"
fi
   if 
[ -f /etc/atabong ]
then 
echo "file exist"
else
echo "file is misiing double check"
fi
 echo "  what is your year of birth/"
    read a
   if
 [ $a -gt 1999 ]
   then 
echo " welcome to the store "
  else
echo "go bring your parent"
fi
