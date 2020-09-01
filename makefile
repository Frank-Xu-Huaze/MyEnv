setup:
	python3 -m venv ~/.venv
	echo "source .venv/bin/activate" >> ~/.zshrc

install:
	pip install --upgrade pip && pip install -r requirements.txt
