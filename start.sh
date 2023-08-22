if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone Giri536/giribots /giribots
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /giribots
fi
cd /giribots
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
