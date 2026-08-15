//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class InboxPage {
  /// Returns a new [InboxPage] instance.
  InboxPage({
    this.cursor,
    this.messages = const [],
  });

  /// Cursor is the row id to pass back as `since` for the next page. It is the last message's id, or the requested cursor when the page is empty.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cursor;

  /// Messages are the inbound messages, oldest first.
  List<InboxView> messages;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPage &&
    other.cursor == cursor &&
    _deepEquality.equals(other.messages, messages);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cursor == null ? 0 : cursor!.hashCode) +
    (messages.hashCode);

  @override
  String toString() => 'InboxPage[cursor=$cursor, messages=$messages]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cursor != null) {
      json[r'cursor'] = this.cursor;
    } else {
      json[r'cursor'] = null;
    }
      json[r'messages'] = this.messages;
    return json;
  }

  /// Returns a new [InboxPage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPage(
        cursor: mapValueOfType<int>(json, r'cursor'),
        messages: InboxView.listFromJson(json[r'messages']),
      );
    }
    return null;
  }

  static List<InboxPage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPage> mapFromJson(dynamic json) {
    final map = <String, InboxPage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPage-objects as value to a dart map
  static Map<String, List<InboxPage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

