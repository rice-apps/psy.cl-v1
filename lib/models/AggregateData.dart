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


/** This is an auto generated class representing the AggregateData type in your schema. */
@immutable
class AggregateData extends Model {
  static const classType = const _AggregateDataModelType();
  final String id;
  final int? _averageCycleDuration;
  final int? _averagePeriodDuration;
  final int? _averageSexDrive;
  final int? _averageAge;
  final int? _averageMood;
  final int? _averageEnergy;
  final int? _averageBleeding;
  final List<UserData>? _ageRelation;
  final List<UserData>? _sexDriveRelation;
  final List<UserData>? _moodRelation;
  final List<UserData>? _energyRelation;
  final List<UserData>? _bleedingRelation;
  final List<UserData>? _periodDurationRelation;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  int? get averageCycleDuration {
    return _averageCycleDuration;
  }
  
  int? get averagePeriodDuration {
    return _averagePeriodDuration;
  }
  
  int? get averageSexDrive {
    return _averageSexDrive;
  }
  
  int? get averageAge {
    return _averageAge;
  }
  
  int? get averageMood {
    return _averageMood;
  }
  
  int? get averageEnergy {
    return _averageEnergy;
  }
  
  int? get averageBleeding {
    return _averageBleeding;
  }
  
  List<UserData>? get ageRelation {
    return _ageRelation;
  }
  
  List<UserData>? get sexDriveRelation {
    return _sexDriveRelation;
  }
  
  List<UserData>? get moodRelation {
    return _moodRelation;
  }
  
  List<UserData>? get energyRelation {
    return _energyRelation;
  }
  
  List<UserData>? get bleedingRelation {
    return _bleedingRelation;
  }
  
