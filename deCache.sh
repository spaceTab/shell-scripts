
#!/bin/zsh
# Simple Script to drop system cache & clear up RAM
# ---- Warning option 3 isn't safe for "Production" ----
echo "Choose Which Cache's you'd Like to Drop!"
echo "Press 1 for => Page Cache" ;
echo "Press 2 for => iNodes & Dentries" ;
echo "Press 3 for => Page Cache, iNodes & Dentries \n";
# Read in the option variable
read  option;

echo "\n"$option "Has been chosen . . . Executing \n"
sleep 2;
case $option in
    1)
        sync; echo 1 > /proc/sys/vm/drop_caches && 
        echo "Dropping Pache Cache \n" ;
        sleep 1;
        echo "Page Cache has been dropped!";
        ;;
    2)
        sudo  sync; echo 2 > /proc/sys/vm/drop_caches &&
        echo "Dropping iNodes & Dentries \n";
        sleep 1;
        echo "iNodes * Dentries have been cleaned";
        ;;
    3)
        sync ; echo 3 > /proc/sys/vm/drop_caches &&
        echo "Dropping Page Cache, iNodes & Dentries!! \n" ;
        sleep 1;
        echo "Cache & Ram has been Cleaned!";
        ;;
    *)
        echo "[ INVALID ] Please run again & choose value 1-3";
        ;;
esac


