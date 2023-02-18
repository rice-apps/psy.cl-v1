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
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the UserData type in your schema. */
@immutable
class UserData extends Model {
  static const classType = const _UserDataModelType();
  final String id;
  final String? _name;
  final double? _height;
  final int? _weight;
  final int? _periodDuration;
  final TemporalDate? _startDateLastPeriod;
  final TemporalDate? _dOB;
  final List<int>? _bleeding;
  final List<int>? _mood;
  final List<int>? _energyLeve;
  final List<int>? _sexDrive;
  final String? _aggregatedataID;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get height {
    try {
      return _height!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get weight {
    try {
      return _weight!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int? get periodDuration {
    return _periodDuration;
  }
  
  TemporalDate? get startDateLastPeriod {
    return _startDateLastPeriod;
  }
  
  TemporalDate? get dOB {
    return _dOB;
  }
  
  List<int>? get bleeding {
    return _bleeding;
  }
  
  List<int>? get mood {
    return _mood;
  }
  
  List<int>? get energyLeve {
    return _energyLeve;
  }
  
  List<int>? get sexDrive {
    return _sexDrive;
  }
  
  String get aggregatedataID {
    try {
      return _aggregatedataID!;
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
  
  const UserData._internal({required this.id, required name, required height, required weight, periodDuration, startDateLastPeriod, dOB, bleeding, mood, energyLeve, sexDrive, required aggregatedataID, createdAt, updatedAt}): _name = name, _height = height, _weight = weight, _periodDuration = periodDuration, _startDateLastPeriod = startDateLastPeriod, _dOB = dOB, _bleeding = bleeding, _mood = mood, _energyLeve = energyLeve, _sexDrive = sexDrive, _aggregatedataID = aggregatedataID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory UserData({String? id, required String name, required double height, required int weight, int? periodDuration, TemporalDate? startDateLastPeriod, TemporalDate? dOB, List<int>? bleeding, List<int>? mood, List<int>? energyLeve, List<int>? sexDrive, required String aggregatedataID}) {
    return UserData._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      height: height,
      weight: weight,
      periodDuration: periodDuration,
      startDateLastPeriod: startDateLastPeriod,
      dOB: dOB,
      bleeding: bleeding != null ? List<int>.unmodifiable(bleeding) : bleeding,
      mood: mood != null ? List<int>.unmodifiable(mood) : mood,
      energyLeve: energyLeve != null ? List<int>.unmodifiable(energyLeve) : energyLeve,
      sexDrive: sexDrive != null ? List<int>.unmodifiable(sexDrive) : sexDrive,
      aggregatedataID: aggregatedataID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserData &&
      id == other.id &&
      _name == other._name &&
      _height == other._height &&
      _weight == other._weight &&
      _periodDuration == other._periodDuration &&
      _startDateLastPeriod == other._startDateLastPeriod &&
      _dOB == other._dOB &&
      DeepCollectionEquality().equals(_bleeding, other._bleeding) &&
      DeepCollectionEquality().equals(_mood, other._mood) &&
      DeepCollectionEquality().equals(_energyLeve, other._energyLeve) &&
      DeepCollectionEquality().equals(_sexDrive, other._sexDrive) &&
      _aggregatedataID == other._aggregatedataID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("UserData {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("height=" + (_height != null ? _height!.toString() : "null") + ", ");
    buffer.write("weight=" + (_weight != null ? _weight!.toString() : "null") + ", ");
    buffer.write("periodDuration=" + (_periodDuration != null ? _periodDuration!.toString() : "null") + ", ");
    buffer.write("startDateLastPeriod=" + (_startDateLastPeriod != null ? _startDateLastPeriod!.format() : "null") + ", ");
    buffer.write("dOB=" + (_dOB != null ? _dOB!.format() : "null") + ", ");
    buffer.write("bleeding=" + (_bleeding != null ? _bleeding!.toString() : "null") + ", ");
    buffer.write("mood=" + (_mood != null ? _mood!.toString() : "null") + ", ");
    buffer.write("energyLeve=" + (_energyLeve != null ? _energyLeve!.toString() : "null") + ", ");
    buffer.write("sexDrive=" + (_sexDrive != null ? _sexDrive!.toString() : "null") + ", ");
    buffer.write("aggregatedataID=" + "$_aggregatedataID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  UserData copyWith({String? id, String? name, double? height, int? weight, int? periodDuration, TemporalDate? startDateLastPeriod, TemporalDate? dOB, List<int>? bleeding, List<int>? mood, List<int>? energyLeve, List<int>? sexDrive, String? aggregatedataID}) {
    return UserData._internal(
      id: id ?? this.id,
      name: name ?? this.name,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      periodDuration: periodDuration ?? this.periodDuration,
      startDateLastPeriod: startDateLastPeriod ?? this.startDateLastPeriod,
      dOB: dOB ?? this.dOB,
      bleeding: bleeding ?? this.bleeding,
      mood: mood ?? this.mood,
      energyLeve: energyLeve ?? this.energyLeve,
      sexDrive: sexDrive ?? this.sexDrive,
      aggregatedataID: aggregatedataID ?? this.aggregatedataID);
  }
  
  UserData.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _height = (json['height'] as num?)?.toDouble(),
      _weight = (json['weight'] as num?)?.toInt(),
      _periodDuration = (json['periodDuration'] as num?)?.toInt(),
      _startDateLastPeriod = json['startDateLastPeriod'] != null ? TemporalDate.fromString(json['startDateLastPeriod']) : null,
      _dOB = json['dOB'] != null ? TemporalDate.fromString(json['dOB']) : null,
      _bleeding = (json['bleeding'] as List?)?.map((e) => (e as num).toInt()).toList(),
      _mood = (json['mood'] as List?)?.map((e) => (e as num).toInt()).toList(),
      _energyLeve = (json['energyLeve'] as List?)?.map((e) => (e as num).toInt()).toList(),
      _sexDrive = (json['sexDrive'] as List?)?.map((e) => (e as num).toInt()).toList(),
      _aggregatedataID = json['aggregatedataID'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'height': _height, 'weight': _weight, 'periodDuration': _periodDuration, 'startDateLastPeriod': _startDateLastPeriod?.format(), 'dOB': _dOB?.format(), 'bleeding': _bleeding, 'mood': _mood, 'energyLeve': _energyLeve, 'sexDrive': _sexDrive, 'aggregatedataID': _aggregatedataID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'name': _name, 'height': _height, 'weight': _weight, 'periodDuration': _periodDuration, 'startDateLastPeriod': _startDateLastPeriod, 'dOB': _dOB, 'bleeding': _bleeding, 'mood': _mood, 'energyLeve': _energyLeve, 'sexDrive': _sexDrive, 'aggregatedataID': _aggregatedataID, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField HEIGHT = QueryField(fieldName: "height");
  static final QueryField WEIGHT = QueryField(fieldName: "weight");
  static final QueryField PERIODDURATION = QueryField(fieldName: "periodDuration");
  static final QueryField STARTDATELASTPERIOD = QueryField(fieldName: "startDateLastPeriod");
  static final QueryField DOB = QueryField(fieldName: "dOB");
  static final QueryField BLEEDING = QueryField(fieldName: "bleeding");
  static final QueryField MOOD = QueryField(fieldName: "mood");
  static final QueryField ENERGYLEVE = QueryField(fieldName: "energyLeve");
  static final QueryField SEXDRIVE = QueryField(fieldName: "sexDrive");
  static final QueryField AGGREGATEDATAID = QueryField(fieldName: "aggregatedataID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "UserData";
    modelSchemaDefinition.pluralName = "UserData";
    
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
      ModelIndex(fields: const ["aggregatedataID"], name: "byAggregateData")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserData.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserData.HEIGHT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserData.WEIGHT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserData.PERIODDURATION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserData.STARTDATELASTPERIOD,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserData.DOB,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserData.BLEEDING,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.int))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserData.MOOD,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.int))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserData.ENERGYLEVE,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.int))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserData.SEXDRIVE,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.int))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserData.AGGREGATEDATAID,
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

class _UserDataModelType extends ModelType<UserData> {
  const _UserDataModelType();
  
  @override
  UserData fromJson(Map<String, dynamic> jsonData) {
    return UserData.fromJson(jsonData);
  }
}