  List<UserData>? get periodDurationRelation {
    return _periodDurationRelation;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const AggregateData._internal({required this.id, averageCycleDuration, averagePeriodDuration, averageSexDrive, averageAge, averageMood, averageEnergy, averageBleeding, ageRelation, sexDriveRelation, moodRelation, energyRelation, bleedingRelation, periodDurationRelation, createdAt, updatedAt}): _averageCycleDuration = averageCycleDuration, _averagePeriodDuration = averagePeriodDuration, _averageSexDrive = averageSexDrive, _averageAge = averageAge, _averageMood = averageMood, _averageEnergy = averageEnergy, _averageBleeding = averageBleeding, _ageRelation = ageRelation, _sexDriveRelation = sexDriveRelation, _moodRelation = moodRelation, _energyRelation = energyRelation, _bleedingRelation = bleedingRelation, _periodDurationRelation = periodDurationRelation, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory AggregateData({String? id, int? averageCycleDuration, int? averagePeriodDuration, int? averageSexDrive, int? averageAge, int? averageMood, int? averageEnergy, int? averageBleeding, List<UserData>? ageRelation, List<UserData>? sexDriveRelation, List<UserData>? moodRelation, List<UserData>? energyRelation, List<UserData>? bleedingRelation, List<UserData>? periodDurationRelation}) {
    return AggregateData._internal(
      id: id == null ? UUID.getUUID() : id,
      averageCycleDuration: averageCycleDuration,
      averagePeriodDuration: averagePeriodDuration,
      averageSexDrive: averageSexDrive,
      averageAge: averageAge,
      averageMood: averageMood,
      averageEnergy: averageEnergy,
      averageBleeding: averageBleeding,
      ageRelation: ageRelation != null ? List<UserData>.unmodifiable(ageRelation) : ageRelation,
      sexDriveRelation: sexDriveRelation != null ? List<UserData>.unmodifiable(sexDriveRelation) : sexDriveRelation,
      moodRelation: moodRelation != null ? List<UserData>.unmodifiable(moodRelation) : moodRelation,
      energyRelation: energyRelation != null ? List<UserData>.unmodifiable(energyRelation) : energyRelation,
      bleedingRelation: bleedingRelation != null ? List<UserData>.unmodifiable(bleedingRelation) : bleedingRelation,
      periodDurationRelation: periodDurationRelation != null ? List<UserData>.unmodifiable(periodDurationRelation) : periodDurationRelation);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggregateData &&
      id == other.id &&
      _averageCycleDuration == other._averageCycleDuration &&
      _averagePeriodDuration == other._averagePeriodDuration &&
      _averageSexDrive == other._averageSexDrive &&
      _averageAge == other._averageAge &&
      _averageMood == other._averageMood &&
      _averageEnergy == other._averageEnergy &&
      _averageBleeding == other._averageBleeding &&
      DeepCollectionEquality().equals(_ageRelation, other._ageRelation) &&
      DeepCollectionEquality().equals(_sexDriveRelation, other._sexDriveRelation) &&
      DeepCollectionEquality().equals(_moodRelation, other._moodRelation) &&
      DeepCollectionEquality().equals(_energyRelation, other._energyRelation) &&
      DeepCollectionEquality().equals(_bleedingRelation, other._bleedingRelation) &&
      DeepCollectionEquality().equals(_periodDurationRelation, other._periodDurationRelation);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("AggregateData {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("averageCycleDuration=" + (_averageCycleDuration != null ? _averageCycleDuration!.toString() : "null") + ", ");
    buffer.write("averagePeriodDuration=" + (_averagePeriodDuration != null ? _averagePeriodDuration!.toString() : "null") + ", ");
    buffer.write("averageSexDrive=" + (_averageSexDrive != null ? _averageSexDrive!.toString() : "null") + ", ");
    buffer.write("averageAge=" + (_averageAge != null ? _averageAge!.toString() : "null") + ", ");
    buffer.write("averageMood=" + (_averageMood != null ? _averageMood!.toString() : "null") + ", ");
    buffer.write("averageEnergy=" + (_averageEnergy != null ? _averageEnergy!.toString() : "null") + ", ");
    buffer.write("averageBleeding=" + (_averageBleeding != null ? _averageBleeding!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  AggregateData copyWith({String? id, int? averageCycleDuration, int? averagePeriodDuration, int? averageSexDrive, int? averageAge, int? averageMood, int? averageEnergy, int? averageBleeding, List<UserData>? ageRelation, List<UserData>? sexDriveRelation, List<UserData>? moodRelation, List<UserData>? energyRelation, List<UserData>? bleedingRelation, List<UserData>? periodDurationRelation}) {
    return AggregateData._internal(
      id: id ?? this.id,
      averageCycleDuration: averageCycleDuration ?? this.averageCycleDuration,
      averagePeriodDuration: averagePeriodDuration ?? this.averagePeriodDuration,
      averageSexDrive: averageSexDrive ?? this.averageSexDrive,
      averageAge: averageAge ?? this.averageAge,
      averageMood: averageMood ?? this.averageMood,
      averageEnergy: averageEnergy ?? this.averageEnergy,
      averageBleeding: averageBleeding ?? this.averageBleeding,
      ageRelation: ageRelation ?? this.ageRelation,
      sexDriveRelation: sexDriveRelation ?? this.sexDriveRelation,
      moodRelation: moodRelation ?? this.moodRelation,
      energyRelation: energyRelation ?? this.energyRelation,
      bleedingRelation: bleedingRelation ?? this.bleedingRelation,
      periodDurationRelation: periodDurationRelation ?? this.periodDurationRelation);
  }
  
  AggregateData.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _averageCycleDuration = (json['averageCycleDuration'] as num?)?.toInt(),
      _averagePeriodDuration = (json['averagePeriodDuration'] as num?)?.toInt(),
      _averageSexDrive = (json['averageSexDrive'] as num?)?.toInt(),
      _averageAge = (json['averageAge'] as num?)?.toInt(),
      _averageMood = (json['averageMood'] as num?)?.toInt(),
      _averageEnergy = (json['averageEnergy'] as num?)?.toInt(),
      _averageBleeding = (json['averageBleeding'] as num?)?.toInt(),
      _ageRelation = json['ageRelation'] is List
        ? (json['ageRelation'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UserData.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _sexDriveRelation = json['sexDriveRelation'] is List
        ? (json['sexDriveRelation'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UserData.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _moodRelation = json['moodRelation'] is List
        ? (json['moodRelation'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UserData.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _energyRelation = json['energyRelation'] is List
        ? (json['energyRelation'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UserData.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _bleedingRelation = json['bleedingRelation'] is List
        ? (json['bleedingRelation'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UserData.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _periodDurationRelation = json['periodDurationRelation'] is List
        ? (json['periodDurationRelation'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UserData.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'averageCycleDuration': _averageCycleDuration, 'averagePeriodDuration': _averagePeriodDuration, 'averageSexDrive': _averageSexDrive, 'averageAge': _averageAge, 'averageMood': _averageMood, 'averageEnergy': _averageEnergy, 'averageBleeding': _averageBleeding, 'ageRelation': _ageRelation?.map((UserData? e) => e?.toJson()).toList(), 'sexDriveRelation': _sexDriveRelation?.map((UserData? e) => e?.toJson()).toList(), 'moodRelation': _moodRelation?.map((UserData? e) => e?.toJson()).toList(), 'energyRelation': _energyRelation?.map((UserData? e) => e?.toJson()).toList(), 'bleedingRelation': _bleedingRelation?.map((UserData? e) => e?.toJson()).toList(), 'periodDurationRelation': _periodDurationRelation?.map((UserData? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'averageCycleDuration': _averageCycleDuration, 'averagePeriodDuration': _averagePeriodDuration, 'averageSexDrive': _averageSexDrive, 'averageAge': _averageAge, 'averageMood': _averageMood, 'averageEnergy': _averageEnergy, 'averageBleeding': _averageBleeding, 'ageRelation': _ageRelation, 'sexDriveRelation': _sexDriveRelation, 'moodRelation': _moodRelation, 'energyRelation': _energyRelation, 'bleedingRelation': _bleedingRelation, 'periodDurationRelation': _periodDurationRelation, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField AVERAGECYCLEDURATION = QueryField(fieldName: "averageCycleDuration");
  static final QueryField AVERAGEPERIODDURATION = QueryField(fieldName: "averagePeriodDuration");
  static final QueryField AVERAGESEXDRIVE = QueryField(fieldName: "averageSexDrive");
  static final QueryField AVERAGEAGE = QueryField(fieldName: "averageAge");
  static final QueryField AVERAGEMOOD = QueryField(fieldName: "averageMood");
  static final QueryField AVERAGEENERGY = QueryField(fieldName: "averageEnergy");
  static final QueryField AVERAGEBLEEDING = QueryField(fieldName: "averageBleeding");
  static final QueryField AGERELATION = QueryField(
    fieldName: "ageRelation",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserData).toString()));
  static final QueryField SEXDRIVERELATION = QueryField(
    fieldName: "sexDriveRelation",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserData).toString()));
  static final QueryField MOODRELATION = QueryField(
    fieldName: "moodRelation",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserData).toString()));
  static final QueryField ENERGYRELATION = QueryField(
    fieldName: "energyRelation",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserData).toString()));
  static final QueryField BLEEDINGRELATION = QueryField(
    fieldName: "bleedingRelation",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserData).toString()));
  static final QueryField PERIODDURATIONRELATION = QueryField(
    fieldName: "periodDurationRelation",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserData).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "AggregateData";
    modelSchemaDefinition.pluralName = "AggregateData";
    
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AggregateData.AVERAGECYCLEDURATION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AggregateData.AVERAGEPERIODDURATION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AggregateData.AVERAGESEXDRIVE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AggregateData.AVERAGEAGE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AggregateData.AVERAGEMOOD,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AggregateData.AVERAGEENERGY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AggregateData.AVERAGEBLEEDING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: AggregateData.AGERELATION,
      isRequired: false,
      ofModelName: (UserData).toString(),
      associatedKey: UserData.AGGREGATEDATAID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: AggregateData.SEXDRIVERELATION,
      isRequired: false,
      ofModelName: (UserData).toString(),
      associatedKey: UserData.AGGREGATEDATAID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: AggregateData.MOODRELATION,
      isRequired: false,
      ofModelName: (UserData).toString(),
      associatedKey: UserData.AGGREGATEDATAID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: AggregateData.ENERGYRELATION,
      isRequired: false,
      ofModelName: (UserData).toString(),
      associatedKey: UserData.AGGREGATEDATAID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: AggregateData.BLEEDINGRELATION,
      isRequired: false,
      ofModelName: (UserData).toString(),
      associatedKey: UserData.AGGREGATEDATAID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: AggregateData.PERIODDURATIONRELATION,
      isRequired: false,
      ofModelName: (UserData).toString(),
      associatedKey: UserData.AGGREGATEDATAID
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

class _AggregateDataModelType extends ModelType<AggregateData> {
  const _AggregateDataModelType();
  
  @override
  AggregateData fromJson(Map<String, dynamic> jsonData) {
    return AggregateData.fromJson(jsonData);
  }
}