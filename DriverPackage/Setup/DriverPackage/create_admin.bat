echo Adding Administrator Accounts...
net user "Admin" /add
echo Administrator Created
echo Adding Administrator Priviledge
net localgroup "Administrators" "Admin" /add
echo Administrator is now an Administrator