# Grub Setup

I use [LVM on LUKS](https://wiki.archlinux.org/title/dm-crypt/Encrypting_an_entire_system#LVM_on_LUKS).

To setup run:

```bash
sudo cp ./etc/default/grub /etc/default/grub
sudo mkdir /boot/grub/themes
sudo cp -r ./boot/grub/themes/* /boot/grub/themes
sudo grub-mkconfig -o /boot/grub/grub.cfg
```
