//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OpenaiLogProb {
  /// Returns a new [OpenaiLogProb] instance.
  OpenaiLogProb({
    this.bytes,
    this.logprob,
    this.token,
    this.topLogprobs = const [],
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bytes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? logprob;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  List<OpenaiTopLogProbs> topLogprobs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenaiLogProb &&
    other.bytes == bytes &&
    other.logprob == logprob &&
    other.token == token &&
    _deepEquality.equals(other.topLogprobs, topLogprobs);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bytes == null ? 0 : bytes!.hashCode) +
    (logprob == null ? 0 : logprob!.hashCode) +
    (token == null ? 0 : token!.hashCode) +
    (topLogprobs.hashCode);

  @override
  String toString() => 'OpenaiLogProb[bytes=$bytes, logprob=$logprob, token=$token, topLogprobs=$topLogprobs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bytes != null) {
      json[r'bytes'] = this.bytes;
    } else {
      json[r'bytes'] = null;
    }
    if (this.logprob != null) {
      json[r'logprob'] = this.logprob;
    } else {
      json[r'logprob'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
      json[r'top_logprobs'] = this.topLogprobs;
    return json;
  }

  /// Returns a new [OpenaiLogProb] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenaiLogProb? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenaiLogProb[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenaiLogProb[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenaiLogProb(
        bytes: mapValueOfType<String>(json, r'bytes'),
        logprob: num.parse('${json[r'logprob']}'),
        token: mapValueOfType<String>(json, r'token'),
        topLogprobs: OpenaiTopLogProbs.listFromJson(json[r'top_logprobs']),
      );
    }
    return null;
  }

  static List<OpenaiLogProb> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenaiLogProb>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenaiLogProb.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenaiLogProb> mapFromJson(dynamic json) {
    final map = <String, OpenaiLogProb>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenaiLogProb.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenaiLogProb-objects as value to a dart map
  static Map<String, List<OpenaiLogProb>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenaiLogProb>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenaiLogProb.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

