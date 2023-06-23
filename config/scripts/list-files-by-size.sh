du -sh * | sed 's/\([[:digit:]]\)\t/\1B\t/' | sed 's/\(.\t\)/\t\1/' | sed 's/G\t/Z\t/' | sort -n -k 2d,2 -k 1n,1 | sed 's/Z\t/G\t/'
