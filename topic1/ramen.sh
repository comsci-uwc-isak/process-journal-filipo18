
#!bin/bash

#User sees the menu and chose item from
#the menu
#than his price get printed out


echo "Welcome to Ramen restaurant"
echo "~~~~~~~~~~~MENU~~~~~~~~~~~"
echo "1-Normal 500"
echo "2-Spicy 700"
echo "3-Miso ramen 600"
echo "4-Shouyu ramen 550"
echo "5-Shioramen 600"
echo "  "
echo "Enter number 1-5 to choose menu, then press ENTER"

result=0
read num

x1=550
x2=770
x3=660
x4=605
x5=660

while : 
do



	if [[ ($num -eq 1 ) ]]; then
	echo -n "Normal ramen, Total price: "
	((result=$result+$x1))
	echo $result

	elif [[ ($num -eq 2)]]; then
	echo -n "Spicy ramen, Total price: "
	((result=$result+$x2))
	echo $result 

	elif [[ ($num == 3) ]]; then
	echo -n "Miso ramen, Total price: "
	((result=$result+$x3))
	echo $result

	elif [[ ($num == 4) ]]; then 
	echo -n "Shouyu ramen, Total price: "
	((result=$result+$x4))
	echo $result

	elif [[ ($num == 5) ]]; then 
	echo -n  "Shio ramen, Total price: "
	((result=$result+$x5))
	echo $result

	else 
	echo "Incorrect choice"

	fi
 
	echo "Select another item, or press x to finish"
	read num
	if [[ ($num == x) ]]; then
	break
	fi

done

echo -n  "Thank you for your order, price is: "
echo $result 





