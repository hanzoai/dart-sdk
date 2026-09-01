//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GenerateInput {
  /// Returns a new [GenerateInput] instance.
  GenerateInput({
    this.brief,
    this.channels,
    this.design,
    this.doctype,
    this.kind,
    this.model,
    this.product,
    this.project,
    this.sourceMedia,
    this.title,
    this.tone,
    this.voice,
  });
  /// the brief/goal driving copy generation
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? brief;

  /// target channels (SocialPost)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channels;

  /// studio design slug (asset source)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? design;

  /// marketing.Campaign | marketing.SocialPost | marketing.Asset
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? doctype;

  /// asset kind: ecom|product|lifestyle|hover|hero
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// optional zen model override (copy)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// commerce product handle (copy context)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? product;

  /// brand/site sub-scope (billing + tenancy axis)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// asset source image (design CAD/photo)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceMedia;

  /// optional explicit title
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// tone override for a single draft
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tone;

  /// brand-voice guidance for the copy director
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? voice;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateInput &&
    other.brief == brief &&
    other.channels == channels &&
    other.design == design &&
    other.doctype == doctype &&
    other.kind == kind &&
    other.model == model &&
    other.product == product &&
    other.project == project &&
    other.sourceMedia == sourceMedia &&
    other.title == title &&
    other.tone == tone &&
    other.voice == voice;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (brief == null ? 0 : brief!.hashCode) +
    (channels == null ? 0 : channels!.hashCode) +
    (design == null ? 0 : design!.hashCode) +
    (doctype == null ? 0 : doctype!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (product == null ? 0 : product!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (sourceMedia == null ? 0 : sourceMedia!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (tone == null ? 0 : tone!.hashCode) +
    (voice == null ? 0 : voice!.hashCode);

  @override
  String toString() => 'GenerateInput[brief=$brief, channels=$channels, design=$design, doctype=$doctype, kind=$kind, model=$model, product=$product, project=$project, sourceMedia=$sourceMedia, title=$title, tone=$tone, voice=$voice]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.brief != null) {
      json[r'brief'] = this.brief;
    } else {
      json[r'brief'] = null;
    }
    if (this.channels != null) {
      json[r'channels'] = this.channels;
    } else {
      json[r'channels'] = null;
    }
    if (this.design != null) {
      json[r'design'] = this.design;
    } else {
      json[r'design'] = null;
    }
    if (this.doctype != null) {
      json[r'doctype'] = this.doctype;
    } else {
      json[r'doctype'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.product != null) {
      json[r'product'] = this.product;
    } else {
      json[r'product'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.sourceMedia != null) {
      json[r'source_media'] = this.sourceMedia;
    } else {
      json[r'source_media'] = null;
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
    if (this.voice != null) {
      json[r'voice'] = this.voice;
    } else {
      json[r'voice'] = null;
    }
    return json;
  }

  /// Returns a new [GenerateInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateInput(
        brief: mapValueOfType<String>(json, r'brief'),
        channels: mapValueOfType<String>(json, r'channels'),
        design: mapValueOfType<String>(json, r'design'),
        doctype: mapValueOfType<String>(json, r'doctype'),
        kind: mapValueOfType<String>(json, r'kind'),
        model: mapValueOfType<String>(json, r'model'),
        product: mapValueOfType<String>(json, r'product'),
        project: mapValueOfType<String>(json, r'project'),
        sourceMedia: mapValueOfType<String>(json, r'source_media'),
        title: mapValueOfType<String>(json, r'title'),
        tone: mapValueOfType<String>(json, r'tone'),
        voice: mapValueOfType<String>(json, r'voice'),
      );
    }
    return null;
  }

  static List<GenerateInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateInput> mapFromJson(dynamic json) {
    final map = <String, GenerateInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateInput-objects as value to a dart map
  static Map<String, List<GenerateInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GenerateInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

