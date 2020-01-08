import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'person.g.dart';

abstract class Person implements Built<Person, PersonBuilder> {
  static Serializer<Person> get serializer => _$personSerializer;

  // Can never be null.
  int get id;

  @nullable
  int get age;

  @nullable
  @BuiltValueField(wireName: 'first_name')
  String get firstName;

  @nullable
  BuiltList<String> get hobbies;

  Person._();
  factory Person([void Function(PersonBuilder) updates]) = _$Person;
}