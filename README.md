# Ubuntu Php Builder Script.

This is just a bash script who can build `Php5.6, Php7.0, Php7.1, Php7.2` *(As Of Now)*.
Meanwhile the script doesn't have any check to catch if you get any error while building because it's well tested and should work 99%. The only problem if there is a problem i think will be for missing package. So if that happens you can install that pack and just re'run your command. Don't worry about other stuff because this script is configured to remove old data everytime when you try to install something with it.


[+] **How To Use it?**

 -  **`cd ~/; wget https://raw.githubusercontent.com/theraw/php-builder/master/builder; chmod +x builder`**
 
 -  **`mv builder /bin/`**
 
 -  **`builder i56`** *(To Build Php5.6)*

 -  **`builder i70`** *(To Build Php7.0)*

 -  **`builder i71`** *(To Build Php7.1)*

 -  **`builder i72`** *(To Build Php7.2)*
 
 [+] **Where will php bin stored?**
 
  -  **`/php/56/bin/php`**

  -  **`/php/70/bin/php`**

  -  **`/php/71/bin/php`**

  -  **`/php/72/bin/php`**
