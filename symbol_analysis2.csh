#!/bin/csh -f 

set script_location3=`dirname $0` # `dirname $0` represents obtaining the directory of the script
echo "the script location3 is : `cd $script_location3 && pwd`" # first change the current directory; second, pwd printed the current directory. So we can see that the current directory (absolute path) printed. 

awk 'END{print NR}' $script_location3/CASE001/CASE001_RFIF_Ant0_RAM_64.dat

set ab1 = CASE001
awk 'END{print NR}' $script_location3/$ab1/{$ab1}_RFIF_Ant0_RAM_64.dat


set jj = 1
set num_PBCH = 30

while( $jj <= $num_PBCH)
#	echo "biubiubiu"
#	@j =$j +1
	echo "case num : $jj"

	if ($jj < 10) then
	  awk 'END{print NR}' $script_location3/CASE00{$jj}/CASE00{$jj}_RFIF_Ant0_RAM_64.dat
  else
    awk 'END{print NR}' $script_location3/CASE0{$jj}/CASE0{$jj}_RFIF_Ant0_RAM_64.dat
	endif
@ jj += 1

end

set jj = 1
 awk 'END{print NR}' $script_location3/CASE00{$jj}/CASE00{$jj}_RFIF_Ant0_RAM_64.dat
awk 'NR==4||NR==3' $script_location3/CASE00{$jj}/CASE00{$jj}_RFIF_Ant0_RAM_64.dat

#awk -F "" '{print $2,$3}'  $script_location3/CASE00{$jj}/CASE00{$jj}_RFIF_Ant0_RAM_64.dat
