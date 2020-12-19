#/usr/bin/env zsh

dest="/srv/backups"
dest_dir="$dest/$(date +%d-%b-%Y)"

if [[ ! -a $dest ]]; then
    echo "Creating a destination folder for todays backups at '$dest_dir'"
    mkdir -p $dest_dir
fi

foreach f ("/home/pi/*.cfg" "/boot" );
    rsync -arv $f $dest_dir/.

# For Octoprint
exec /home/pi/oprint/bin/pip freeze \ 
    > $dest_dir/octoprint-requirements.txt
exec /home/pi/oprint/bin/octoprint plugins backup:backup \
    --exclude timelapse,uploads \
    $dest_dir
