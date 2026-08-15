//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Article {
  /// Returns a new [Article] instance.
  Article({
    this.content = const [],
    this.createdTime,
    this.displayName,
    this.glossary = const [],
    this.name,
    this.owner,
    this.text,
    this.type,
    this.workflow,
  });

  List<Block> content;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  List<String> glossary;

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
  String? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workflow;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Article &&
    _deepEquality.equals(other.content, content) &&
    other.createdTime == createdTime &&
    other.displayName == displayName &&
    _deepEquality.equals(other.glossary, glossary) &&
    other.name == name &&
    other.owner == owner &&
    other.text == text &&
    other.type == type &&
    other.workflow == workflow;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (content.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (glossary.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (workflow == null ? 0 : workflow!.hashCode);

  @override
  String toString() => 'Article[content=$content, createdTime=$createdTime, displayName=$displayName, glossary=$glossary, name=$name, owner=$owner, text=$text, type=$type, workflow=$workflow]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'content'] = this.content;
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
      json[r'glossary'] = this.glossary;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.workflow != null) {
      json[r'workflow'] = this.workflow;
    } else {
      json[r'workflow'] = null;
    }
    return json;
  }

  /// Returns a new [Article] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Article? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Article[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Article[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Article(
        content: Block.listFromJson(json[r'content']),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        glossary: json[r'glossary'] is Iterable
            ? (json[r'glossary'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        name: mapValueOfType<String>(json, r'name'),
        owner: mapValueOfType<String>(json, r'owner'),
        text: mapValueOfType<String>(json, r'text'),
        type: mapValueOfType<String>(json, r'type'),
        workflow: mapValueOfType<String>(json, r'workflow'),
      );
    }
    return null;
  }

  static List<Article> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Article>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Article.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Article> mapFromJson(dynamic json) {
    final map = <String, Article>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Article.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Article-objects as value to a dart map
  static Map<String, List<Article>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Article>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Article.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

