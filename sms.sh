apt install -y
apt update -y
apt upgrade -y
pkg install -y
pkg update -y
pkg upgrade -y
pkg install termux-api
banner() {
echo -e "${yellow}╭━━━┳━╮╭━┳━━━╮╱╱╭━━━┳━━━┳━━━┳━╮╭━╮
┃╭━╮┃┃╰╯┃┃╭━╮┃╱╱┃╭━╮┃╭━╮┃╭━╮┃┃╰╯┃┃
┃╰━━┫╭╮╭╮┃╰━━╮╱╱┃╰━━┫╰━╯┃┃╱┃┃╭╮╭╮┃
╰━━╮┃┃┃┃┃┣━━╮┣━━╋━━╮┃╭━━┫╰━╯┃┃┃┃┃┃
┃╰━╯┃┃┃┃┃┃╰━╯┣━━┫╰━╯┃┃╱╱┃╭━╮┃┃┃┃┃┃
╰━━━┻╯╰╯╰┻━━━╯╱╱╰━━━┻╯╱╱╰╯╱╰┻╯╰╯╰╯${reset}"
sleep 1
echo -e "${blue}Author : solacezxv${reset}"
sleep 1
echo -e "${blue}TikTok : solacezr${reset}"
echo
}
function red_exit() {
echo -e "\033[1;31m〘0〙Exit\033[0m"
}
function type_red() {
local text="$1"
local interval=0.000001
for ((i = 0; i < ${#text}; i += 3)); do
echo -n -e "\033[1;31m${text:$i:3}\033[0m"
sleep $interval
done
echo
}
function type_green() {
local text="$1"
local interval=0.000001
for ((i = 0; i < ${#text}; i += 3)); do
echo -n -e "\033[1;32m${text:$i:3}\033[0m"
sleep $interval
done
echo
}
reset="\033[0m"
blue="\033[36m"
red="\033[31m"
bold="\033[1m"
red_bg="\033[41m"
green_bg="\033[42m"
yellow="\033[33m"
sms() {
sleep 1
banner
sleep 1
echo -n -e " [${red}！${reset}]"
type_green " Enter The Number Without The +00
And Without The Space, Make Sure It Starts With 0.
example: 01234567891"
echo
sleep 1
echo -n -e " [${blue}●${reset}] "
read -p "Target Number: " num
sleep 1
echo -n -e " [${blue}●${reset}] "
read -p "Text Message: " mes
sleep 1
echo -n -e " [${blue}●${reset}] "
read -p "Message Amount: " amount
sleep 1
echo -n -e " [${blue}●${reset}] "
read -p "Message Time Send: " time
sleep 5
echo
max=$amount
for i in `seq 1 $max`
do
termux-sms-send -n $num $mes
echo -n -e " [${red}！${reset}]"
type_green " Message $i Send Successfuly"
sleep $time
done
echo
sleep 3
echo -n -e " [${blue}●${reset}] "
type_green "Spamming number, Successfuly"
sleep 2
clear
home
}
home() {
clear
sleep 1
banner
type_green "〘1〙Spam SMS"
red_exit
echo
echo -e -n " [${blue}●${reset}]"
read -p " Select an Option ➞ " homereply
echo
case $homereply in
1)
echo -n -e " [${blue}●${reset}] "
type_green "SPAM SMS is Launching, Please Wait"
{ sleep 5; clear; sms; }
;;
0)
echo -n -e " [${blue}●${reset}] "
type_green " SMS-SPAM, Exited Successfuly."
;;
*)
echo -n -e " [${red}！${reset}]"
type_red " Invalid choice. Please select a valid option."
{ sleep 1; clear; home; }
;;
esac
}
homepass() {
clear
sleep 5
echo -e "${green_bg}${bold}【ABOUT THIS TOOL】${reset}"
sleep 1
echo -n -e " [${blue}●${reset}]"; type_green " This Tool is SMS Spammer, This Tool Can Spam SMS Number,
This Tool is Tested in Philippines I Don't Known if This Tool is Working To Other Country."
sleep 3
echo
echo -e "${red_bg}${bold}【DISCLAIMER】${reset}"
sleep 1
echo -n -e " [${red}！${reset}] "
type_red "I'm not responsible for anything you do with this program,
so please only use it for good and educational purposes."
sleep 3
echo
echo -n -e " [${blue}●${reset}]"
read -p " Password: " toolpass
case $toolpass in
solacexcv )
sleep 1
echo
echo -n -e " [${blue}●${reset}]"
type_green " Password Is Correct, Access Granted."
sleep 1
clear
sleep 1
home
;;
* )
echo
sleep 1
echo -n -e " [${red}！${reset}]"
type_red " Password is Incorrect, Please Join My Telegram to get The Password"
sleep 1
am start -a android.intent.action.VIEW -d https://t.me/PHILIPKYS
{ sleep 1; clear; homepass; }
;;
esac
}
homepass
