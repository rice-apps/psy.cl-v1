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

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the ProgressCircle type in your schema. */
@immutable
class ProgressCircle extends Model {
  static const classType = const _ProgressCircleModelType();
  final String id;
  final DayData? _CurrentDate;
  final PhaseData? _CurrentPhase;
  final List<DataEntry>? _DataEntries;
  final Calendar? _Calendar;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  DayData? get CurrentDate {
    return _CurrentDate;
  }
  
  PhaseData? get CurrentPhase {
    return _CurrentPhase;
  }
  
  List<DataEntry>? get DataEntries {
    return _DataEntries;
  }
  
  Calendar? get Calendar {
    return _Calendar;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const ProgressCircle._internal({required this.id, CurrentDate, CurrentPhase, DataEntries, Calendar, createdAt, updatedAt}): _CurrentDate = CurrentDate, _CurrentPhase = CurrentPhase, _DataEntries = DataEntries, _Calendar = Calendar, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory ProgressCircle({String? id, DayData? CurrentDate, PhaseData? CurrentPhase, List<DataEntry>? DataEntries, Calendar? Calendar}) {
    return ProgressCircle._internal(
      id: id == null ? UUID.getUUID() : id,
      CurrentDate: CurrentDate,
      CurrentPhase: CurrentPhase,
      DataEntries: DataEntries != null ? List<DataEntry>.unmodifiable(DataEntries) : DataEntries,
      Calendar: Calendar);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProgressCircle &&
      id == other.id &&
      _CurrentDate == other._CurrentDate &&
      _CurrentPhase == other._CurrentPhase &&
      DeepCollectionEquality().equals(_DataEntries, other._DataEntries) &&
      _Calendar == other._Calendar;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ProgressCircle {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("CurrentDate=" + (_CurrentDate != null ? _CurrentDate!.toString() : "null") + ", ");
    buffer.write("CurrentPhase=" + (_CurrentPhase != null ? _CurrentPhase!.toString() : "null") + ", ");
    buffer.write("Calendar=" + (_Calendar != null ? _Calendar!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ProgressCircle copyWith({String? id, DayData? CurrentDate, PhaseData? CurrentPhase, List<DataEntry>? DataEntries, Calendar? Calendar}) {
    return ProgressCircle._internal(
      id: id ?? this.id,
      CurrentDate: CurrentDate ?? this.CurrentDate,
      CurrentPhase: CurrentPhase ?? this.CurrentPhase,
      DataEntries: DataEntries ?? this.DataEntries,
      Calendar: Calendar ?? this.Calendar);
  }
  
  ProgressCircle.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _CurrentDate = json['CurrentDate']?['serializedData'] != null
        ? DayData.fromJson(new Map<String, dynamic>.from(json['CurrentDate']['serializedData']))
        : null,
      _CurrentPhase = json['CurrentPhase']?['serializedData'] != null
        ? PhaseData.fromJson(new Map<String, dynamic>.from(json['CurrentPhase']['serializedData']))
        : null,
      _DataEntries = json['DataEntries'] is List
        ? (json['DataEntries'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => DataEntry.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _Calendar = json['Calendar']?['serializedData'] != null
        ? Calendar.fromJson(new Map<String, dynamic>.from(json['Calendar']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'CurrentDate': _CurrentDate?.toJson(), 'CurrentPhase': _CurrentPhase?.toJson(), 'DataEntries': _DataEntries?.map((DataEntry? e) => e?.toJson()).toList(), 'Calendar': _Calendar?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'CurrentDate': _CurrentDate, 'CurrentPhase': _CurrentPhase, 'DataEntries': _DataEntries, 'Calendar': _Calendar, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField CURRENTDATE = QueryField(fieldName: "CurrentDate");
  static final QueryField CURRENTPHASE = QueryField(fieldName: "CurrentPhase");
  static final QueryField DATAENTRIES = QueryField(
    fieldName: "DataEntries",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (DataEntry).toString()));
  static final QueryField CALENDAR = QueryField(
    fieldName: "Calendar",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Calendar).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ProgressCircle";
    modelSchemaDefinition.pluralName = "ProgressCircles";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'CurrentDate',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'DayData')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'CurrentPhase',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'PhaseData')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: ProgressCircle.DATAENTRIES,
      isRequired: false,
      ofModelName: (DataEntry).toString(),
      associatedKey: DataEntry.PROGRESSCIRCLEID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: ProgressCircle.CALENDAR,
      isRequired: false,
      targetName: "progressCircleCalendarId",
      ofModelName: (Calendar).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _ProgressCircleModelType extends ModelType<ProgressCircle> {
  const _ProgressCircleModelType();
  
  @override
  ProgressCircle fromJson(Map<String, dynamic> jsonData) {
    return ProgressCircle.fromJson(jsonData);
  }
}