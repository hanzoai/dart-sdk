//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class NewsItem {
  /// Returns a new [NewsItem] instance.
  NewsItem({
    this.image,
    this.lang,
    this.link,
    this.pubDate,
    this.source_,
    this.title,
    this.tone,
  });
  /// Image is a lead-image URL when the upstream carried one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  /// Lang is the article's language code when the upstream reported one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lang;

  /// Link is the article's URL at the outlet.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? link;

  /// PubDate is when the outlet published it, RFC3339 UTC. Empty when the upstream gave no date this could parse — items with no date sort last.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pubDate;

  /// Source is the outlet the item came from, as the upstream named it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Title is the headline.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Tone is GDELT's own sentiment score for the article, as text. Only GDELT items carry it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tone;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewsItem &&
    other.image == image &&
    other.lang == lang &&
    other.link == link &&
    other.pubDate == pubDate &&
    other.source_ == source_ &&
    other.title == title &&
    other.tone == tone;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (image == null ? 0 : image!.hashCode) +
    (lang == null ? 0 : lang!.hashCode) +
    (link == null ? 0 : link!.hashCode) +
    (pubDate == null ? 0 : pubDate!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (tone == null ? 0 : tone!.hashCode);

  @override
  String toString() => 'NewsItem[image=$image, lang=$lang, link=$link, pubDate=$pubDate, source_=$source_, title=$title, tone=$tone]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.lang != null) {
      json[r'lang'] = this.lang;
    } else {
      json[r'lang'] = null;
    }
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    if (this.pubDate != null) {
      json[r'pubDate'] = this.pubDate;
    } else {
      json[r'pubDate'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.tone != null) {
      json[r'tone'] = this.tone;
    } else {
      json[r'tone'] = null;
    }
    return json;
  }

  /// Returns a new [NewsItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewsItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NewsItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NewsItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewsItem(
        image: mapValueOfType<String>(json, r'image'),
        lang: mapValueOfType<String>(json, r'lang'),
        link: mapValueOfType<String>(json, r'link'),
        pubDate: mapValueOfType<String>(json, r'pubDate'),
        source_: mapValueOfType<String>(json, r'source'),
        title: mapValueOfType<String>(json, r'title'),
        tone: mapValueOfType<String>(json, r'tone'),
      );
    }
    return null;
  }

  static List<NewsItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewsItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewsItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewsItem> mapFromJson(dynamic json) {
    final map = <String, NewsItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewsItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewsItem-objects as value to a dart map
  static Map<String, List<NewsItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NewsItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NewsItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

