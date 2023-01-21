if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Lucifer86790/220.git /220
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /220
fi
cd /220
pip3 install -U -r requirements.txt
echo "Starting Lucifer...."
python3 bot.py
