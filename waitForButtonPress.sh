#!/bin/bash
#Pin 0 RED 1 GREEN 2 YELLOW 3 BLUE

gpio mode 5 in #Sets pin 5 (button as the input)
gpio mode 5 up # Sets pin 5 to pull up resisitor
b=$(gpio read 5)
for value in {0..4}
do
  gpio mode $value out

done

echo $b 
#while true
#do
b=$(gpio write 5 0) 
if [[$b -eq 0]]
then
echo TEST
#break
fi
echo WAITING
#done

#while true
#do
b=$(gpio write 5 1)
if [[$b -eq 1]]
then
        gpio write 5 0
	echo BUTTON IS PRESSED
#	break
fi
#done
echo BUTTON IS RELEASED
