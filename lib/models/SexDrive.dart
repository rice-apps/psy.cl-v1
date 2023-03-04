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


/** This is an auto generated class representing the SexDrive type in your schema. */
@immutable
class SexDrive {
  final bool? _Withdrawn;
  final bool? _High;
  final bool? _Solo;

  bool? get Withdrawn {
    return _Withdrawn;
  }
  
  bool? get High {
    return _High;
  }
  
  bool? get Solo {
    return _Solo;
  }
  
  const SexDrive._internal({Withdrawn, High, Solo}): _Withdrawn = Withdrawn, _High = High, _Solo = Solo;
  
  factory SexDrive({bool? Withdrawn, bool? High, bool? Solo}) {
    return SexDrive._internal(
      Withdrawn: Withdrawn,
      High: High,
      Solo: Solo);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SexDrive &&
      _Withdrawn == other._Withdrawn &&
      _High == other._High &&
      _Solo == other._Solo;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("SexDrive {");
    buffer.write("Withdrawn=" + (_Withdrawn != null ? _Withdrawn!.toString() : "null") + ", ");
    buffer.write("High=" + (_High != null ? _High!.toString() : "null") + ", ");
    buffer.write("Solo=" + (_Solo != null ? _Solo!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  SexDrive copyWith({bool? Withdrawn, bool? High, bool? Solo}) {
    return SexDrive._internal(
      Withdrawn: Withdrawn ?? this.Withdrawn,
      High: High ?? this.High,
      Solo: Solo ?? this.Solo);
  }
  
  SexDrive.fromJson(Map<String, dynamic> json)  
    : _Withdrawn = json['Withdrawn'],
      _High = json['High'],
      _Solo = json['Solo'];
  
  Map<String, dynamic> toJson() => {
    'Withdrawn': _Withdrawn, 'High': _High, 'Solo': _Solo
  };
  
  Map<String, Object?> toMap() => {
    'Withdrawn': _Withdrawn, 'High': _High, 'Solo': _Solo
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "SexDrive";
    modelSchemaDefinition.pluralName = "SexDrives";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'Withdrawn',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'High',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'Solo',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
  });
}