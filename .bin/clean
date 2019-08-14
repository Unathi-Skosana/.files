#!/bin/bash

tar -cjf /store/bak/pacman-database.tar.bz2 /var/lib/pacman/local
pacman -Rscn $(pacman -Qtdq)
pacman -Sc
pacman-optimize && sync
updatedb

exit 0
