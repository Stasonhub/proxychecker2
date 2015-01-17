set PRJ=proxycheck2
set EXS=--exclude '*.pyc' --exclude '*.dll' --exclude '*.pyd' --exclude '*.zip' --exclude '*.exe'
set SSH=-e "ssh -i c:\Users\snoa\.ssh\private.openssh"
rsync -rvvz --progress --delete --delete-excluded %EXS% %SSH% --chmod=ugo=rwX . root@192.168.1.3:/mnt/HD_a2/backup/rsync/%PRJ%
