# MyEnv

Setting up environment for new working space
============================================

Example for setting up jupyter notebook on google cloud instance:
-----------------------------------------------------------------

1. Create an instance, with http/https allowed

2. Set external ip address to static

3. connect to your instance
```python
gcloud compute ssh --project hazel-cipher-265321 --zone us-central1-a instance-1 -- -L 8080:localhost:8080
```

2. Generate key and set the key to your github
```python
ssh-keygen -t rsa
```

4. Git clone
```python
sudo apt install git

git clone git@github.com:Frank-Xu-Huaze/MyEnv.git
```

5. Make sure the env is complete
```python
sudo apt-get install --reinstall build-essential
```

6. Makefile
```python
make setup

source ~/.env/bin/activate

make install
```

10. Setup and Configure jupyter file
```python
jupyter notebook --generate-config
```
```python
vim ~/.jupyter/jupyter_notebook_config.py
```

and add:

```python
c = get_config()
c.NotebookApp.ip = '*'
c.NotebookApp.open_browser = False
c.NotebookApp.port = 8888
```

11. Download data
```python
gsutil cp gs://hazel-cipher-265321.appspot.com/data1.pkl ~/
```


