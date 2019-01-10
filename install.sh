#!/data/data/com.termux/files/usr/bin/bash
#Created on 10/01/2019 by Hydra-Project
#Last update 10/01/2019

echo "Hydra Project"
sleep 1
clear
echo "Hydra Project ./ "
sleep 1
clear
echo "Hydra Project ..\ "
sleep 1
clear
echo "Hydra Project .../ "
sleep 1
clear
echo "Hydra Project ....\ "
sleep 1
clear
echo "Hydra Project ...../ "
sleep 1
clear
echo "Hydra Project ......\ "
sleep 1
clear
echo "Hydra Project ......./ "
sleep 1
clear
echo "Hydra Project ........\ "
sleep 1
clear
echo "Hydra Project ........./ "
sleep 1
clear
echo "Hydra Project ..........\ "
echo "
"
sleep 1
dpkg --configure -a
apt update && apt -y upgrade

echo "
"
echo "Loading 0%";
sleep 1
clear
echo "Loading 10%";
sleep 1
clear
echo "Loading 20% ";
sleep 1
clear
echo "Loading 30% ";
sleep 1
clear
echo "Loading 40% ";
sleep 1
clear
echo "Loading 50% ";
sleep 1
clear
echo "Loading 60% ";
sleep 1
clear
echo "Loading 70% ";
sleep 1
clear
echo "Loading 80% ";
sleep 1
clear
echo "Loading 90% ";
sleep 1
clear
echo "Loading 100% "
echo "
"
sleep 1
apt install -y util-linux;apt install figlet

sleep 1
clear
echo "
"
clear
setterm -foreground red
echo "#####################";
setterm -foreground green
echo "Welcome ............#"
setterm -foreground red
echo "#####################";
sleep 2
setterm -foreground blue
termux-setup-storage

setterm -foreground red
	echo
        echo "============================================================================="
setterm -foreground green
        echo
        echo "         This script was programmed by the hydra_project to fix the problems of installing metasploi and running them smoothly and safely    ";
        echo "                                       Please subscribe to the channel and like the video to continue    ";
        echo "                If you encounter any problem with the download please contact me on Facebook link at the bottom     ";
        echo "           ";
        echo "           ";
        echo
setterm -foreground cyan
        echo "                   By ================>  Hydra_Project	                 "
        echo
setterm -foreground red
        echo "============================================================================";
setterm -foreground yellow
echo
echo "                            Termux - Metaslpoit  "
echo "               >>> Welcome To The Channel Hydra_Project <<< "
echo
sleep 5
setterm -foreground blue
echo "Using And Installing This Tools That Mean You Ready For"
setterm -foreground red
echo 
echo "[1] Use At Your Own Risk"
echo "[2] No Warranty"
echo "[3] If it violates the law with this tool the risk is borne by the user"
echo 
setterm -foreground blue
echo "-------------------------------------------"
echo "Are You Sure Want To Install Metasploit ?"
echo "-------------------------------------------"
echo
setterm -foreground green
echo "Press Enter if you Agree / Continue Install"
echo "Press CTRL + C if you Disagree / Cancel Install"
read ENTER

setterm -foreground red
echo "#############################################################################"
sleep 1
setterm -foreground green
apt install -y autoconf bison clang coreutils axel curl findutils git apr apr-util libffi-dev libgmp-dev libpcap-dev postgresql-dev readline-dev libsqlite-dev openssl-dev libtool libxml2-dev libxslt-dev ncurses-dev pkg-config wget make ruby-dev libgrpc-dev termux-tools ncurses-utils ncurses unzip zip tar postgresql termux-elf-cleaner
setterm -foreground red
echo "#############################################################################"
sleep 1
echo "
"
setterm -foreground red
echo "###########################################";
setterm -foreground green
echo "Hydra  is Downloading & Extracting .......#"
setterm -foreground red
echo "###########################################";
setterm -foreground blue
sleep 3
echo
echo
#Install metasploit-framework v.4.16.16
cd $HOME
axel --alternate -c https://github.com/rapid7/metasploit-framework/archive/4.16.16.tar.gz
tar -xf $HOME/metasploit-framework-4.16.16.tar.gz
mv $HOME/metasploit-framework-4.16.16 $HOME/metasploit-framework
rm $HOME/4.16.16.tar.gz
cd $HOME/metasploit-framework
sed '/rbnacl/d' -i Gemfile.lock
sed '/rbnacl/d' -i metasploit-framework.gemspec
clear
echo
setterm -foreground red
echo "########################################################";
setterm -foreground green
echo "THANKS TO Install MetaSploit in Channel Hydra_Project  #";
setterm -foreground red
echo "########################################################";
sleep 5
clear
#Installing gems
echo
setterm -foreground red
echo "################################";
setterm -foreground green
echo "Hydra is installing ruby gems #"
setterm -foreground red
echo "################################";
sleep 3
echo ""
setterm -foreground blue
gem update --system
gem install rubygems-update
update_rubygems
gem install bundler
sed 's|nokogiri (1.*)|nokogiri (1.8.0)|g' -i Gemfile.lock                                                     
gem install nokogiri -v 1.8.0 -- --use-system-libraries

