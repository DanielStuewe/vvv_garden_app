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


/** This is an auto generated class representing the Plant type in your schema. */
@immutable
class Plant extends Model {
  static const classType = const _PlantModelType();
  final String id;
  final String? _name;
  final List<TemporalDate>? _irrigations;
  final List<PlantBucket>? _Buckets;
  final PlantType? _hasPlantType;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _plantHasPlantTypeId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  PlantModelIdentifier get modelIdentifier {
      return PlantModelIdentifier(
        id: id
      );
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
  
  List<TemporalDate>? get irrigations {
    return _irrigations;
  }
  
  List<PlantBucket>? get Buckets {
    return _Buckets;
  }
  
  PlantType get hasPlantType {
    try {
      return _hasPlantType!;
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
  
  String get plantHasPlantTypeId {
    try {
      return _plantHasPlantTypeId!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const Plant._internal({required this.id, required name, irrigations, Buckets, required hasPlantType, createdAt, updatedAt, required plantHasPlantTypeId}): _name = name, _irrigations = irrigations, _Buckets = Buckets, _hasPlantType = hasPlantType, _createdAt = createdAt, _updatedAt = updatedAt, _plantHasPlantTypeId = plantHasPlantTypeId;
  
  factory Plant({String? id, required String name, List<TemporalDate>? irrigations, List<PlantBucket>? Buckets, required PlantType hasPlantType, required String plantHasPlantTypeId}) {
    return Plant._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      irrigations: irrigations != null ? List<TemporalDate>.unmodifiable(irrigations) : irrigations,
      Buckets: Buckets != null ? List<PlantBucket>.unmodifiable(Buckets) : Buckets,
      hasPlantType: hasPlantType,
      plantHasPlantTypeId: plantHasPlantTypeId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Plant &&
      id == other.id &&
      _name == other._name &&
      DeepCollectionEquality().equals(_irrigations, other._irrigations) &&
      DeepCollectionEquality().equals(_Buckets, other._Buckets) &&
      _hasPlantType == other._hasPlantType &&
      _plantHasPlantTypeId == other._plantHasPlantTypeId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Plant {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("irrigations=" + (_irrigations != null ? _irrigations!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("plantHasPlantTypeId=" + "$_plantHasPlantTypeId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Plant copyWith({String? name, List<TemporalDate>? irrigations, List<PlantBucket>? Buckets, PlantType? hasPlantType, String? plantHasPlantTypeId}) {
    return Plant._internal(
      id: id,
      name: name ?? this.name,
      irrigations: irrigations ?? this.irrigations,
      Buckets: Buckets ?? this.Buckets,
      hasPlantType: hasPlantType ?? this.hasPlantType,
      plantHasPlantTypeId: plantHasPlantTypeId ?? this.plantHasPlantTypeId);
  }
  
  Plant.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _irrigations = (json['irrigations'] as List?)?.map((e) => TemporalDate.fromString(e)).toList(),
      _Buckets = json['Buckets'] is List
        ? (json['Buckets'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => PlantBucket.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _hasPlantType = json['hasPlantType']?['serializedData'] != null
        ? PlantType.fromJson(new Map<String, dynamic>.from(json['hasPlantType']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null,
      _plantHasPlantTypeId = json['plantHasPlantTypeId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'irrigations': _irrigations?.map((e) => e.format()).toList(), 'Buckets': _Buckets?.map((PlantBucket? e) => e?.toJson()).toList(), 'hasPlantType': _hasPlantType?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'plantHasPlantTypeId': _plantHasPlantTypeId
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'name': _name, 'irrigations': _irrigations, 'Buckets': _Buckets, 'hasPlantType': _hasPlantType, 'createdAt': _createdAt, 'updatedAt': _updatedAt, 'plantHasPlantTypeId': _plantHasPlantTypeId
  };

  static final QueryModelIdentifier<PlantModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<PlantModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField IRRIGATIONS = QueryField(fieldName: "irrigations");
  static final QueryField BUCKETS = QueryField(
    fieldName: "Buckets",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'PlantBucket'));
  static final QueryField HASPLANTTYPE = QueryField(
    fieldName: "hasPlantType",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'PlantType'));
  static final QueryField PLANTHASPLANTTYPEID = QueryField(fieldName: "plantHasPlantTypeId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Plant";
    modelSchemaDefinition.pluralName = "Plants";
    
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
      key: Plant.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Plant.IRRIGATIONS,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.date))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Plant.BUCKETS,
      isRequired: true,
      ofModelName: 'PlantBucket',
      associatedKey: PlantBucket.PLANT
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: Plant.HASPLANTTYPE,
      isRequired: true,
      ofModelName: 'PlantType',
      associatedKey: PlantType.ID
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
      key: Plant.PLANTHASPLANTTYPEID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _PlantModelType extends ModelType<Plant> {
  const _PlantModelType();
  
  @override
  Plant fromJson(Map<String, dynamic> jsonData) {
    return Plant.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Plant';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Plant] in your schema.
 */
@immutable
class PlantModelIdentifier implements ModelIdentifier<Plant> {
  final String id;

  /** Create an instance of PlantModelIdentifier using [id] the primary key. */
  const PlantModelIdentifier({
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
  String toString() => 'PlantModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is PlantModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}