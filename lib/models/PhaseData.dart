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


/** This is an auto generated class representing the PhaseData type in your schema. */
@immutable
class PhaseData {
  final bool? _Period;
  final bool? _Ovulation;
  final bool? _Luteal;
  final bool? _Follicular;

  bool? get Period {
    return _Period;
  }
  
  bool? get Ovulation {
    return _Ovulation;
  }
  
  bool? get Luteal {
    return _Luteal;
  }
  
  bool? get Follicular {
    return _Follicular;
  }
  
  const PhaseData._internal({Period, Ovulation, Luteal, Follicular}): _Period = Period, _Ovulation = Ovulation, _Luteal = Luteal, _Follicular = Follicular;
  
  factory PhaseData({bool? Period, bool? Ovulation, bool? Luteal, bool? Follicular}) {
    return PhaseData._internal(
      Period: Period,
      Ovulation: Ovulation,
      Luteal: Luteal,
      Follicular: Follicular);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhaseData &&
      _Period == other._Period &&
      _Ovulation == other._Ovulation &&
      _Luteal == other._Luteal &&
      _Follicular == other._Follicular;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("PhaseData {");
    buffer.write("Period=" + (_Period != null ? _Period!.toString() : "null") + ", ");
    buffer.write("Ovulation=" + (_Ovulation != null ? _Ovulation!.toString() : "null") + ", ");
    buffer.write("Luteal=" + (_Luteal != null ? _Luteal!.toString() : "null") + ", ");
    buffer.write("Follicular=" + (_Follicular != null ? _Follicular!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  PhaseData copyWith({bool? Period, bool? Ovulation, bool? Luteal, bool? Follicular}) {
    return PhaseData._internal(
      Period: Period ?? this.Period,
      Ovulation: Ovulation ?? this.Ovulation,
      Luteal: Luteal ?? this.Luteal,
      Follicular: Follicular ?? this.Follicular);
  }
  
  PhaseData.fromJson(Map<String, dynamic> json)  
    : _Period = json['Period'],
      _Ovulation = json['Ovulation'],
      _Luteal = json['Luteal'],
      _Follicular = json['Follicular'];
  
  Map<String, dynamic> toJson() => {
    'Period': _Period, 'Ovulation': _Ovulation, 'Luteal': _Luteal, 'Follicular': _Follicular
  };
  
  Map<String, Object?> toMap() => {
    'Period': _Period, 'Ovulation': _Ovulation, 'Luteal': _Luteal, 'Follicular': _Follicular
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PhaseData";
    modelSchemaDefinition.pluralName = "PhaseData";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'Period',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'Ovulation',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'Luteal',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'Follicular',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
  });
}