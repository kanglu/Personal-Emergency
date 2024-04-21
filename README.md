<center>
<div style="font-size: 200%">Create emergency.tgz Instructions</div>
</center>
<br/>
<hr/>

Run the `mktar.sh` zsh script file to create the emergency.tgz.

The secret is the password to your personal computer.

The passphrase is the password provided in the sealed envelope to be used during an emergency.

Upload the `emergency.tgz` to Amazon S3 storage.

<center>
<div style="font-size: 200%">Emergency Instructions</div>
</center>
<br/>
<hr/>

1. These instructions are for macOS only, so find a Mac and do the following;

1. Open a terminal application and install <a href="https://brew.sh" target="_blank">`brew`</a> (https://brew.sh) if not already installed;

1. Download the following file: https://s3.amazonaws.com/lufamily.ca/emergency.tgz;

1. Open a terminal application, and do the following:

```code
cd ~/Downloads

brew install scrypt wget

wget https://s3.amazonaws.com/lufamily.ca/emergency.tgz

tar xzvf emergency.tgz

./decrypt.sh
```

5. Use the password provided in the sealed envelope;

6. The output is the secret you will need to log into the computer in the dining room;

7. You should be able to find everything in the `Documents` folder and the `Vault.sparseimage`.
