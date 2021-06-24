# wmware-new-horizon-client
Installation and login automation script of VMware horizon client

In this repository, you can find the script of the Linux and Mac installation script of the VMware horizon client, and also after the installation, we have an automation script included in this repository to automate the VMware horizon client login process.

# Login Automation Script
If you are using VMware horizon client, we know that we need to manually insert the username, passcode, again username, password and domain this will take lots of time, and very irritating to do it again and again. So using this script you can automate the login process.

# Install/Upgrade Vmware Horizon Client
In a single step, you only need to run the script, if you are on Linux run `linux_install.sh`, or if you are using mac please run `mac_install.sh`.

# Login Automation Script Setup Guide

1. Open the pre.env.sh file in an editor
2. Update the values in place of #CHANGE_ME
3. Run the script (./pre.env.sh) 

Congratulations!! you have successfully configured the automation script, now you can `vhc_login.sh` command from your terminal.
