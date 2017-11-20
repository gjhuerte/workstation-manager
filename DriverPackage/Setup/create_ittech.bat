echo Creating ITTECH Account...
net user "ITTECH" "maiklilang" /add
echo Setting ITTECH as Administrator
net localgroup "Administrators" "ITTECH" /add
echo ITTECH Created