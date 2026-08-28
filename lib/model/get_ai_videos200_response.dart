//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GetAiVideos200Response {
  /// Returns a new [GetAiVideos200Response] instance.
  GetAiVideos200Response({
    this.data = const [],
    this.data2,
    required this.msg,
    required this.status,
  });
  List<Video> data;

  Object? data2;

  /// Empty on success, the reason on failure.
  String msg;

  GetAiVideos200ResponseStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetAiVideos200Response &&
    _deepEquality.equals(other.data, data) &&
    other.data2 == data2 &&
    other.msg == msg &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (data2 == null ? 0 : data2!.hashCode) +
    (msg.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'GetAiVideos200Response[data=$data, data2=$data2, msg=$msg, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    if (this.data2 != null) {
      json[r'data2'] = this.data2;
    } else {
      json[r'data2'] = null;
    }
      json[r'msg'] = this.msg;
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [GetAiVideos200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetAiVideos200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetAiVideos200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetAiVideos200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetAiVideos200Response(
        data: Video.listFromJson(json[r'data']),
        data2: mapValueOfType<Object>(json, r'data2'),
        msg: mapValueOfType<String>(json, r'msg')!,
        status: GetAiVideos200ResponseStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<GetAiVideos200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetAiVideos200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetAiVideos200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetAiVideos200Response> mapFromJson(dynamic json) {
    final map = <String, GetAiVideos200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetAiVideos200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetAiVideos200Response-objects as value to a dart map
  static Map<String, List<GetAiVideos200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetAiVideos200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetAiVideos200Response.listFromJson(entry.value, growable: growable,);
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


class GetAiVideos200ResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const GetAiVideos200ResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ok = GetAiVideos200ResponseStatusEnum._(r'ok');
  static const error = GetAiVideos200ResponseStatusEnum._(r'error');

  /// List of all possible values in this [enum][GetAiVideos200ResponseStatusEnum].
  static const values = <GetAiVideos200ResponseStatusEnum>[
    ok,
    error,
  ];

  static GetAiVideos200ResponseStatusEnum? fromJson(dynamic value) => GetAiVideos200ResponseStatusEnumTypeTransformer().decode(value);

  static List<GetAiVideos200ResponseStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetAiVideos200ResponseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetAiVideos200ResponseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GetAiVideos200ResponseStatusEnum] to String,
/// and [decode] dynamic data back to [GetAiVideos200ResponseStatusEnum].
class GetAiVideos200ResponseStatusEnumTypeTransformer {
  factory GetAiVideos200ResponseStatusEnumTypeTransformer() => _instance ??= const GetAiVideos200ResponseStatusEnumTypeTransformer._();

  const GetAiVideos200ResponseStatusEnumTypeTransformer._();

  String encode(GetAiVideos200ResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetAiVideos200ResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetAiVideos200ResponseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ok': return GetAiVideos200ResponseStatusEnum.ok;
        case r'error': return GetAiVideos200ResponseStatusEnum.error;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetAiVideos200ResponseStatusEnumTypeTransformer] instance.
  static GetAiVideos200ResponseStatusEnumTypeTransformer? _instance;
}

