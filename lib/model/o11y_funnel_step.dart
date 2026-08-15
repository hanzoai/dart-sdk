//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yFunnelStep {
  /// Returns a new [O11yFunnelStep] instance.
  O11yFunnelStep({
    this.description,
    this.filters,
    this.hasErrors,
    this.id,
    this.latencyPointer,
    this.latencyType,
    this.name,
    this.serviceName,
    this.spanName,
    this.stepOrder,
  });

  /// step description
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yFilterSet? filters;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasErrors;

  Object? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? latencyPointer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? latencyType;

  /// step name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spanName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stepOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yFunnelStep &&
    other.description == description &&
    other.filters == filters &&
    other.hasErrors == hasErrors &&
    other.id == id &&
    other.latencyPointer == latencyPointer &&
    other.latencyType == latencyType &&
    other.name == name &&
    other.serviceName == serviceName &&
    other.spanName == spanName &&
    other.stepOrder == stepOrder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (description == null ? 0 : description!.hashCode) +
    (filters == null ? 0 : filters!.hashCode) +
    (hasErrors == null ? 0 : hasErrors!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (latencyPointer == null ? 0 : latencyPointer!.hashCode) +
    (latencyType == null ? 0 : latencyType!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (serviceName == null ? 0 : serviceName!.hashCode) +
    (spanName == null ? 0 : spanName!.hashCode) +
    (stepOrder == null ? 0 : stepOrder!.hashCode);

  @override
  String toString() => 'O11yFunnelStep[description=$description, filters=$filters, hasErrors=$hasErrors, id=$id, latencyPointer=$latencyPointer, latencyType=$latencyType, name=$name, serviceName=$serviceName, spanName=$spanName, stepOrder=$stepOrder]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.filters != null) {
      json[r'filters'] = this.filters;
    } else {
      json[r'filters'] = null;
    }
    if (this.hasErrors != null) {
      json[r'has_errors'] = this.hasErrors;
    } else {
      json[r'has_errors'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.latencyPointer != null) {
      json[r'latency_pointer'] = this.latencyPointer;
    } else {
      json[r'latency_pointer'] = null;
    }
    if (this.latencyType != null) {
      json[r'latency_type'] = this.latencyType;
    } else {
      json[r'latency_type'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.serviceName != null) {
      json[r'service_name'] = this.serviceName;
    } else {
      json[r'service_name'] = null;
    }
    if (this.spanName != null) {
      json[r'span_name'] = this.spanName;
    } else {
      json[r'span_name'] = null;
    }
    if (this.stepOrder != null) {
      json[r'step_order'] = this.stepOrder;
    } else {
      json[r'step_order'] = null;
    }
    return json;
  }

  /// Returns a new [O11yFunnelStep] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yFunnelStep? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yFunnelStep[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yFunnelStep[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yFunnelStep(
        description: mapValueOfType<String>(json, r'description'),
        filters: O11yFilterSet.fromJson(json[r'filters']),
        hasErrors: mapValueOfType<bool>(json, r'has_errors'),
        id: mapValueOfType<Object>(json, r'id'),
        latencyPointer: mapValueOfType<String>(json, r'latency_pointer'),
        latencyType: mapValueOfType<String>(json, r'latency_type'),
        name: mapValueOfType<String>(json, r'name'),
        serviceName: mapValueOfType<String>(json, r'service_name'),
        spanName: mapValueOfType<String>(json, r'span_name'),
        stepOrder: mapValueOfType<int>(json, r'step_order'),
      );
    }
    return null;
  }

  static List<O11yFunnelStep> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yFunnelStep>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yFunnelStep.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yFunnelStep> mapFromJson(dynamic json) {
    final map = <String, O11yFunnelStep>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yFunnelStep.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yFunnelStep-objects as value to a dart map
  static Map<String, List<O11yFunnelStep>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yFunnelStep>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yFunnelStep.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

