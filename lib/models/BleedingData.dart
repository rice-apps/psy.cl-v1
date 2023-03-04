/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the BleedingData type in your schema. */
@immutable
class BleedingData {
  final bool? _Spotting;
  final bool? _Low;
  final bool? _Normal;

  bool? get Spotting {
    return _Spotting;
  }
  
  bool? get Low {
    return _Low;
  }
  
  bool? get Normal {
    return _Normal;
  }
  
  const BleedingData._internal({Spotting, Low, Normal}): _Spotting = Spotting, _Low = Low, _Normal = Normal;
  
  factory BleedingData({bool? Spotting, bool? Low, bool? Normal}) {
    return BleedingData._internal(
      Spotting: Spotting,
      Low: Low,
      Normal: Normal);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BleedingData &&
      _Spotting == other._Spotting &&
      _Low == other._Low &&
      _Normal == other._Normal;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("BleedingData {");
    buffer.write("Spotting=" + (_Spotting != null ? _Spotting!.toString() : "null") + ", ");
    buffer.write("Low=" + (_Low != null ? _Low!.toString() : "null") + ", ");
    buffer.write("Normal=" + (_Normal != null ? _Normal!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  BleedingData copyWith({bool? Spotting, bool? Low, bool? Normal}) {
    return BleedingData._internal(
      Spotting: Spotting ?? this.Spotting,
      Low: Low ?? this.Low,
      Normal: Normal ?? this.Normal);
  }
  
  BleedingData.fromJson(Map<String, dynamic> json)  
    : _Spotting = json['Spotting'],
      _Low = json['Low'],
      _Normal = json['Normal'];
  
  Map<String, dynamic> toJson() => {
    'Spotting': _Spotting, 'Low': _Low, 'Normal': _Normal
  };
  
  Map<String, Object?> toMap() => {
    'Spotting': _Spotting, 'Low': _Low, 'Normal': _Normal
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "BleedingData";
    modelSchemaDefinition.pluralName = "BleedingData";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'Spotting',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'Low',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'Normal',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
  });
}