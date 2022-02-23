ansible 192.168.1.12 -m command -a "apt-get install -y grub-customizer"
ansible all -m command -a "uptime"
ansible 192.168.1.12 -m shell -a "echo Hello, Friend! | cat >> /tmp/hello.txt"
