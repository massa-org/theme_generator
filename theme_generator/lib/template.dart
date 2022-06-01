import 'package:analyzer/dart/element/element.dart';

import 'package:theme_generator/converters.dart';

String enrichTemplate({
  required String className,
  required List<ParameterElement> required,
  required List<ParameterElement> optional,
  required List<ParameterElement> named,
  required String? accesorName,
}) {
  final all = required.followedBy(optional).followedBy(named).toList();
  final positional = required.followedBy(optional).toList();
  final String baseName = '_\$${className}Base';
  final String dataHolderName = '_\$$className';
  // final String providerName = accesorName ?? '_Theme';

  return '''
abstract class $baseName implements ThemeBase<$dataHolderName> {
  /* ALL \${e.type} get \${e.name}; */
  ${all.map((e) => '${e.type} get ${e.name};').join('\n')}

  const $baseName();
  $dataHolderName combine($dataHolderName? other) {
    if (other == null) return this as $dataHolderName;
    return $dataHolderName(
      /* POSITIONAL other.\${e.name} ?? \${e.name}, */
      ${positional.map((e) => 'other.${e.name} ?? ${e.name},').join('')}
      /* NAMED \${e.name}: other.\${e.name} ?? \${e.name},*/
      ${named.map((e) => '${e.name}: other.${e.name} ?? ${e.name},').join('')}
    );
  }

  Map<String, dynamic> toJson();
}

@JsonSerializable(includeIfNull: true)
${all.map((e) => converters[e.type.toString()]).where((e) => e != null).toSet().join('\n')}
class $dataHolderName extends $className {
  /* ALL final \${e.type} \${e.name}; */
  ${all.map((e) => '${e.metadata.map((e) => e.toSource()).join(' ')} final ${e.type} ${e.name};').join('\n')}


  const $dataHolderName(
    /* REQUIRED this.\${e.name}, */
    ${required.map((e) => 'this.${e.name},').join('')}
    /* OPTIONAL [
      this.\${e.name},
    ]*/
    ${optional.isEmpty ? '' : '[${optional.map((e) => 'this.${e.name},').join('')}]'}
    /* NAMED {
      this.\${e.name},
    } */
    ${named.isEmpty ? '' : '{${named.map((e) => 'this.${e.name},').join('')}}'}
  ) : super._();

  Map<String, dynamic> toJson() => _\$\$${className}ToJson(this);
}
''';
}
