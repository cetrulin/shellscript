#Cetrulin 09-06-13 css_background_switcher v0.1

#!/bin/bash

n=$((RANDOM % 3)) #random number between different options in switcher

case ${n} in #in each case, background is changed for different one
    0) 	find /RUTA_SKIN_MAGENTO/styles.css | xargs grep "../images/BACKGROUND_IMAGE1.png" && sed 's/BACKGROUND_IMAGE1.png") no-repeat fixed 0 #89B556; background-position:center right;/BACKGROUND_IMAGE2.png") no-repeat fixed 0 #89B556; background-position:center center;/g' /RUTA_SKIN_MAGENTO/styles.css > /RUTA_SKIN_MAGENTO/temp.txt
		find /RUTA_SKIN_MAGENTO/styles.css | xargs grep "../images/BACKGROUND_IMAGE2.png" && sed 's/BACKGROUND_IMAGE2.png") no-repeat fixed 0 #89B556; background-position:center center;/BACKGROUND_IMAGE3.png") no-repeat fixed 0 #89B556; background-position:center center;/g' /RUTA_SKIN_MAGENTO/styles.css > /RUTA_SKIN_MAGENTO/temp.txt
		find /RUTA_SKIN_MAGENTO/styles.css | xargs grep "../images/BACKGROUND_IMAGE3.png" && sed 's/BACKGROUND_IMAGE3.png") no-repeat fixed 0 #89B556; background-position:center center;/BACKGROUND_IMAGE4.png") no-repeat fixed 0 #89B556; background-position:bottom left;/g' /RUTA_SKIN_MAGENTO/styles.css > /RUTA_SKIN_MAGENTO/temp.txt
		find /RUTA_SKIN_MAGENTO/styles.css | xargs grep "../images/BACKGROUND_IMAGE4.png" && sed 's/BACKGROUND_IMAGE4.png") no-repeat fixed 0 #89B556; background-position:bottom left;/BACKGROUND_IMAGE1.png") no-repeat fixed 0 #89B556; background-position:center right;/g' /RUTA_SKIN_MAGENTO/styles.css > /RUTA_SKIN_MAGENTO/temp.txt
	;; 	
    1) 	find /RUTA_SKIN_MAGENTO/styles.css | xargs grep "../images/BACKGROUND_IMAGE1.png" && sed 's/BACKGROUND_IMAGE1.png") no-repeat fixed 0 #89B556; background-position:center right;/BACKGROUND_IMAGE3.png") no-repeat fixed 0 #89B556; background-position:center center;/g' /RUTA_SKIN_MAGENTO/styles.css > /RUTA_SKIN_MAGENTO/temp.txt
		find /RUTA_SKIN_MAGENTO/styles.css | xargs grep "../images/BACKGROUND_IMAGE2.png" && sed 's/BACKGROUND_IMAGE2.png") no-repeat fixed 0 #89B556; background-position:center center;/BACKGROUND_IMAGE4.png") no-repeat fixed 0 #89B556; background-position:bottom left;/g' /RUTA_SKIN_MAGENTO/styles.css > /RUTA_SKIN_MAGENTO/temp.txt
		find /RUTA_SKIN_MAGENTO/styles.css | xargs grep "../images/BACKGROUND_IMAGE3.png" && sed 's/BACKGROUND_IMAGE3.png") no-repeat fixed 0 #89B556; background-position:center center;/BACKGROUND_IMAGE1.png") no-repeat fixed 0 #89B556; background-position:center right;/g' /RUTA_SKIN_MAGENTO/styles.css > /RUTA_SKIN_MAGENTO/temp.txt
		find /RUTA_SKIN_MAGENTO/styles.css | xargs grep "../images/BACKGROUND_IMAGE4.png" && sed 's/BACKGROUND_IMAGE4.png") no-repeat fixed 0 #89B556; background-position:bottom left;/BACKGROUND_IMAGE2.png") no-repeat fixed 0 #89B556; background-position:center center;/g' /RUTA_SKIN_MAGENTO/styles.css > /RUTA_SKIN_MAGENTO/temp.txt
	;;	
    2) 	find /RUTA_SKIN_MAGENTO/styles.css | xargs grep "../images/BACKGROUND_IMAGE1.png" && sed 's/BACKGROUND_IMAGE1.png") no-repeat fixed 0 #89B556; background-position:center right;/BACKGROUND_IMAGE4.png") no-repeat fixed 0 #89B556; background-position:bottom left;/g' /RUTA_SKIN_MAGENTO/styles.css > /RUTA_SKIN_MAGENTO/temp.txt
		find /RUTA_SKIN_MAGENTO/styles.css | xargs grep "../images/BACKGROUND_IMAGE2.png" && sed 's/BACKGROUND_IMAGE2.png") no-repeat fixed 0 #89B556; background-position:center center;/BACKGROUND_IMAGE1.png") no-repeat fixed 0 #89B556; background-position:center right;/g' /RUTA_SKIN_MAGENTO/styles.css > /RUTA_SKIN_MAGENTO/temp.txt
		find /RUTA_SKIN_MAGENTO/styles.css | xargs grep "../images/BACKGROUND_IMAGE3.png" && sed 's/BACKGROUND_IMAGE3.png") no-repeat fixed 0 #89B556; background-position:center center;/BACKGROUND_IMAGE2.png") no-repeat fixed 0 #89B556; background-position:center center;/g' /RUTA_SKIN_MAGENTO/styles.css > /RUTA_SKIN_MAGENTO/temp.txt
		find /RUTA_SKIN_MAGENTO/styles.css | xargs grep "../images/BACKGROUND_IMAGE4.png" && sed 's/BACKGROUND_IMAGE4.png") no-repeat fixed 0 #89B556; background-position:bottom left;/BACKGROUND_IMAGE3.png") no-repeat fixed 0 #89B556; background-position:center center;/g' /RUTA_SKIN_MAGENTO/styles.css > /RUTA_SKIN_MAGENTO/temp.txt
	;; 
esac  

mv /RUTA_SKIN_MAGENTO/temp.txt /RUTA_SKIN_MAGENTO/styles.css

echo 'done'
