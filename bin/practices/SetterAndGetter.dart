class Persion {
  String? _name;
  int? _age;

  String? get getName {
    return _name;
  }

  set setName(String? name) {
    _name = name;
  }

  // ignore: unnecessary_getters_setters
  int? get age => _age;

  // ignore: unnecessary_getters_setters
  set age(int? age) => _age = age;
}

void main() {
  var persion = Persion();

  persion._age = 24;
  persion._name = 'Rashidul Islam';

  print(persion._name);
  print(persion.age);
}
