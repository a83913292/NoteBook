#!/bin/bash
# 上面中的 #! 是一种约定标记, 它可以告诉系统这个脚本需要什么样的解释器来执行;

echo "GitAutoPush Starting..."
time=$(date "+%Y-%m-%d %H:%M:%S")
git add .

read -t 30 -p "content:" msg

if  [ ! "$msg" ] ;then
    echo "[commit message] update man: $(whoami), update time: ${time}"
	git commit -m "commit: $(whoami), commit time: ${time}"
else
    echo "[commit message] $msg,update man: $(whoami), update time: ${time}"
	git commit -m "$msg, commit: $(whoami), commit time: ${time}"
fi

	
git push origin master
echo "GitAutoPush Ending..."