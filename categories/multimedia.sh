#!/bin/bash

# ======================================================================
# name: multimedia.sh
# desc: install multimedia software via APT         
# ======================================================================

echo -e "\n"
echo -e "==============================================================="
echo -e "**** Multimedia ****"
echo -e "==============================================================="
echo -e "\n"

# ======================================================================
#
# audacity:     	basic audio editing (gui)
#
# brasero:      	cd/dvd burning (gui)
#
# ffmpeg:       	audio/video editing (cmd)
# ffmpegthumbs: 	video thumbnail generator (cmd)
#
# ghostscript:      pdf manipulation (cmd)
# pdftk:        	pdf manipulation (cmd)
# poppler-utils:	pdf manipulation (cmd)
# qpdf:         	pdf manipulation (cmd)
#
# img2pdf:          convert image to pdf (cmd)
#
# vlc:          	multimedia player
#
# ======================================================================

packages=(
		
		"audacity"
		"brasero"
		"ffmpeg ffmpegthumbs" 
		"ghostscript pdftk poppler-utils qpdf"
		"img2pdf" 
		"vlc libdvd-pkg libdvdread8t64 libdvdnav4" 
)

apt install -y -q ${packages[*]}
