main() {
  checkVersion();
  print('end Process');
  // 같이 실행된다. 순서 보장은 없다

  }


  // 비동기 함수
  // 미래, 내시점이 오게 되면 움직일꺼야
  // Future async
  Future checkVersion() async {
    var version = await lookUpVersion();      // await 처리는 제일 늦게 해라, 동시에 처리하되
    print(version);
  }

  int lookUpVersion() {
    return 12;
  }