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
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the DataEntry type in your schema. */
@immutable
class DataEntry extends Model {
  static const classType = const _DataEntryModelType();
  final String id;
  final BleedingData? _Bleeding;
  final EnergyData? _Energy;
  final MoodData? _Mood;
  final SexDrive? _SexDrive;
  final String? _progresscircleID;
  final String? _calendarID;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  BleedingData? get Bleeding {
    return _Bleeding;
  }
  
  EnergyData? get Energy {
    return _Energy;
  }
  
  MoodData? get Mood {
    return _Mood;
  }
  
  SexDrive? get SexDrive {
    return _SexDrive;
  }
  
  String get progresscircleID {
    try {
      return _progresscircleID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get calendarID {
    try {
      return _calendarID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const DataEntry._internal({required this.id, Bleeding, Energy, Mood, SexDrive, required progresscircleID, required calendarID, createdAt, updatedAt}): _Bleeding = Bleeding, _Energy = Energy, _Mood = Mood, _SexDrive = SexDrive, _progresscircleID = progresscircleID, _calendarID = calendarID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory DataEntry({String? id, BleedingData? Bleeding, EnergyData? Energy, MoodData? Mood, SexDrive? SexDrive, required String progresscircleID, required String calendarID}) {
    return DataEntry._internal(
      id: id == null ? UUID.getUUID() : id,
      Bleeding: Bleeding,
      Energy: Energy,
      Mood: Mood,
      SexDrive: SexDrive,
      progresscircleID: progresscircleID,
      calendarID: calendarID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataEntry &&
      id == other.id &&
      _Bleeding == other._Bleeding &&
      _Energy == other._Energy &&
      _Mood == other._Mood &&
      _SexDrive == other._SexDrive &&
      _progresscircleID == other._progresscircleID &&
      _calendarID == other._calendarID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("DataEntry {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("Bleeding=" + (_Bleeding != null ? _Bleeding!.toString() : "null") + ", ");
    buffer.write("Energy=" + (_Energy != null ? _Energy!.toString() : "null") + ", ");
    buffer.write("Mood=" + (_Mood != null ? _Mood!.toString() : "null") + ", ");
    buffer.write("SexDrive=" + (_SexDrive != null ? _SexDrive!.toString() : "null") + ", ");
    buffer.write("progresscircleID=" + "$_progresscircleID" + ", ");
    buffer.write("calendarID=" + "$_calendarID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  DataEntry copyWith({String? id, BleedingData? Bleeding, EnergyData? Energy, MoodData? Mood, SexDrive? SexDrive, String? progresscircleID, String? calendarID}) {
    return DataEntry._internal(
      id: id ?? this.id,
      Bleeding: Bleeding ?? this.Bleeding,
      Energy: Energy ?? this.Energy,
      Mood: Mood ?? this.Mood,
      SexDrive: SexDrive ?? this.SexDrive,
      progresscircleID: progresscircleID ?? this.progresscircleID,
      calendarID: calendarID ?? this.calendarID);
  }
  
  DataEntry.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Bleeding = json['Bleeding']?['serializedData'] != null
        ? BleedingData.fromJson(new Map<String, dynamic>.from(json['Bleeding']['serializedData']))
        : null,
      _Energy = json['Energy']?['serializedData'] != null
        ? EnergyData.fromJson(new Map<String, dynamic>.from(json['Energy']['serializedData']))
        : null,
      _Mood = json['Mood']?['serializedData'] != null
        ? MoodData.fromJson(new Map<String, dynamic>.from(json['Mood']['serializedData']))
        : null,
      _SexDrive = json['SexDrive']?['serializedData'] != null
        ? SexDrive.fromJson(new Map<String, dynamic>.from(json['SexDrive']['serializedData']))
        : null,
      _progresscircleID = json['progresscircleID'],
      _calendarID = json['calendarID'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Bleeding': _Bleeding?.toJson(), 'Energy': _Energy?.toJson(), 'Mood': _Mood?.toJson(), 'SexDrive': _SexDrive?.toJson(), 'progresscircleID': _progresscircleID, 'calendarID': _calendarID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'Bleeding': _Bleeding, 'Energy': _Energy, 'Mood': _Mood, 'SexDrive': _SexDrive, 'progresscircleID': _progresscircleID, 'calendarID': _calendarID, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField BLEEDING = QueryField(fieldName: "Bleeding");
  static final QueryField ENERGY = QueryField(fieldName: "Energy");
  static final QueryField MOOD = QueryField(fieldName: "Mood");
  static final QueryField SEXDRIVE = QueryField(fieldName: "SexDrive");
  static final QueryField PROGRESSCIRCLEID = QueryField(fieldName: "progresscircleID");
  static final QueryField CALENDARID = QueryField(fieldName: "calendarID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "DataEntry";
    modelSchemaDefinition.pluralName = "DataEntries";
    
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
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["progresscircleID"], name: "byProgressCircle"),
      ModelIndex(fields: const ["calendarID"], name: "byCalendar")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'Bleeding',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'BleedingData')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'Energy',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'EnergyData')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'Mood',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'MoodData')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'SexDrive',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'SexDrive')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: DataEntry.PROGRESSCIRCLEID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: DataEntry.CALENDARID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
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

class _DataEntryModelType extends ModelType<DataEntry> {
  const _DataEntryModelType();
  
  @override
  DataEntry fromJson(Map<String, dynamic> jsonData) {
    return DataEntry.fromJson(jsonData);
  }
}