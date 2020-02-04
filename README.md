# MyEnv
Set up environment for new working space

Example for setting up jupyter notebook on google cloud instance:

1. Create an instance, with http/https allowed

2. set external ip address to static

3. 
'''python
gcloud compute ssh --project hazel-cipher-265321 --zone us-central1-a instance-1 -- -L 8080:localhost:8080
'''

2. 
ssh-keygen -t rsa, set the key to your github

3. sudo apt install git

4. git clone git@github.com:Frank-Xu-Huaze/MyEnv.git

5. sudo apt-get install --reinstall build-essential

6. make setup

7. source ~/.env/bin/activate

8. make install

9. jupyter notebook --generate-config

10. vim ~/.jupyter/jupyter_notebook_config.py

and add:

c = get_config()
c.NotebookApp.ip = '*'
c.NotebookApp.open_browser = False
c.NotebookApp.port = 8888

11. gsutil cp gs://hazel-cipher-265321.appspot.com/data1.pkl ~/


