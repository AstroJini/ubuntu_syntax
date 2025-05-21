# 프로세스 목록조회
ps -ef
ps -ef | grep "nginx"
# 패키지 관련
# yum : 레드햇계열 패키지관리도구
# apt 또는 apt-get : 데비안계열 패키지 관리도구
# 패키지 목록 최신화
sudo apt update
# nginx 설치
sudo apt install nginx
# 프로그램 실행관리 도구 : systemctl
sudo systemctl start nginx
sudo systemctl stop nginx
# 프로세스 강제 종료
kill -9 프로세스ID

# 네트워크 관련한 명령어
# 로컬 ip정보 조회
ipconfig


# 특정 도메인의 ip 주소 정보 조회 : DNS서버에 문의
nslookup naver.com

# 네트워크 연결상태 조회 -> 기업간의 네트워크 연결상태를 조회할 때 위주로 사용함
# 일반적으로 ping은 보안상 막아두고 있음
ping IP주소
ping 8.8.8.8 -> google dns server

# 특정 서버를 이용할 수 있는지, 프로그램을 실행시킬 수 있는지
# ip와 포트를 이용해, 특정 프로그램의 이용가능상태까지 조회
# 일반적으로 telnet 막혀있거나, 사용하기를 권장하지 않음.
# 주로 nc -zv위주로 사용함 net cat의 약어임임
talnet IP주소 포트번호
nc -zv IP주소(또는 도메인) 포트번호호

# 원격 접속 : 22port
# ec2를 통해 원격접속 가능한 pc생성성
ssh username@도메인주소 (또는 ip  주소)
ssh -i

# 원격파일전송 : 22port
scp 전송하고자하는 파일 원격지주소