#!/bin/bash

# ======================================================================
# name: graphics.sh
# desc: install graphics software via APT          
# ======================================================================

echo -e "\n"
echo -e "==============================================================="
echo -e "**** Graphics ****"
echo -e "==============================================================="
echo -e "\n"

# ======================================================================
#
# dia:      	diagrams, flowcharts, etc.. (gui)
#
# exiftran:     lossle jpeg transformations (cmd)
# exiv2:        manage metadata (cmd)
#
# gimp:     	image manipulation(raster) (gui)
# inkscape:  	image manipulation(vector) (gui)
#
# imagemagick: 	image manipulation(raster) (cmd)
#
# jpegoptim:    optimize jpeg (cmd)
#
# optipng:      optimize png (cmd)
# pngcrush:     optimize png (cmd)
#
# ======================================================================

packages=(
		
		"dia dia-shapes dia-rib-network"
		"exiftran exiv2"
		"gimp gimp-data-extras"
		"inkscape" 
		"imagemagick"
		"jpegoptim" 
		"optipng pngcrush"
)

apt install -y -q ${packages[*]}

