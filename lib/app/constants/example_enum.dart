enum ExampleEnum {
  ok(0, 'ok'), //성공
  fail(1, 'fail'); // 실패

  const ExampleEnum(this.id, this.desc);
  final int id;
  final String desc;
}
