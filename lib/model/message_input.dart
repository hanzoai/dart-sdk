//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MessageInput {
  /// Returns a new [MessageInput] instance.
  MessageInput({
    this.from,
    this.media = const [],
    this.text,
    this.to,
  });
  /// From is the number to send FROM, in E.164. It must be one this org holds and it must be sms-capable.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  /// Media are URLs to attach. A message with any is an MMS to the carrier — the distinction is the carrier's to make, not something the caller declares.
  List<String> media;

  /// Text is the message body. It may be empty when Media carries the message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  /// To is the number to send to, in E.164.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? to;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageInput &&
    other.from == from &&
    _deepEquality.equals(other.media, media) &&
    other.text == text &&
    other.to == to;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (from == null ? 0 : from!.hashCode) +
    (media.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (to == null ? 0 : to!.hashCode);

  @override
  String toString() => 'MessageInput[from=$from, media=$media, text=$text, to=$to]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
      json[r'media'] = this.media;
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    return json;
  }

  /// Returns a new [MessageInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MessageInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MessageInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MessageInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MessageInput(
        from: mapValueOfType<String>(json, r'from'),
        media: json[r'media'] is Iterable
            ? (json[r'media'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        text: mapValueOfType<String>(json, r'text'),
        to: mapValueOfType<String>(json, r'to'),
      );
    }
    return null;
  }

  static List<MessageInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MessageInput> mapFromJson(dynamic json) {
    final map = <String, MessageInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessageInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MessageInput-objects as value to a dart map
  static Map<String, List<MessageInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MessageInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MessageInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

