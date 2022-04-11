echo "removing unwanted file systems"
echo "if one of these is needed, use the command 'sudo apt install <package>'"

sudo apt purge cramfs
sudo apt purge freevxfs
sudo apt purge jffs2
sudo apt purge hfs
sudo apt purge hfs-boot
sudo apt purge hfsplus
sudo apt purge squashfs
sudo apt purge udf
