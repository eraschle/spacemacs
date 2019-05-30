sudo apt-get install -y git
git config --global color.ui true
git config --global user.name "rascer"
git config --global user.email "erichraschle@gmail.com"
ssh-keygen -t rsa -b 4096 -C "erichraschle@gmail.com"
cat ~/.ssh/id_rsa.pub >> ~/add_it_to_github.txt
