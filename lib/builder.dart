library json_extension_gen.builder;

import 'package:build/build.dart' show Builder, BuilderOptions;
import 'package:json_extension_gen/src/json_extension_generator.dart';
import 'package:source_gen/source_gen.dart' show SharedPartBuilder;

Builder jsonExtension(BuilderOptions _) => SharedPartBuilder(
      [JsonExtensionGenerator()],
      'jsonExtension',
    );
