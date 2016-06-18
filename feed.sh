#!/bin/bash

clear

USERNAME=$(whoami)
WHEREAMI=$(pwd)

clear

echo "hp" >> /home/$USERNAME/fishfood.txt
echo "hp" >> /home/$USERNAME/fishfood.txt
echo "hp" >> /home/$USERNAME/fishfood.txt
echo "hp" >> /home/$USERNAME/fishfood.txt
echo "hp" >> /home/$USERNAME/fishfood.txt
echo "hp" >> /home/$USERNAME/fishfood.txt
echo "hp" >> /home/$USERNAME/fishfood.txt
echo "hp" >> /home/$USERNAME/fishfood.txt
echo "hp" >> /home/$USERNAME/fishfood.txt
HP=$(grep -c "hp" /home/$USERNAME/fishfood.txt)

clear

dead() {
echo "hp" > /home/$USERNAME/fishfood.txt
echo "hp" >> /home/$USERNAME/fishfood.txt
echo "hp" >> /home/$USERNAME/fishfood.txt
echo "hp" >> /home/$USERNAME/fishfood.txt
echo "hp" >> /home/$USERNAME/fishfood.txt
}

clear

if [ "$HP" -gt "85" ]
then
	notify-send --urgency="critical" "..Goldfish is Reaching Lifespan.." "$HP/100"
	sleep 1
	dead

elif [ "$HP" -lt "25" ]	
then
	notify-send --urgency="critical" "..Goldfish Needs Food.." "$HP/100"

elif [ "$HP" -gt "45" ]
then
	notify-send --urgency="critical" "..Goldfish is Happy.." "$HP/100"
else
	notify-send --urgency="critical" "..Goldfish is Healthy.." "$HP/100"
fi

clear

sleep 1

clear

bash /home/$USERNAME/Desktop/goldfish/menu.sh
