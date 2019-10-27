#!/bin/bash

##################################################################
#
#    Cyclist Obscura - Image Processing
#
#    file       : contact-sheet.sh
#    date       : 27/10/2019
#    depends    : BASH, ImageMagick
#    licence    : GPL v3.0
#
##################################################################

MASTER_DIR=$1
NOW=$(date +"%m_%d_%Y")
OUTPUT_FILE=$NOW_contactsheet.jpg

echo "##################################################################"
echo "Contact Sheet"
echo "v 1.0  27/10/2019"
echo "##################################################################"
echo $MASTER_DIR
echo $OUTPUT_FILE
echo ""

mkdir -p ~/Contact_Sheets/

cd $MASTER_DIR

montage -verbose -label '%f' -font Helvetica -pointsize 10 -background '#000000' -fill 'gray'\
  -define jpeg:size=200x200 -geometry 200x200+2+2 -auto-orient *.JPG ~/Contact_Sheets/$OUTPUT_FILE 
