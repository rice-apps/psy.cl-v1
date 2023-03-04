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
import 'AggregateData.dart';
import 'Calendar.dart';
import 'DataEntry.dart';
import 'ProgressCircle.dart';
import 'UserData.dart';
import 'BleedingData.dart';
import 'DayData.dart';
import 'EnergyData.dart';
import 'MoodData.dart';
import 'PhaseData.dart';
import 'SexDrive.dart';

export 'AggregateData.dart';
export 'BleedingData.dart';
export 'Calendar.dart';
export 'DataEntry.dart';
export 'DayData.dart';
export 'EnergyData.dart';
export 'MoodData.dart';
export 'PhaseData.dart';
export 'ProgressCircle.dart';
export 'SexDrive.dart';
export 'UserData.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "0931e0840c19c51dc2f2f6f416696a8b";
  @override
  List<ModelSchema> modelSchemas = [AggregateData.schema, Calendar.schema, DataEntry.schema, ProgressCircle.schema, UserData.schema];
  static final ModelProvider _instance = ModelProvider();
  @override
  List<ModelSchema> customTypeSchemas = [BleedingData.schema, DayData.schema, EnergyData.schema, MoodData.schema, PhaseData.schema, SexDrive.schema];

  static ModelProvider get instance => _instance;
  
  ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
      case "AggregateData":
        return AggregateData.classType;
      case "Calendar":
        return Calendar.classType;
      case "DataEntry":
        return DataEntry.classType;
      case "ProgressCircle":
        return ProgressCircle.classType;
      case "UserData":
        return UserData.classType;
      default:
        throw Exception("Failed to find model in model provider for model name: " + modelName);
    }
  }
}