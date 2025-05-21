# 현재 위치 경로를 출력력
pwd 

# 현재위치에서서 파일 및 폴더 조회
ls

# 목록 조회 자세히
ls -l

# 목록조회 자세히, 숨김파일까지
ls -al

# 목록조회 자세히, 숨김파일, 오래된 순 정렬 (최신은 alt)
ls -alrt (r = reverse , t = time)

# (현재 의치에서)디렉토리 생성
mkdir

# 특정 디렉토리로 이동
cd sejin_dir

# 상위 디렉토리로 이동
cd ..
# 또는 cd ../ (배포판 마다 셀프로그램이 달라 이 명령어가 안되는 경우도 있음 대부분 가능능)

# 루트디렉토리 (최상위디렉토리) 이동
cd /

# 직전디렉토리로 이동
cd - 

# home (/home/본인계정) 경로로 이동 
cd

# 상대경로와 절대경로
# 상대경로 : cd ../../
# 절대경로 : cd /home/sejin/sejin_dir

# 비어있는 파일 만들기
touch first_file.txt

# 파일 내용 터미널 창에 출력하기
cat first_file.txt

# 파일 내용 상위 10줄 출력하기
head 파일명

# 파일 내용 하위 10줄 출력하기
tail 파일명

# 파일내용 상/하위 n개 조회
tail -n 파일명명

# 파일 내용 실시간 조회 - "명령어 실행 한 이후에 추가된 사항만 조회하겠다"
tail -f 파일명

# 파일내용 편집기 : nano, vi
# 도스키 위/아래를 통해 이전 명령어 조회
# 이전에 실행했던 명령어 모두 조회
history
# ^c를 통해 입력명령어 취소

# 현재 내 터미널 창에 보이는 명령어 내역 정리
clear

# 파일 삭제 명령어. -f 옵션을 통해 묻지 않고 삭제
rm 파일명
# 폴더째 삭제
rm -r 폴더명명

# 터미널 창에 문자열을 출력
echo "hello world"
# echo를 통해 파일에 내용 입력
#  > : 덮어쓰기, >> : 추가모드
echo "hello world" > firs_file.txt

# cp는 복사 명령어
# cp 복사대상 복사될 파일명
# 디렉토리를 복사하고 싶은 경우에는 cp -r옵션을 붙여서 사용한다.
cp 1_file.txt 2_file.txt
cp 1_file.txt ../2_file.txt

# grep : 파일 내에서 문자열 찾기
# grep 의 옵션| r: 모든 디렉토리 내, n: 라인수 출력, i: 대소문자 구분없이
grep -rni "hello" .


# find : 이름으로 파일 또는 디렉토리 찾기
# find의 옵션|
find . -name "*.txt" 
find . -type f


# grep 과 find는 구분해서 생각해야함 두가지를 혼용해서 사용하기도 함
# 방법 1
find . -name "*.txt" -exec grep -rni "hello" {} \;

# 방법 2
find . -name "*.txt" | xargs grep -rni "hello"

# 타입은 file인 파일 중에 이름은 first로 시작하고 그 파일들 안에 hello라는 키워드가 들어가 있는 문장 찾기
find . -name "first*" -type f -exec grep -rni "hello" {} \;
find . -name "first*" -type f | xargs grep -rni "hello"