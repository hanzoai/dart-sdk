//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yPagerdutyConfig {
  /// Returns a new [O11yPagerdutyConfig] instance.
  O11yPagerdutyConfig({
    this.notifierConfig,
    this.class_,
    this.client,
    this.clientUrl,
    this.component,
    this.description,
    this.details = const {},
    this.group,
    this.httpConfig,
    this.images = const [],
    this.links = const [],
    this.routingKey,
    this.routingKeyFile,
    this.serviceKey,
    this.serviceKeyFile,
    this.severity,
    this.source_,
    this.timeout,
    this.url,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yNotifierConfig? notifierConfig;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? class_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? client;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? component;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  Map<String, Object> details;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? group;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yHTTPClientConfig? httpConfig;

  List<O11yPagerdutyImage> images;

  List<O11yPagerdutyLink> links;

  Object? routingKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? routingKeyFile;

  Object? serviceKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceKeyFile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? severity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Timeout is the maximum time allowed to invoke the pagerduty. Setting this to 0 does not impose a timeout.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeout;

  Object? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yPagerdutyConfig &&
    other.notifierConfig == notifierConfig &&
    other.class_ == class_ &&
    other.client == client &&
    other.clientUrl == clientUrl &&
    other.component == component &&
    other.description == description &&
    _deepEquality.equals(other.details, details) &&
    other.group == group &&
    other.httpConfig == httpConfig &&
    _deepEquality.equals(other.images, images) &&
    _deepEquality.equals(other.links, links) &&
    other.routingKey == routingKey &&
    other.routingKeyFile == routingKeyFile &&
    other.serviceKey == serviceKey &&
    other.serviceKeyFile == serviceKeyFile &&
    other.severity == severity &&
    other.source_ == source_ &&
    other.timeout == timeout &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notifierConfig == null ? 0 : notifierConfig!.hashCode) +
    (class_ == null ? 0 : class_!.hashCode) +
    (client == null ? 0 : client!.hashCode) +
    (clientUrl == null ? 0 : clientUrl!.hashCode) +
    (component == null ? 0 : component!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (details.hashCode) +
    (group == null ? 0 : group!.hashCode) +
    (httpConfig == null ? 0 : httpConfig!.hashCode) +
    (images.hashCode) +
    (links.hashCode) +
    (routingKey == null ? 0 : routingKey!.hashCode) +
    (routingKeyFile == null ? 0 : routingKeyFile!.hashCode) +
    (serviceKey == null ? 0 : serviceKey!.hashCode) +
    (serviceKeyFile == null ? 0 : serviceKeyFile!.hashCode) +
    (severity == null ? 0 : severity!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (timeout == null ? 0 : timeout!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'O11yPagerdutyConfig[notifierConfig=$notifierConfig, class_=$class_, client=$client, clientUrl=$clientUrl, component=$component, description=$description, details=$details, group=$group, httpConfig=$httpConfig, images=$images, links=$links, routingKey=$routingKey, routingKeyFile=$routingKeyFile, serviceKey=$serviceKey, serviceKeyFile=$serviceKeyFile, severity=$severity, source_=$source_, timeout=$timeout, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.notifierConfig != null) {
      json[r'NotifierConfig'] = this.notifierConfig;
    } else {
      json[r'NotifierConfig'] = null;
    }
    if (this.class_ != null) {
      json[r'class'] = this.class_;
    } else {
      json[r'class'] = null;
    }
    if (this.client != null) {
      json[r'client'] = this.client;
    } else {
      json[r'client'] = null;
    }
    if (this.clientUrl != null) {
      json[r'client_url'] = this.clientUrl;
    } else {
      json[r'client_url'] = null;
    }
    if (this.component != null) {
      json[r'component'] = this.component;
    } else {
      json[r'component'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'details'] = this.details;
    if (this.group != null) {
      json[r'group'] = this.group;
    } else {
      json[r'group'] = null;
    }
    if (this.httpConfig != null) {
      json[r'http_config'] = this.httpConfig;
    } else {
      json[r'http_config'] = null;
    }
      json[r'images'] = this.images;
      json[r'links'] = this.links;
    if (this.routingKey != null) {
      json[r'routing_key'] = this.routingKey;
    } else {
      json[r'routing_key'] = null;
    }
    if (this.routingKeyFile != null) {
      json[r'routing_key_file'] = this.routingKeyFile;
    } else {
      json[r'routing_key_file'] = null;
    }
    if (this.serviceKey != null) {
      json[r'service_key'] = this.serviceKey;
    } else {
      json[r'service_key'] = null;
    }
    if (this.serviceKeyFile != null) {
      json[r'service_key_file'] = this.serviceKeyFile;
    } else {
      json[r'service_key_file'] = null;
    }
    if (this.severity != null) {
      json[r'severity'] = this.severity;
    } else {
      json[r'severity'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.timeout != null) {
      json[r'timeout'] = this.timeout;
    } else {
      json[r'timeout'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [O11yPagerdutyConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yPagerdutyConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yPagerdutyConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yPagerdutyConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yPagerdutyConfig(
        notifierConfig: O11yNotifierConfig.fromJson(json[r'NotifierConfig']),
        class_: mapValueOfType<String>(json, r'class'),
        client: mapValueOfType<String>(json, r'client'),
        clientUrl: mapValueOfType<String>(json, r'client_url'),
        component: mapValueOfType<String>(json, r'component'),
        description: mapValueOfType<String>(json, r'description'),
        details: mapCastOfType<String, Object>(json, r'details') ?? const {},
        group: mapValueOfType<String>(json, r'group'),
        httpConfig: O11yHTTPClientConfig.fromJson(json[r'http_config']),
        images: O11yPagerdutyImage.listFromJson(json[r'images']),
        links: O11yPagerdutyLink.listFromJson(json[r'links']),
        routingKey: mapValueOfType<Object>(json, r'routing_key'),
        routingKeyFile: mapValueOfType<String>(json, r'routing_key_file'),
        serviceKey: mapValueOfType<Object>(json, r'service_key'),
        serviceKeyFile: mapValueOfType<String>(json, r'service_key_file'),
        severity: mapValueOfType<String>(json, r'severity'),
        source_: mapValueOfType<String>(json, r'source'),
        timeout: mapValueOfType<int>(json, r'timeout'),
        url: mapValueOfType<Object>(json, r'url'),
      );
    }
    return null;
  }

  static List<O11yPagerdutyConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yPagerdutyConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yPagerdutyConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yPagerdutyConfig> mapFromJson(dynamic json) {
    final map = <String, O11yPagerdutyConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yPagerdutyConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yPagerdutyConfig-objects as value to a dart map
  static Map<String, List<O11yPagerdutyConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yPagerdutyConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yPagerdutyConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

