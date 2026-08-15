//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Envelope {
  /// Returns a new [Envelope] instance.
  Envelope({
    this.data,
    this.data2,
    required this.msg,
    required this.status,
  });

  Object? data;

  Object? data2;

  /// Empty on success, the reason on failure.
  String msg;

  EnvelopeStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Envelope &&
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
  String toString() => 'Envelope[data=$data, data2=$data2, msg=$msg, status=$status]';

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

  /// Returns a new [Envelope] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Envelope? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Envelope[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Envelope[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Envelope(
        data: mapValueOfType<Object>(json, r'data'),
        data2: mapValueOfType<Object>(json, r'data2'),
        msg: mapValueOfType<String>(json, r'msg')!,
        status: EnvelopeStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<Envelope> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Envelope>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Envelope.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Envelope> mapFromJson(dynamic json) {
    final map = <String, Envelope>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Envelope.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Envelope-objects as value to a dart map
  static Map<String, List<Envelope>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Envelope>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Envelope.listFromJson(entry.value, growable: growable,);
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


class EnvelopeStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const EnvelopeStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ok = EnvelopeStatusEnum._(r'ok');
  static const error = EnvelopeStatusEnum._(r'error');

  /// List of all possible values in this [enum][EnvelopeStatusEnum].
  static const values = <EnvelopeStatusEnum>[
    ok,
    error,
  ];

  static EnvelopeStatusEnum? fromJson(dynamic value) => EnvelopeStatusEnumTypeTransformer().decode(value);

  static List<EnvelopeStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EnvelopeStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EnvelopeStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EnvelopeStatusEnum] to String,
/// and [decode] dynamic data back to [EnvelopeStatusEnum].
class EnvelopeStatusEnumTypeTransformer {
  factory EnvelopeStatusEnumTypeTransformer() => _instance ??= const EnvelopeStatusEnumTypeTransformer._();

  const EnvelopeStatusEnumTypeTransformer._();

  String encode(EnvelopeStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EnvelopeStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EnvelopeStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ok': return EnvelopeStatusEnum.ok;
        case r'error': return EnvelopeStatusEnum.error;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EnvelopeStatusEnumTypeTransformer] instance.
  static EnvelopeStatusEnumTypeTransformer? _instance;
}


