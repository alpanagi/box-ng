# box-ng

1. Update repositories and upgrade system `pacman -Syu`
2. Install ansible `pacman -S ansible`
3. Fetch repo `git clone https://github.com/alpanagi/box-ng.git`
4. Change directory to repo `cd box-ng`
5. Run playbook `ansible-playbook -v playbook.yaml -i inventory.txt --ask-become-pass`
