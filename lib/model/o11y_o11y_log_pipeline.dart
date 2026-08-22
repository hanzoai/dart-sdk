//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yLogPipeline {
  /// Returns a new [O11yO11yLogPipeline] instance.
  O11yO11yLogPipeline({
    this.alias,
    this.config = const [],
    this.createdAt,
    this.createdBy,
    this.description,
    this.enabled,
    this.filter,
    this.id,
    this.name,
    this.orderId,
    this.updatedAt,
    this.updatedBy,
  });
  /// Alias is the pipeline's short name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? alias;

  /// Config is the pipeline's processors, in order.
  List<O11yO11yLogPipelineOperator> config;

  /// CreatedAt is when the pipeline was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// CreatedBy is the id of who created the pipeline.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdBy;

  /// Description says what the pipeline is for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Enabled says whether the pipeline is on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  /// Filter selects which records the pipeline processes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yLogFilter? filter;

  /// ID is the pipeline's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the pipeline's display name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// OrderID is the pipeline's 1-based position in the set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orderId;

  /// UpdatedAt is when the pipeline last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// UpdatedBy is the id of who last changed it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedBy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yLogPipeline &&
    other.alias == alias &&
    _deepEquality.equals(other.config, config) &&
    other.createdAt == createdAt &&
    other.createdBy == createdBy &&
    other.description == description &&
    other.enabled == enabled &&
    other.filter == filter &&
    other.id == id &&
    other.name == name &&
    other.orderId == orderId &&
    other.updatedAt == updatedAt &&
    other.updatedBy == updatedBy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alias == null ? 0 : alias!.hashCode) +
    (config.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (filter == null ? 0 : filter!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (orderId == null ? 0 : orderId!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (updatedBy == null ? 0 : updatedBy!.hashCode);

  @override
  String toString() => 'O11yO11yLogPipeline[alias=$alias, config=$config, createdAt=$createdAt, createdBy=$createdBy, description=$description, enabled=$enabled, filter=$filter, id=$id, name=$name, orderId=$orderId, updatedAt=$updatedAt, updatedBy=$updatedBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.alias != null) {
      json[r'alias'] = this.alias;
    } else {
      json[r'alias'] = null;
    }
      json[r'config'] = this.config;
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.createdBy != null) {
      json[r'createdBy'] = this.createdBy;
    } else {
      json[r'createdBy'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.filter != null) {
      json[r'filter'] = this.filter;
    } else {
      json[r'filter'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.orderId != null) {
      json[r'orderId'] = this.orderId;
    } else {
      json[r'orderId'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.updatedBy != null) {
      json[r'updatedBy'] = this.updatedBy;
    } else {
      json[r'updatedBy'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yLogPipeline] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yLogPipeline? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yLogPipeline[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yLogPipeline[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yLogPipeline(
        alias: mapValueOfType<String>(json, r'alias'),
        config: O11yO11yLogPipelineOperator.listFromJson(json[r'config']),
        createdAt: mapDateTime(json, r'createdAt', r''),
        createdBy: mapValueOfType<String>(json, r'createdBy'),
        description: mapValueOfType<String>(json, r'description'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        filter: O11yO11yLogFilter.fromJson(json[r'filter']),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        orderId: mapValueOfType<int>(json, r'orderId'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        updatedBy: mapValueOfType<String>(json, r'updatedBy'),
      );
    }
    return null;
  }

  static List<O11yO11yLogPipeline> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yLogPipeline>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yLogPipeline.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yLogPipeline> mapFromJson(dynamic json) {
    final map = <String, O11yO11yLogPipeline>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yLogPipeline.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yLogPipeline-objects as value to a dart map
  static Map<String, List<O11yO11yLogPipeline>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yLogPipeline>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yLogPipeline.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

