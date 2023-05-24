#!/usr/bin/env bash
BK="\e[7m"
RT="\e[0m"
echo -e "Make sure you're root before installing the tools"
clear
mkdir -p ~/tools
mkdir -p ~/tools/.tmp
mkdir -p ~/.gf
mkdir -p ~/wordlists/
mkdir -p ~/burp_output/
cd

echo -e "${BK}                              ${RT}" | tr -d '\n' | pv -qL 4; echo -e " ${BK}INSTALLING ALL DEPENDENCIES${RT}"
sudo apt-get update -y
#sudo apt-get dist-upgrade -y
sudo apt-get install git python3 python3-pip snapd cmake jq libpcap-dev screen build-essential clang zip unzip pv -y

echo -e "- Installing go-lang"
goversion=$(curl -ks -L https://go.dev/VERSION?m=text)
wget https://go.dev/dl/$goversion.linux-amd64.tar.gz -q
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf $goversion.linux-amd64.tar.gz
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
echo 'export GOROOT=/usr/local/go' >> ~/.bashrc
echo 'export GOPATH=$HOME/go'   >> ~/.bashrc            
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashrc   
source ~/.bashrc

echo -e "- Installing chromium"
sudo snap install chromium > /dev/null 2>&1

echo -e " "
echo -e "${BK}                              ${RT}" | tr -d '\n' | pv -qL 4; echo -e " ${BK}DOWNLOADING ALL TOOLS FROM GITHUB${RT}"

echo -e "- Installing sublister"
cd && git clone https://github.com/aboul3la/Sublist3r.git ~/tools/Sublist3r > /dev/null 2>&1; cd ~/tools/Sublist3r; sudo install -r requirements.txt > /dev/null 2>&1

echo -e "- Installing bhedak"
cd && pip3 install bhedak > /dev/null 2>&1

echo -e "- Installing uro"
cd && pip3 install uro > /dev/null 2>&1

echo -e "- Installing anew"
go install github.com/tomnomnom/anew@latest > /dev/null 2>&1

#echo -e "- Installing naabu"
#go install github.com/projectdiscovery/naabu/v2/cmd/naabu@latest > /dev/null 2>&1

echo -e "- Installing gobuster"
go install github.com/OJ/gobuster/v3@latest > /dev/null 2>&1

echo -e "- Installing gf"
go install github.com/tomnomnom/gf@latest > /dev/null 2>&1

echo -e "- Installing gospider"
GO111MODULE=on go install github.com/jaeles-project/gospider@latest > /dev/null 2>&1

#echo -e "- Installing aquatone"
#wget -q https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip > /dev/null 2>&1; unzip aquatone_linux_amd64_1.7.0.zip > /dev/null 2>&1; mv aquatone /usr/bin/; rm -rf aquatone* LICENSE.txt README.md

echo -e "- Installing assetfinder"
go install github.com/tomnomnom/assetfinder@latest > /dev/null 2>&1

echo -e "- Installing gau"
go install github.com/lc/gau/v2/cmd/gau@latest > /dev/null 2>&1

echo -e "- Installing waybackurls"
go install github.com/tomnomnom/waybackurls@latest > /dev/null 2>&1

echo -e "- Installing kxss"
go install github.com/Emoe/kxss@latest > /dev/null 2>&1

echo -e "- Installing qsreplace"
go install github.com/tomnomnom/qsreplace@latest > /dev/null 2>&1

echo -e "- Installing ffuf"
go install github.com/ffuf/ffuf@latest > /dev/null 2>&1

echo -e "- Installing dnsx"
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest > /dev/null 2>&1

echo -e "- Installing notify"
go install -v github.com/projectdiscovery/notify/cmd/notify@latest > /dev/null 2>&1

echo -e "- Installing dalfox"
go install github.com/hahwul/dalfox/v2@latest > /dev/null 2>&1

echo -e "- Installing nuclei"
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest > /dev/null 2>&1

echo -e "- Installing subfinder"
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest > /dev/null 2>&1

echo -e "- Installing httpx"
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest > /dev/null 2>&1

echo -e "- Installing gobuster"
go install github.com/OJ/gobuster/v3@latest > /dev/null 2>&1

echo -e "- Installing chromedp"
go install github.com/chromedp/chromedp@latest > /dev/null 2>&1

echo -e "- Installing Gxss"
cd ~/tools/.tmp && git clone https://github.com/KathanP19/Gxss.git > /dev/null 2>&1
cd Gxss && go build main.go > /dev/null 2>&1
chmod +x main
mv main Gxss
sudo mv Gxss /usr/bin/


echo -e "- Installing Arjun"
pip3 install arjun

echo -e "- Installing Subjs"
go install -v github.com/lc/subjs@latest > /dev/null 2>&1

echo -e "- Installing LinkFinder"
cd ~/tools/ && git clone https://github.com/GerbenJavado/LinkFinder.git > /dev/null 2>&1
cd LinkFinder
pip3 install -r LinkFinder/requirements.txt > /dev/null 2>&1

echo -e "- Installing Dirsearch"
cd  ~/tools/ && git clone https://github.com/maurosoria/dirsearch.git --depth 1
pip3 install -r dirsearch/requirements.txt > /dev/null 2>&1

echo -e "- Installing SecretFinder"
cd ~/tools/ && git clone https://github.com/m4ll0k/SecretFinder.git > /dev/null 2>&1
pip3 install -r SecretFinder/requirements.txt > /dev/null 2>&1

echo -e "- Installing GETJSWORDS.PY"
cd ~/tools/ && mkdir getjswords
cd getjswords
wget https://raw.githubusercontent.com/m4ll0k/Bug-Bounty-Toolz/master/getjswords.py

echo -e "- Installing JSVAR.sh"
cd ~/tools/ && mkdir jsvar
cd jsvar
wget https://gist.githubusercontent.com/KathanP19/d2cda2f99c0b60d64b76ee6039b37e47/raw/eb105a4de06502b2732df9d682c61189c3703685/jsvar.sh

echo -e "- Installing Katana"
go install github.com/projectdiscovery/katana/cmd/katana@latest

echo -e "- Installing collector.py"
cd ~/tools && wget https://raw.githubusercontent.com/m4ll0k/BBTz/master/collector.py &> /dev/null

echo -e " "
echo -e "${BK}                              ${RT}" | tr -d '\n' | pv -qL 4; echo -e " ${BK}DOWNLOADING ALL THE WORDLISTS${RT}"
cd ~/wordlists/
echo -e "- Downloading subdomains wordlists"
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/DNS/deepmagic.com-prefixes-top50000.txt -O subdomains.txt > /dev/null 2>&1
echo -e "- Downloading resolvers wordlists"
wget https://raw.githubusercontent.com/janmasarik/resolvers/master/resolvers.txt -O resolvers.txt > /dev/null 2>&1
echo -e "- Downloading fuzz wordlists"
wget https://raw.githubusercontent.com/Bo0oM/fuzz.txt/master/fuzz.txt -O fuzz.txt > /dev/null 2>&1

rm -rf ~/tools/.tmp/ > /dev/null
echo -e "- Downloading GitDorker"
cd ~/tools && git clone https://github.com/obheda12/GitDorker.git 2> /dev/null
pip install -r GitDorker/requirements.txt 2> /dev/null

echo -e "- Installing gf"
cd ~/tools && git clone https://github.com/tomnomnom/gf.git && mv gf/examples/*.json ~/.gf/ 2> /dev/null
cd ~/tools && git clone https://github.com/1ndianl33t/Gf-Patterns && mv Gf-Patterns/*.json ~/.gf 2> /dev/null


sudo cp ~/go/bin/* /usr/bin/ > /dev/null
nuclei -update-templates > /dev/null
sleep 2s


mkdir ~/wordlists
cd ~/wordlists
wget https://raw.githubusercontent.com/PortSwigger/param-miner/master/resources/params 2> /dev/null
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/DNS/subdomains-top1million-110000.txt 2> /dev/null

echo -e " "
echo -e "${BK}                              ${RT}" | tr -d '\n' | pv -qL 4; echo -e " ${BK}FINISHING UP${RT}"
echo -e "PLEASE CONFIGURE NOTIFY API'S IN ${BK} ~/.config/notify/provider-config.yaml ${RT} FILE IF YOU WANT NOTICE TELEGRAM"


