//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CrawlDocument {
  /// Returns a new [CrawlDocument] instance.
  CrawlDocument({
    this.markdown,
    this.metadata,
    this.title,
    this.url,
  });
  /// Markdown is the page's content, extracted and rendered to markdown. This is the field to read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? markdown;

  Object? metadata;

  /// Title is the document's title, when it carried one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// URL is the address actually read, after redirects.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CrawlDocument &&
    other.markdown == markdown &&
    other.metadata == metadata &&
    other.title == title &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (markdown == null ? 0 : markdown!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'CrawlDocument[markdown=$markdown, metadata=$metadata, title=$title, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.markdown != null) {
      json[r'markdown'] = this.markdown;
    } else {
      json[r'markdown'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [CrawlDocument] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CrawlDocument? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CrawlDocument[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CrawlDocument[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CrawlDocument(
        markdown: mapValueOfType<String>(json, r'markdown'),
        metadata: mapValueOfType<Object>(json, r'metadata'),
        title: mapValueOfType<String>(json, r'title'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<CrawlDocument> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CrawlDocument>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CrawlDocument.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CrawlDocument> mapFromJson(dynamic json) {
    final map = <String, CrawlDocument>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CrawlDocument.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CrawlDocument-objects as value to a dart map
  static Map<String, List<CrawlDocument>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CrawlDocument>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CrawlDocument.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

