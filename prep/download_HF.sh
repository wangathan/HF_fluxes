#!/bin/bash

# download HF flux tower data

# ftp://ftp.fluxdata.org/.ameriflux_downloads/BASE/README_AmeriFlux_BASE.txt
# ftp://ftp:wangathan@ftp.fluxdata.org/.ameriflux_downloads/BASE-BADM/AMF_US-Ha1_BASE-BADM_9-1.zip
# ftp://ftp:wangathan@ftp.fluxdata.org/.ameriflux_downloads/BADM-SGI/AMF_AA-Flx_BIF_LATEST.xlsx
# ftp://ftp:wangathan@ftp.fluxdata.org/.ameriflux_downloads/BADM-SGI/AMF_AA-Net_BIF_LATEST.xlsx
#

# make sure data directory exists
if [ -d ../../data/HF_fluxes ]; then
  mkdir ../../data/HF_fluxes
  echo "Created data directory"
fi

# move to data directory
cd ../../data/HF_fluxes

# download data
wget ftp://ftp.fluxdata.org/.ameriflux_downloads/BASE/README_AmeriFlux_BASE.txt                      
wget ftp://ftp:wangathan@ftp.fluxdata.org/.ameriflux_downloads/BASE-BADM/AMF_US-Ha1_BASE-BADM_9-1.zip
wget ftp://ftp:wangathan@ftp.fluxdata.org/.ameriflux_downloads/BADM-SGI/AMF_AA-Flx_BIF_LATEST.xlsx   
wget ftp://ftp:wangathan@ftp.fluxdata.org/.ameriflux_downloads/BADM-SGI/AMF_AA-Net_BIF_LATEST.xlsx   

# unzip
unzip AMF_US-Ha1_BASE-BADM_9-1.zip

echo "done!"
