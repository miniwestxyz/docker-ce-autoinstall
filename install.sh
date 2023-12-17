YELLOW='\033[1;33m'
Magenta='\033[0;35m'
NC='\033[0m' 

clear

echo -e "${Magenta}Docker CE Install Script :)${NC}"
echo -e "${Magenta}Profession natürlich :)${NC}"
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
echo -e "${YELLOW}Installation fertig :)${NC}"