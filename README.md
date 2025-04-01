
# 목적
- pg_bigm extension이 설치된 postgresql 도커 이미지 확보하기


# pg_bigm 이란?
- 한국어 2gram 기반 인덱스 생성
- full text search 가능


# 참고 페이지
- https://github.com/pgbigm/pg_bigm/blob/REL1_2_STABLE/docs/pg_bigm_en.md


# 준비사항
1. postgresql docker 이미지 다운
   - docker pull bitnami/postgresql:16.4.0
2. pg_bigm extension 파일 다운
   - 다운로드 페이지 : https://github.com/pgbigm/pg_bigm/releases
   - https://github.com/pgbigm/pg_bigm/releases/tag/v1.2-20240606
   - Source code (tar.gz) 파일 다운 - pg_bigm-1.2-20240606.tar.gz
   - Dockerfile 가 같은 레벨에 위치
3. docker 이미지 빌드
   - docker build -t bitnami/postgresql:16.4.0-pg_bigm --progress=plain .
4. docker 이미지 실행
   - docker run -d -h 0.0.0.0 -p 5432:5432 -e POSTGRESQL_PASSWORD=password123 --name postgresql bitnami/postgresql:16.4.0-pg_bigm

# 활성화 및 사용
- Todo