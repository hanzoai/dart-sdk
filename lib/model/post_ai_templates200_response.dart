//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PostAiTemplates200Response {
  /// Returns a new [PostAiTemplates200Response] instance.
  PostAiTemplates200Response({
    this.data,
    this.data2,
    required this.msg,
    required this.status,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Template? data;

  Object? data2;

  /// Empty on success, the reason on failure.
  String msg;

  PostAiTemplates200ResponseStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostAiTemplates200Response &&
    other.data == data &&
    other.data2 == data2 &&
    other.msg == msg &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data == null ? 0 : data!.hashCode) +
    (data2 == null ? 0 : data2!.hashCode) +
    (msg.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'PostAiTemplates200Response[data=$data, data2=$data2, msg=$msg, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.data2 != null) {
      json[r'data2'] = this.data2;
    } else {
      json[r'data2'] = null;
    }
      json[r'msg'] = this.msg;
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [PostAiTemplates200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostAiTemplates200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PostAiTemplates200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PostAiTemplates200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PostAiTemplates200Response(
        data: Template.fromJson(json[r'data']),
        data2: mapValueOfType<Object>(json, r'data2'),
        msg: mapValueOfType<String>(json, r'msg')!,
        status: PostAiTemplates200ResponseStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<PostAiTemplates200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostAiTemplates200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostAiTemplates200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostAiTemplates200Response> mapFromJson(dynamic json) {
    final map = <String, PostAiTemplates200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostAiTemplates200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostAiTemplates200Response-objects as value to a dart map
  static Map<String, List<PostAiTemplates200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostAiTemplates200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PostAiTemplates200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'msg',
    'status',
  };
}


class PostAiTemplates200ResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const PostAiTemplates200ResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ok = PostAiTemplates200ResponseStatusEnum._(r'ok');
  static const error = PostAiTemplates200ResponseStatusEnum._(r'error');

  /// List of all possible values in this [enum][PostAiTemplates200ResponseStatusEnum].
  static const values = <PostAiTemplates200ResponseStatusEnum>[
    ok,
    error,
  ];

  static PostAiTemplates200ResponseStatusEnum? fromJson(dynamic value) => PostAiTemplates200ResponseStatusEnumTypeTransformer().decode(value);

  static List<PostAiTemplates200ResponseStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostAiTemplates200ResponseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostAiTemplates200ResponseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PostAiTemplates200ResponseStatusEnum] to String,
/// and [decode] dynamic data back to [PostAiTemplates200ResponseStatusEnum].
class PostAiTemplates200ResponseStatusEnumTypeTransformer {
  factory PostAiTemplates200ResponseStatusEnumTypeTransformer() => _instance ??= const PostAiTemplates200ResponseStatusEnumTypeTransformer._();

  const PostAiTemplates200ResponseStatusEnumTypeTransformer._();

  String encode(PostAiTemplates200ResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PostAiTemplates200ResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PostAiTemplates200ResponseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ok': return PostAiTemplates200ResponseStatusEnum.ok;
        case r'error': return PostAiTemplates200ResponseStatusEnum.error;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PostAiTemplates200ResponseStatusEnumTypeTransformer] instance.
  static PostAiTemplates200ResponseStatusEnumTypeTransformer? _instance;
}


