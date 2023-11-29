Steps and command to create ssh keys.

# Create SSH Keys
ssh-keygen

Once the command is executed it will ask for the location where you want to genrate the file and using what name.

Important Note : If you give passphrase during genration, during evertime you login to VM, you also need to provide you passphrase.

# List Files
ls -lrt

# Permissions for private key
chmod 400 keys

# for windows users use:

icacls.exe keys /reset
icacls.exe keys /grant:r "$($env:username):(r)"
icacls.exe keys /inheritance:r

thats it! your keys.pem have same restrisctions as you use chmod 400
