curl -L https://www.openwall.com/john/k/john-1.9.0-jumbo-1.tar.gz > john.tar.gz && tar -xf john.tar.gz
cd john-1.9.0-jumbo-1/src && ./configure && make -s clean && make -sj4
sudo scp -P 4242 flag00@192.168.1.26:/etc/passwd passwd
./john-1.9.0-jumbo-1/run/john passwd
./john-1.9.0-jumbo-1/run/john passwd --show 