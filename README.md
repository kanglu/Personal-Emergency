# Preparation Instructions

Run the `mktar.sh` zsh script file to create the `emergency.tgz`.

The secret is whatever you like to share with your successor(s) during an emergency.

The passphrase is the password provided in the sealed envelope to be used during an emergency to access the secret. This passphrase is typically provided in a sealed envelope so that in case of a false emergency, you will know that the secret has been obtained.

Upload the `emergency.tgz` to Amazon S3 storage, and make this publicly available or only to your successor(s).

# Emergency Instructions

1. These instructions are for macOS only, so find a Mac and do the following;

1. Open a terminal application and install <a href="https://brew.sh" target="_blank">`brew`</a> (https://brew.sh) if not already installed;

1. With the same terminal, do the following:

```code
cd ~/Downloads

brew install scrypt wget

wget https://s3.amazonaws.com/lufamily.ca/emergency.tgz

tar xzvf emergency.tgz

./decrypt.sh
```

4. Use the password provided in the sealed envelope and login as your father;

6. The output is the secret you will need to log into the computer in the dining room;

7. You should be able to find everything in the `Documents` folder and the `Vault.sparseimage`.

8. Once you open the `Vault.sparseimage`, you will see a `Personal Information` on the Desktop. This folder should contain all the information you need. Pay special attention to `Will & Succession/Succession Plan.pptx` file, which will contain more detail information.

9. Be sure to open the PowerPoint file and view it in Reader Mode.
