Script to download DOP geoTIFF data published by [Bezirksregierung Köln Geobasis NRW](http://www.geobasis.nrw.de/).

1. Visit [TIM-Online](https://www.tim-online.nrw.de/tim-online2/)
2. Click "Download"
3. Select product "Luftbildinformationen/Digitale Ortophotos Farbe (RGB)"
4. Select format "*.tiff (georeferenziert)"
5. Select the wanted tiles
6. Download "Liste der Download-Adressen mit Metadaten"
7. Run ``tim_online_downloader.py <FILE_NAME.txt>`` to download the data