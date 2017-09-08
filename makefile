
name=ipython-dk1
image=ipython/scipyserver
host_dir=$(shell pwd)
vol1=${host_dir}/shared
mnt1=/shared
vol2=${host_dir}/notebooks
mnt2=/notebooks
pl1=8888
pd1=8888
passwd=123


pull-image:
	docker pull ipython/scipyserver

create:
	docker run -d -it  --name ${name} -v ${vol1}:${mnt1} -v ${vol2}:${mnt2} -p ${pl1}:${pd1} -e "USE_HTTP=1" -e "PASSWORD=${passwd}" ipython/scipyserver

bash:
	docker exec -it ${name} /bin/bash

stop:
	docker stop ${name}

start:
	docker start ${name}

delete:
	docker rm ${name}