#sed 's|grpc (.*|grpc (1.4.1)|g' -i $HOME/metasploit-framework/Gemfile.lock
#gem unpack grpc -v 1.4.1
#cd grpc-1.4.1
#curl -LO https://raw.githubusercontent.com/grpc/grpc/v1.4.1/grpc.gemspec
#curl -L https://raw.githubusercontent.com/Hax4us/Hax4us.github.io/master/extconf.patch
#patch -p1 < extconf.patch
#gem build grpc.gemspec
#gem install grpc-1.4.1.gem
#cd ..
#rm -r grpc-1.4.1

echo
setterm -foreground red
echo "######################################";
setterm -foreground green
echo "Hydra  is repairing ruby gems issues #"
setterm -foreground red
echo "######################################";
setterm -foreground blue
sleep 3
echo ""
cd $HOME/metasploit-framework                                                                                 bundle install -j5
$PREFIX/bin/find -type f -executable -exec termux-fix-shebang \{\} \;
rm ./modules/auxiliary/gather/http_pdf_authors.rb
if [ -e $PREFIX/bin/msfconsole ];then
        rm $PREFIX/bin/msfconsole
fi
	if [ -e $PREFIX/bin/msfvenom ];then
        rm $PREFIX/bin/msfvenom
fi
ln -s $HOME/metasploit-framework/msfconsole /data/data/com.termux/files/usr/bin/
ln -s $HOME/metasploit-framework/msfvenom /data/data/com.termux/files/usr/bin/
termux-elf-cleaner /data/data/com.termux/files/usr/lib/ruby/gems/2.4.0/gems/pg-0.20.0/lib/pg_ext.so

#Reapiring nokogiri issues
bundle update nokogiri
mv $HOME/McDoda-Install-MetaSploit/RuGiR $HOME/metasploit-framework/



#Creating data base
echo
setterm -foreground red
echo "###################################";
setterm -foreground green
echo "Hydra  is creating your data base #"
setterm -foreground red
echo "###################################";
echo
setterm -foreground white
mv $HOME/Hydra-Project/database.yml $HOME/metasploit-framework/config
cd $HOME/metasploit-framework/config
mkdir -p $PREFIX/var/lib/postgresql
initdb $PREFIX/var/lib/postgresql

pg_ctl -D $PREFIX/var/lib/postgresql start
createuser msf
createdb msf_database
pg_ctl -D $PREFIX/var/lib/postgresql start
rm -r $HOME/Hydra-Project
rm -r $HOME/metasploit-framework-4.16.16.tar.gz

cd $HOME/metasploit-framework
gem install nokogiri -- --use-system-libraries

clear
setterm -foreground red
echo "###########################################################################"
setterm -foreground green
echo "Hydra : Your data base was created. Now you can active it with . . . "
echo
echo "1- pg_ctl -D $PREFIX/var/lib/postgresql start"
echo "2- gem install nokogiri -- --use-system-libraries"
setterm -foreground red
echo "###########################################################################"
sleep 2

setterm -foreground green
echo ""
echo " My channel link ===> https://www.youtube.com/channel/UCHHlpNSr1n121wfvabPg6rQ "
setterm -foreground yellow
echo " ____  _   _ ____ ____   ____ ____  ___ ____  _____"
echo "/ ___|| | | | __ ) ___| / ___|  _ \|_ _| __ )| ____|"
echo "\___ \| | | |  _ \___ \| |   | |_) || ||  _ \|  _|"
echo " ___) | |_| | |_) |__) | |___|  _ < | || |_) | |___"
echo "|____/ \___/|____/____/ \____|_| \_\___|____/|_____|"
setterm -foreground red
echo " ================> LIKE && SHARE <================ "
setterm -foreground blue
echo ""
echo " >>> Subscribe to : ===> https://www.youtube.com/channel/UCHHlpNSr1n121wfvabPg6rQ <<< "
echo "
"
setterm -foreground green
echo " Start Now =============================> msfconsole"
echo