# docker-rocketmq

## 4.2.0

**build**

```sh
./build.sh
```

**run**

```
# first time
./run.sh

# after first time 
docker start rmqnamesrv
docker start rmqbroker
```

**notice**

rocketmq-4.2.0 require 8G(broker) 4G(namesrv) memory to run , it's too mutch for dev env.
so I modify the memory params to `JAVA_OPT_EXT=-Xms1g -Xmx1g -Xmn500m` in `run.sh`
if you want change it ,just do it.