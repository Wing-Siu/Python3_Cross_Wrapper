if [ "$(uname)" == "Linux" ]; then
	echo "$(uname)";
	pip3 install -r requirements.txt
else
	pip install -r requirements.txt ## For FreeBSD
fi

pyinstaller --onefile example.py
find . -name '*.pyc' -delete
find . -name '__pycache__' -type d | xargs rm -fr
find . -name '.pytest_cache' -type d | xargs rm -fr
rm -rf build/
