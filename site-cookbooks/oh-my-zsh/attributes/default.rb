default['oh_my_zsh'][:users] = `dscl . readall /users | grep -A 3 -B 2 -e UniqueID:\ 5'[0-9][0-9]'|grep 'RecordName'|cut -d " " -f2`
