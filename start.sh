if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone Giri536/Vjclonerepo/Vjclonerepo
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Vjclonerepo
fi
cd /Vjclonerepo
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
