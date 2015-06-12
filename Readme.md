# OVS for docker

basically the same as [the original](https://github.com/socketplane/docker-ovs/blob/master/2.3.1/Dockerfile). The only difference:

    port = 127.0.0.1:9001

so that we can start the container like this:

docker run -itd --name=ovs-container --net=host --cap-add NET_ADMIN --cap-add SYS_MODULE -v /lib/modules:/lib/modules hvolkmer/ovs

`--net=host` is not possible with the current original container.