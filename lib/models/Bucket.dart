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


/** This is an auto generated class representing the Bucket type in your schema. */
@immutable
class Bucket extends Model {
  static const classType = const _BucketModelType();
  final String id;
  final int? _qr_code_id;
  final String? _name;
  final List<BucketPlant>? _contains;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  BucketModelIdentifier get modelIdentifier {
      return BucketModelIdentifier(
        id: id
      );
  }
  
  int get qr_code_id {
    try {
      return _qr_code_id!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
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
  
  List<BucketPlant>? get contains {
    return _contains;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Bucket._internal({required this.id, required qr_code_id, required name, contains, createdAt, updatedAt}): _qr_code_id = qr_code_id, _name = name, _contains = contains, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Bucket({String? id, required int qr_code_id, required String name, List<BucketPlant>? contains}) {
    return Bucket._internal(
      id: id == null ? UUID.getUUID() : id,
      qr_code_id: qr_code_id,
      name: name,
      contains: contains != null ? List<BucketPlant>.unmodifiable(contains) : contains);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Bucket &&
      id == other.id &&
      _qr_code_id == other._qr_code_id &&
      _name == other._name &&
      DeepCollectionEquality().equals(_contains, other._contains);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Bucket {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("qr_code_id=" + (_qr_code_id != null ? _qr_code_id!.toString() : "null") + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Bucket copyWith({int? qr_code_id, String? name, List<BucketPlant>? contains}) {
    return Bucket._internal(
      id: id,
      qr_code_id: qr_code_id ?? this.qr_code_id,
      name: name ?? this.name,
      contains: contains ?? this.contains);
  }
  
  Bucket.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _qr_code_id = (json['qr_code_id'] as num?)?.toInt(),
      _name = json['name'],
      _contains = json['contains'] is List
        ? (json['contains'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => BucketPlant.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'qr_code_id': _qr_code_id, 'name': _name, 'contains': _contains?.map((BucketPlant? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'qr_code_id': _qr_code_id, 'name': _name, 'contains': _contains, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<BucketModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<BucketModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField QR_CODE_ID = QueryField(fieldName: "qr_code_id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField CONTAINS = QueryField(
    fieldName: "contains",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'BucketPlant'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Bucket";
    modelSchemaDefinition.pluralName = "Buckets";
    
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
      key: Bucket.QR_CODE_ID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Bucket.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Bucket.CONTAINS,
      isRequired: false,
      ofModelName: 'BucketPlant',
      associatedKey: BucketPlant.BUCKET
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

class _BucketModelType extends ModelType<Bucket> {
  const _BucketModelType();
  
  @override
  Bucket fromJson(Map<String, dynamic> jsonData) {
    return Bucket.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Bucket';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Bucket] in your schema.
 */
@immutable
class BucketModelIdentifier implements ModelIdentifier<Bucket> {
  final String id;

  /** Create an instance of BucketModelIdentifier using [id] the primary key. */
  const BucketModelIdentifier({
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
  String toString() => 'BucketModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is BucketModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}