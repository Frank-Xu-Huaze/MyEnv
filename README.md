# MyEnv

Setting up environment for new working space
============================================

Example for setting up jupyter notebook on google cloud instance:
-----------------------------------------------------------------

1. Create an instance, with http/https allowed

2. Set external ip address to static

3. connect to your instance
```
gcloud compute ssh --project hazel-cipher-265321 --zone us-central1-a instance-1
```

4. Git Clone
```
sudo apt-get install git
```
then
```
ssh-keygen -t rsa
git clone git@github.com:Frank-Xu-Huaze/MyEnv.git
```
or

```
git clone https://github.com/Frank-Xu-Huaze/MyEnv.git
```

5. Make sure the env is complete
```
sudo apt-get install python3-venv
sudo apt-get install --reinstall build-essential
```

6. Makefile
```python

cd MyEnv

make setup

source ~/.env/bin/activate

make install
```

7. Download data
```python
gsutil cp gs://franksbucket/data1.pkl ~/ && gsutil cp gs://franksbucket/Model2.ipynb ~/

```

8. Setup and Configure jupyter file
```
jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser &
```
9. Open up the lab interface
```
https://<external static IP>:8888
```

