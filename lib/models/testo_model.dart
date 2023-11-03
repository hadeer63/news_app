import 'package:equatable/equatable.dart';

class Testo extends Equatable {
  String id;
  String name;
  int age;

  Testo(this.id, this.name, this.age);

  @override
  // TODO: implement props
  List<Object?> get props => [name, id, age];
}
