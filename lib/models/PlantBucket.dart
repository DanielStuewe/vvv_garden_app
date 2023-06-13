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


/** This is an auto generated class representing the PlantBucket type in your schema. */
@immutable
class PlantBucket extends Model {
  static const classType = const _PlantBucketModelType();
  final String id;
  final Plant? _plant;
  final Bucket? _bucket;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  PlantBucketModelIdentifier get modelIdentifier {
      return PlantBucketModelIdentifier(
        id: id
      );
  }
  
  Plant get plant {
    try {
      return _plant!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Bucket get bucket {
    try {
      return _bucket!;
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
  
  const PlantBucket._internal({required this.id, required plant, required bucket, createdAt, updatedAt}): _plant = plant, _bucket = bucket, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory PlantBucket({String? id, required Plant plant, required Bucket bucket}) {
    return PlantBucket._internal(
      id: id == null ? UUID.getUUID() : id,
      plant: plant,
      bucket: bucket);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlantBucket &&
      id == other.id &&
      _plant == other._plant &&
      _bucket == other._bucket;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("PlantBucket {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("plant=" + (_plant != null ? _plant!.toString() : "null") + ", ");
    buffer.write("bucket=" + (_bucket != null ? _bucket!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  PlantBucket copyWith({Plant? plant, Bucket? bucket}) {
    return PlantBucket._internal(
      id: id,
      plant: plant ?? this.plant,
      bucket: bucket ?? this.bucket);
  }
  
  PlantBucket.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _plant = json['plant']?['serializedData'] != null
        ? Plant.fromJson(new Map<String, dynamic>.from(json['plant']['serializedData']))
        : null,
      _bucket = json['bucket']?['serializedData'] != null
        ? Bucket.fromJson(new Map<String, dynamic>.from(json['bucket']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'plant': _plant?.toJson(), 'bucket': _bucket?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'plant': _plant, 'bucket': _bucket, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<PlantBucketModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<PlantBucketModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField PLANT = QueryField(
    fieldName: "plant",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Plant'));
  static final QueryField BUCKET = QueryField(
    fieldName: "bucket",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Bucket'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PlantBucket";
    modelSchemaDefinition.pluralName = "PlantBuckets";
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["plantId"], name: "byPlant"),
      ModelIndex(fields: const ["bucketId"], name: "byBucket")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: PlantBucket.PLANT,
      isRequired: true,
      targetNames: ['plantId'],
      ofModelName: 'Plant'
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: PlantBucket.BUCKET,
      isRequired: true,
      targetNames: ['bucketId'],
      ofModelName: 'Bucket'
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

class _PlantBucketModelType extends ModelType<PlantBucket> {
  const _PlantBucketModelType();
  
  @override
  PlantBucket fromJson(Map<String, dynamic> jsonData) {
    return PlantBucket.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'PlantBucket';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [PlantBucket] in your schema.
 */
@immutable
class PlantBucketModelIdentifier implements ModelIdentifier<PlantBucket> {
  final String id;

  /** Create an instance of PlantBucketModelIdentifier using [id] the primary key. */
  const PlantBucketModelIdentifier({
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
  String toString() => 'PlantBucketModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is PlantBucketModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}