for ano in {2015..2018}
do
	for mes in {1..12}
	do
		for dia in {1..31}
		do 
			if [ $mes -lt 10 ]
			then			
				if [ $dia -lt 10 ]
				then				
					wget https://www.wsj.com/news/archive/${ano}0${mes}0${dia}					
				else
					wget https://www.wsj.com/news/archive/${ano}0${mes}${dia}
				fi
			else 
				if [ $dia -lt 10 ]
				then
					wget https://www.wsj.com/news/archive/${ano}${mes}0${dia}
				else
					wget https://www.wsj.com/news/archive/${ano}${mes}${dia}
				fi				
			fi
		done
	done
done
