# //사용자 관리에 관한 내용

# 보통은 루트 권한을 사용할 수 없음
# 그래서 루트 권한을 빌려서 새로운 유저를 추가할 수 있음


# 사용자 추가 및 비밀번호 지정
 sudo useradd newuser1
 sudo passwd newuser1

#  사용자 변경 : 변경하고자 하는 계정의 비밀번호
# sudo의 경우 현재 사용자의 비밀번호
su - newuser1

# chmod 권한부여| r(4), w(2), x(1), u(소유자), g(그룹), o(그외)
chmod 644 파일명 (제일 흔한 권한부여 644 664 764)
chmod u+x 파일명
chmod u-x 파일명
chmod u=r 파일명

# 소유자:그룹 변경
chown newuser1:newuser1 파일명
