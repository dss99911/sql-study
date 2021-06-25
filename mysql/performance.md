My SQL 아키텍쳐



## connector
- 사용시, 큐 처리 해줘야함.
## memory

## storage engine
- MyISAM 트랜젝션이 없고, 장점이 없음. InnoDB만 사용






- 1:다 로 조인하는게 다:1보다 좋다.  반복횟수 차이가 많음.
- limit 1 이 빠르면, 데이터가 많아서 느린 것, 느리면, 성능에 문제가 있는 것.
- primary key 는 최대한 작게. 각 index의 row에 pk값이 붙어있음(row의 위치정보가 pk에 있음)
- 성능이 빨라진다면, 중복해도 괜찮음. trade off
- 갯수 구할 때, 풀스캔함. auto increment이고 삭제를 안한다면, order by desc limit1로 갯수 가져옴.
- SET SESSION tx_isolation = 'READ-COMMITED'; 중복 업데이트 dead lock 걸렸을 때. 