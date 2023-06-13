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


/** This is an auto generated class representing the PlantType type in your schema. */
@immutable
class PlantType extends Model {
  static const classType = const _PlantTypeModelType();
  final String id;
  final String? _species;
  final String? _description;
  final int? _irrigationFrequencyInDays;
  final int? _harvestMonths;
  final int? _bloomMonths;
  final bool? _edible;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  PlantTypeModelIdentifier get modelIdentifier {
      return PlantTypeModelIdentifier(
        id: id
      );
  }
  
  String get species {
    try {
      return _species!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get description {
    try {
      return _description!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get irrigationFrequencyInDays {
    try {
      return _irrigationFrequencyInDays!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int? get harvestMonths {
    return _harvestMonths;
  }
  
  int? get bloomMonths {
    return _bloomMonths;
  }
  
  bool? get edible {
    return _edible;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const PlantType._internal({required this.id, required species, required description, required irrigationFrequencyInDays, harvestMonths, bloomMonths, edible, createdAt, updatedAt}): _species = species, _description = description, _irrigationFrequencyInDays = irrigationFrequencyInDays, _harvestMonths = harvestMonths, _bloomMonths = bloomMonths, _edible = edible, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory PlantType({String? id, required String species, required String description, required int irrigationFrequencyInDays, int? harvestMonths, int? bloomMonths, bool? edible}) {
    return PlantType._internal(
      id: id == null ? UUID.getUUID() : id,
      species: species,
      description: description,
      irrigationFrequencyInDays: irrigationFrequencyInDays,
      harvestMonths: harvestMonths,
      bloomMonths: bloomMonths,
      edible: edible);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlantType &&
      id == other.id &&
      _species == other._species &&
      _description == other._description &&
      _irrigationFrequencyInDays == other._irrigationFrequencyInDays &&
      _harvestMonths == other._harvestMonths &&
      _bloomMonths == other._bloomMonths &&
      _edible == other._edible;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("PlantType {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("species=" + "$_species" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("irrigationFrequencyInDays=" + (_irrigationFrequencyInDays != null ? _irrigationFrequencyInDays!.toString() : "null") + ", ");
    buffer.write("harvestMonths=" + (_harvestMonths != null ? _harvestMonths!.toString() : "null") + ", ");
    buffer.write("bloomMonths=" + (_bloomMonths != null ? _bloomMonths!.toString() : "null") + ", ");
    buffer.write("edible=" + (_edible != null ? _edible!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  PlantType copyWith({String? species, String? description, int? irrigationFrequencyInDays, int? harvestMonths, int? bloomMonths, bool? edible}) {
    return PlantType._internal(
      id: id,
      species: species ?? this.species,
      description: description ?? this.description,
      irrigationFrequencyInDays: irrigationFrequencyInDays ?? this.irrigationFrequencyInDays,
      harvestMonths: harvestMonths ?? this.harvestMonths,
      bloomMonths: bloomMonths ?? this.bloomMonths,
      edible: edible ?? this.edible);
  }
  
  PlantType.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _species = json['species'],
      _description = json['description'],
      _irrigationFrequencyInDays = (json['irrigationFrequencyInDays'] as num?)?.toInt(),
      _harvestMonths = (json['harvestMonths'] as num?)?.toInt(),
      _bloomMonths = (json['bloomMonths'] as num?)?.toInt(),
      _edible = json['edible'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'species': _species, 'description': _description, 'irrigationFrequencyInDays': _irrigationFrequencyInDays, 'harvestMonths': _harvestMonths, 'bloomMonths': _bloomMonths, 'edible': _edible, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'species': _species, 'description': _description, 'irrigationFrequencyInDays': _irrigationFrequencyInDays, 'harvestMonths': _harvestMonths, 'bloomMonths': _bloomMonths, 'edible': _edible, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<PlantTypeModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<PlantTypeModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField SPECIES = QueryField(fieldName: "species");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static final QueryField IRRIGATIONFREQUENCYINDAYS = QueryField(fieldName: "irrigationFrequencyInDays");
  static final QueryField HARVESTMONTHS = QueryField(fieldName: "harvestMonths");
  static final QueryField BLOOMMONTHS = QueryField(fieldName: "bloomMonths");
  static final QueryField EDIBLE = QueryField(fieldName: "edible");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PlantType";
    modelSchemaDefinition.pluralName = "PlantTypes";
    
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
      key: PlantType.SPECIES,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: PlantType.DESCRIPTION,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: PlantType.IRRIGATIONFREQUENCYINDAYS,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: PlantType.HARVESTMONTHS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: PlantType.BLOOMMONTHS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: PlantType.EDIBLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
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

class _PlantTypeModelType extends ModelType<PlantType> {
  const _PlantTypeModelType();
  
  @override
  PlantType fromJson(Map<String, dynamic> jsonData) {
    return PlantType.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'PlantType';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [PlantType] in your schema.
 */
@immutable
class PlantTypeModelIdentifier implements ModelIdentifier<PlantType> {
  final String id;

  /** Create an instance of PlantTypeModelIdentifier using [id] the primary key. */
  const PlantTypeModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'PlantTypeModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is PlantTypeModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}