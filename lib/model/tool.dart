//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Tool {
  /// Returns a new [Tool] instance.
  Tool({
    this.activated,
    this.description,
    this.dispatchable,
    this.inputSchema,
    this.name,
    this.price,
    this.source_,
  });
  /// Activated is filled by the registry from the activation store for the requesting (org,project); providers leave it zero. An unactivated tool is discoverable but refused 403 at dispatch.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? activated;

  /// Description is the prose a model reads to decide whether to call the tool.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Dispatchable is whether the tool can be CALLED. False for a listing-only entry: a skill is activated and attached to an agent, never called.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? dispatchable;

  Object? inputSchema;

  /// Name is the tool's id in the flat, fleet-wide tool namespace — the value a tools/call passes. Unique across sources: a collision is resolved by source precedence before the caller ever sees it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Price is what a call costs and who is paid, absent for a free tool. Enforcement is the x402 settlement seam; this is the declaration.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Price? price;

  /// Source is where the tool comes from: connector, function, zap-service, agent, skill or mcp.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Tool &&
    other.activated == activated &&
    other.description == description &&
    other.dispatchable == dispatchable &&
    other.inputSchema == inputSchema &&
    other.name == name &&
    other.price == price &&
    other.source_ == source_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activated == null ? 0 : activated!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (dispatchable == null ? 0 : dispatchable!.hashCode) +
    (inputSchema == null ? 0 : inputSchema!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode);

  @override
  String toString() => 'Tool[activated=$activated, description=$description, dispatchable=$dispatchable, inputSchema=$inputSchema, name=$name, price=$price, source_=$source_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.activated != null) {
      json[r'activated'] = this.activated;
    } else {
      json[r'activated'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.dispatchable != null) {
      json[r'dispatchable'] = this.dispatchable;
    } else {
      json[r'dispatchable'] = null;
    }
    if (this.inputSchema != null) {
      json[r'inputSchema'] = this.inputSchema;
    } else {
      json[r'inputSchema'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    return json;
  }

  /// Returns a new [Tool] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Tool? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Tool[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Tool[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Tool(
        activated: mapValueOfType<bool>(json, r'activated'),
        description: mapValueOfType<String>(json, r'description'),
        dispatchable: mapValueOfType<bool>(json, r'dispatchable'),
        inputSchema: mapValueOfType<Object>(json, r'inputSchema'),
        name: mapValueOfType<String>(json, r'name'),
        price: Price.fromJson(json[r'price']),
        source_: mapValueOfType<String>(json, r'source'),
      );
    }
    return null;
  }

  static List<Tool> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Tool>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Tool.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Tool> mapFromJson(dynamic json) {
    final map = <String, Tool>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Tool.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Tool-objects as value to a dart map
  static Map<String, List<Tool>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Tool>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Tool.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

