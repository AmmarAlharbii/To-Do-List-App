class Task {
  final String name;
  bool check;

  Task({required this.name, this.check = false});
  void checkChange() {
    check = !check;
  }
}
