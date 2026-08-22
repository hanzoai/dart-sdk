//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yErrorDetail {
  /// Returns a new [O11yO11yErrorDetail] instance.
  O11yO11yErrorDetail({
    this.code,
    this.errors = const [],
    this.message,
    this.retry,
    this.suggestions = const [],
    this.type,
    this.url,
  });
  /// Code is the machine-readable code.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// Errors are further details, one message and its suggestions each.
  List<O11yO11yErrorItem> errors;

  /// Message is the human-readable reason.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// Retry says when it is worth trying again, for errors that pass.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yRetry? retry;

  /// Suggestions say what to try instead.
  List<String> suggestions;

  /// Type is the error's category, e.g. invalid_input, not_found.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// Url points at documentation for the error, when there is any.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yErrorDetail &&
    other.code == code &&
    _deepEquality.equals(other.errors, errors) &&
    other.message == message &&
    other.retry == retry &&
    _deepEquality.equals(other.suggestions, suggestions) &&
    other.type == type &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode) +
    (errors.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (retry == null ? 0 : retry!.hashCode) +
    (suggestions.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'O11yO11yErrorDetail[code=$code, errors=$errors, message=$message, retry=$retry, suggestions=$suggestions, type=$type, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
      json[r'errors'] = this.errors;
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.retry != null) {
      json[r'retry'] = this.retry;
    } else {
      json[r'retry'] = null;
    }
      json[r'suggestions'] = this.suggestions;
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yErrorDetail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yErrorDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yErrorDetail[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yErrorDetail[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yErrorDetail(
        code: mapValueOfType<String>(json, r'code'),
        errors: O11yO11yErrorItem.listFromJson(json[r'errors']),
        message: mapValueOfType<String>(json, r'message'),
        retry: O11yO11yRetry.fromJson(json[r'retry']),
        suggestions: json[r'suggestions'] is Iterable
            ? (json[r'suggestions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        type: mapValueOfType<String>(json, r'type'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<O11yO11yErrorDetail> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yErrorDetail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yErrorDetail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yErrorDetail> mapFromJson(dynamic json) {
    final map = <String, O11yO11yErrorDetail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yErrorDetail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yErrorDetail-objects as value to a dart map
  static Map<String, List<O11yO11yErrorDetail>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yErrorDetail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yErrorDetail.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

