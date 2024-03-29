# Ubuntu-nginx

## STEP 1
### Ubuntu pull & run
- Ubuntu image pull
```bash
$ docker pull ubuntu:22.04
```
- Container run
```bash
$ docker run -it --name ubuntu-nginx ubuntu:22.04
```
## STEP 2
### nginx 설치
- bash 터미널로 Container 진입
```bash
$ docker exec -it ubuntu-nginx bash
```
- nginx 설치
```bash
$ apt update
$ apt install nginx
```
## STEP 3
### Dockerfile
- nginx install 시  abort 이슈 해결을 위해 -y 옵션 추가
- 컨테이너가 실행되고 nginx 프로세스가 포그라운드에서 실행하도록 CMD 실행
```
FROM ubuntu:22.04

RUN apt update

RUN apt install -y nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
```
## STEP 4
### 컨테이너 생성
```bash
$ sudo docker run --name dk -p 8001:80 dk-ubuntu-nginx:0.1.0
nginx version: nginx/1.18.0 (Ubuntu)
```
## 실행화면
- nginx 기본 index.html이 보이는 것을 확인
![image](https://github.com/choi3179/ubuntu-nginx/assets/66417882/173ab813-76ef-4a52-b777-3a74ff6fc09a)
