# Json Serialization Extension

Generate extension for JSON factory and toJson

## Getting Started

1. Add <a href="https://pub.dev/packages/json_serializable">json_serializable</a> first
2. In `dev_dependencies` add
```
dev_dependencies:
  json_extension_gen:
    git:
      url: git://github.com/Syaba999/json_extension_gen
```
3. Run `flutter pub upgrade`

## Usage example

1. Create class with `@JsonSerializable()` annotation
```
part 'user.g.dart'

@JsonSerializable()
class User {
  final String name;
  final int age;
  
  A(this.name, this.age);
}
```
2. Run `flutter pub run build_runner build`

3. It's all :)

   For convert to JSON use
   ```
   User user = User("Adam", 23);
   Map<String, dynamic> json = user.toJson();
   ```
   For create object from JSON use extension with name `ClassNameFromJson`, method `parse`
   ```
   Map<String, dynamic> json = { "name":"Adam", "age":23 };
   User user = UserFromJson.parse(json);
   ```
