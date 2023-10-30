fork from https://github.com/ilanyu/ReverseProxy
本地编译
```shell
make build
```
运行
```shell
./output/bin/proxy
```
docker运行
```shell
make docker
docker run -p 8888:8888 -d xuning888/proxy2
```