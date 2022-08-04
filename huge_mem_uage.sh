# !/bin/sh

paths=`ls /proc | grep -E '^[0-9]+'`

echo $paths

for path in $paths
do
    if [ -f /proc/$path/status ]
     then
        if [ `grep -c "^HugetlbPages:" /proc/$path/status` -eq 1 ]
        then
            echo "Process: `grep "^Name:" /proc/$path/status | awk '{print $2}'`"
            echo "HugePage: `grep "^HugetlbPages:" /proc/$path/status | awk '{print $2}'`"
        fi
    fi
done