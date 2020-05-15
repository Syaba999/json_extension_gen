import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:source_gen/source_gen.dart';

class JsonExtensionGenerator extends GeneratorForAnnotation<JsonSerializable> {
  @override
  generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    if (element is! ClassElement) throw "$element is not a ClassElement";
    final ClassElement classElement = element as ClassElement;
    return '''
     extension ${classElement.name}JsonSerializableExtension on ${classElement.name} {
       static ${classElement.name} fromJson(Map<String, dynamic> json) => _\$${classElement.name}FromJson(json);
       Map<String, dynamic> toJson() => _\$${classElement.name}ToJson(this);
     }
    ''';
  }
}
