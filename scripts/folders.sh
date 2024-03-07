printf 'Which year would you like to start with? '
read answer_start
clear
printf 'Which year would you like to end with? '
read answer_end

for i in {answer_start..answer_end}
do
	mkdir $i
	cd $i
	mkdir January
	mkdir February
	mkdir March
	mkdir April
	mkdir May
	mkdir June
	mkdir July
	mkdir August
	mkdir September
	mkdir October
	mkdir November
	mkdir December
	cd ..
done
