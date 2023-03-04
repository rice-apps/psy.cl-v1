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


/** This is an auto generated class representing the Calendar type in your schema. */
@immutable
class Calendar extends Model {
  static const classType = const _CalendarModelType();
  final String id;
  final DayData? _CurrentDate;
  final PhaseData? _CurrentPhase;
  final List<DataEntry>? _DataEntries;
  final ProgressCircle? _ProgressCircle;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _calendarProgressCircleId;

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
  
  ProgressCircle? get ProgressCircle {
    return _ProgressCircle;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get calendarProgressCircleId {
    return _calendarProgressCircleId;
  }
  
  const Calendar._internal({required this.id, CurrentDate, CurrentPhase, DataEntries, ProgressCircle, createdAt, updatedAt, calendarProgressCircleId}): _CurrentDate = CurrentDate, _CurrentPhase = CurrentPhase, _DataEntries = DataEntries, _ProgressCircle = ProgressCircle, _createdAt = createdAt, _updatedAt = updatedAt, _calendarProgressCircleId = calendarProgressCircleId;
  
  factory Calendar({String? id, DayData? CurrentDate, PhaseData? CurrentPhase, List<DataEntry>? DataEntries, ProgressCircle? ProgressCircle, String? calendarProgressCircleId}) {
    return Calendar._internal(
      id: id == null ? UUID.getUUID() : id,
      CurrentDate: CurrentDate,
      CurrentPhase: CurrentPhase,
      DataEntries: DataEntries != null ? List<DataEntry>.unmodifiable(DataEntries) : DataEntries,
      ProgressCircle: ProgressCircle,
      calendarProgressCircleId: calendarProgressCircleId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Calendar &&
      id == other.id &&
      _CurrentDate == other._CurrentDate &&
      _CurrentPhase == other._CurrentPhase &&
      DeepCollectionEquality().equals(_DataEntries, other._DataEntries) &&
      _ProgressCircle == other._ProgressCircle &&
      _calendarProgressCircleId == other._calendarProgressCircleId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Calendar {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("CurrentDate=" + (_CurrentDate != null ? _CurrentDate!.toString() : "null") + ", ");
    buffer.write("CurrentPhase=" + (_CurrentPhase != null ? _CurrentPhase!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("calendarProgressCircleId=" + "$_calendarProgressCircleId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Calendar copyWith({String? id, DayData? CurrentDate, PhaseData? CurrentPhase, List<DataEntry>? DataEntries, ProgressCircle? ProgressCircle, String? calendarProgressCircleId}) {
    return Calendar._internal(
      id: id ?? this.id,
      CurrentDate: CurrentDate ?? this.CurrentDate,
      CurrentPhase: CurrentPhase ?? this.CurrentPhase,
      DataEntries: DataEntries ?? this.DataEntries,
      ProgressCircle: ProgressCircle ?? this.ProgressCircle,
      calendarProgressCircleId: calendarProgressCircleId ?? this.calendarProgressCircleId);
  }
  
  Calendar.fromJson(Map<String, dynamic> json)  
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
      _ProgressCircle = json['ProgressCircle']?['serializedData'] != null
        ? ProgressCircle.fromJson(new Map<String, dynamic>.from(json['ProgressCircle']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null,
      _calendarProgressCircleId = json['calendarProgressCircleId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'CurrentDate': _CurrentDate?.toJson(), 'CurrentPhase': _CurrentPhase?.toJson(), 'DataEntries': _DataEntries?.map((DataEntry? e) => e?.toJson()).toList(), 'ProgressCircle': _ProgressCircle?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'calendarProgressCircleId': _calendarProgressCircleId
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'CurrentDate': _CurrentDate, 'CurrentPhase': _CurrentPhase, 'DataEntries': _DataEntries, 'ProgressCircle': _ProgressCircle, 'createdAt': _createdAt, 'updatedAt': _updatedAt, 'calendarProgressCircleId': _calendarProgressCircleId
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField CURRENTDATE = QueryField(fieldName: "CurrentDate");
  static final QueryField CURRENTPHASE = QueryField(fieldName: "CurrentPhase");
  static final QueryField DATAENTRIES = QueryField(
    fieldName: "DataEntries",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (DataEntry).toString()));
  static final QueryField PROGRESSCIRCLE = QueryField(
    fieldName: "ProgressCircle",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (ProgressCircle).toString()));
  static final QueryField CALENDARPROGRESSCIRCLEID = QueryField(fieldName: "calendarProgressCircleId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Calendar";
    modelSchemaDefinition.pluralName = "Calendars";
    
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
      key: Calendar.DATAENTRIES,
      isRequired: false,
      ofModelName: (DataEntry).toString(),
      associatedKey: DataEntry.CALENDARID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: Calendar.PROGRESSCIRCLE,
      isRequired: false,
      ofModelName: (ProgressCircle).toString(),
      associatedKey: ProgressCircle.CALENDAR
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Calendar.CALENDARPROGRESSCIRCLEID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _CalendarModelType extends ModelType<Calendar> {
  const _CalendarModelType();
  
  @override
  Calendar fromJson(Map<String, dynamic> jsonData) {
    return Calendar.fromJson(jsonData);
  }
}