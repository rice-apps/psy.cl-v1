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


/** This is an auto generated class representing the MoodData type in your schema. */
@immutable
class MoodData {
  final bool? _Happy;
  final bool? _Sad;
  final bool? _Senstitive;

  bool? get Happy {
    return _Happy;
  }
  
  bool? get Sad {
    return _Sad;
  }
  
  bool? get Senstitive {
    return _Senstitive;
  }
  
  const MoodData._internal({Happy, Sad, Senstitive}): _Happy = Happy, _Sad = Sad, _Senstitive = Senstitive;
  
  factory MoodData({bool? Happy, bool? Sad, bool? Senstitive}) {
    return MoodData._internal(
      Happy: Happy,
      Sad: Sad,
      Senstitive: Senstitive);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoodData &&
      _Happy == other._Happy &&
      _Sad == other._Sad &&
      _Senstitive == other._Senstitive;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("MoodData {");
    buffer.write("Happy=" + (_Happy != null ? _Happy!.toString() : "null") + ", ");
    buffer.write("Sad=" + (_Sad != null ? _Sad!.toString() : "null") + ", ");
    buffer.write("Senstitive=" + (_Senstitive != null ? _Senstitive!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  MoodData copyWith({bool? Happy, bool? Sad, bool? Senstitive}) {
    return MoodData._internal(
      Happy: Happy ?? this.Happy,
      Sad: Sad ?? this.Sad,
      Senstitive: Senstitive ?? this.Senstitive);
  }
  
  MoodData.fromJson(Map<String, dynamic> json)  
    : _Happy = json['Happy'],
      _Sad = json['Sad'],
      _Senstitive = json['Senstitive'];
  
  Map<String, dynamic> toJson() => {
    'Happy': _Happy, 'Sad': _Sad, 'Senstitive': _Senstitive
  };
  
  Map<String, Object?> toMap() => {
    'Happy': _Happy, 'Sad': _Sad, 'Senstitive': _Senstitive
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "MoodData";
    modelSchemaDefinition.pluralName = "MoodData";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'Happy',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'Sad',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'Senstitive',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
  });
}