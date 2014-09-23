#!/bin/sh

gs	-q -dNOPAUSE -dBATCH -dSAFER \
	-sDEVICE=pdfwrite \
	-dCompatibilityLevel=1.3 \
	-dEmbedAllFonts=true \
	-dSubsetFonts=true \
	-dColorImageDownsampleType=/Bicubic \
	-dColorImageResolution=300 \
	-dGrayImageDownsampleType=/Bicubic \
	-dGrayImageResolution=200 \
	-dMonoImageDownsampleType=/Bicubic \
	-dMonoImageResolution=200 \
	-sOutputFile=out.pdf \
	 $1
