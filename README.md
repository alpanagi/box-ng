# box-ng

1. Fetch repo: `git clone https://github.com/alpanagi/box-ng.git`
2. Change directory to repo: `cd box-ng`
3. Install ansible: `pacman -S ansible`
4. Run: `ansible-playbook playbook.yaml --ask-become-pass`
5. Log into Firefox account to enable Sync
6. Install proprietary nvidia driver
7. Copy ssh keys and config to new machine and chmod them to 700

# Docker Without sudo

1. If you are feeling brave: `sudo usermod -a -G docker alex`

# Optional Google Cloud

1. curl https://sdk.cloud.google.com | bash
2. Restart shell
3. gcloud init
4. gcloud components update
