//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskDisposeOut {
  /// Returns a new [RiskDisposeOut] instance.
  RiskDisposeOut({
    this.before,
    this.disposed,
    this.held,
    this.oldest,
    this.remaining,
    this.restored,
    this.total,
  });
  /// Before echoes the retention boundary that was applied, RFC 3339 in UTC, as this plane parsed it from the request. What was disposed of is every record WRITTEN strictly before it and not under litigation hold — written, measured against the server clock at the write, and not against the event or observation times the asserting caller supplies, because a tenant that could back-date could delete a compliance record on demand. A boundary younger than the platform floor of five years is refused before anything is removed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? before;

  /// Disposed is how many whole records were removed. Records are disposed of whole, never redacted: a partially-erased compliance record is one nobody can attest to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? disposed;

  /// Held is how many records inside the boundary were kept under litigation hold.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? held;

  /// Oldest is the WRITE time of the oldest assertion this tenant still holds after the sweep, RFC 3339, and it is omitted exactly when nothing remains at all. Still older than Before means records survived on purpose and says which mechanism kept them: a litigation hold (Held), or the per-call bound with more to sweep on the next call (Remaining).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? oldest;

  /// Remaining is how many disposable records are still older than the boundary. A sweep is bounded per call, so a non-zero value here means call again rather than that something failed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? remaining;

  /// Restored is how many records this sweep had already removed from the derived columnar copy and then did NOT dispose of, because a litigation hold arrived between the identify and the delete — and which were therefore written back to the derived copy before this answered.  It is a NAMED state and not a silent repair. The copy is swept before the record so nothing is orphaned in the warehouse, which means a record the delete declines to remove is one the warehouse has already lost, with its seq behind the delivery cursor and no retry that can reach it. Non-zero here says the collision happened and was repaired; a non-zero that keeps recurring says retention and hold are racing on the same records, which is worth an operator's attention rather than a debug line.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? restored;

  /// Total and Oldest describe what the tenant still holds afterwards, so a disposal that removed nothing is distinguishable from a tenant that had nothing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskDisposeOut &&
    other.before == before &&
    other.disposed == disposed &&
    other.held == held &&
    other.oldest == oldest &&
    other.remaining == remaining &&
    other.restored == restored &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (before == null ? 0 : before!.hashCode) +
    (disposed == null ? 0 : disposed!.hashCode) +
    (held == null ? 0 : held!.hashCode) +
    (oldest == null ? 0 : oldest!.hashCode) +
    (remaining == null ? 0 : remaining!.hashCode) +
    (restored == null ? 0 : restored!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'RiskDisposeOut[before=$before, disposed=$disposed, held=$held, oldest=$oldest, remaining=$remaining, restored=$restored, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.before != null) {
      json[r'before'] = this.before;
    } else {
      json[r'before'] = null;
    }
    if (this.disposed != null) {
      json[r'disposed'] = this.disposed;
    } else {
      json[r'disposed'] = null;
    }
    if (this.held != null) {
      json[r'held'] = this.held;
    } else {
      json[r'held'] = null;
    }
    if (this.oldest != null) {
      json[r'oldest'] = this.oldest;
    } else {
      json[r'oldest'] = null;
    }
    if (this.remaining != null) {
      json[r'remaining'] = this.remaining;
    } else {
      json[r'remaining'] = null;
    }
    if (this.restored != null) {
      json[r'restored'] = this.restored;
    } else {
      json[r'restored'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [RiskDisposeOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskDisposeOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskDisposeOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskDisposeOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskDisposeOut(
        before: mapValueOfType<String>(json, r'before'),
        disposed: mapValueOfType<int>(json, r'disposed'),
        held: mapValueOfType<int>(json, r'held'),
        oldest: mapValueOfType<String>(json, r'oldest'),
        remaining: mapValueOfType<int>(json, r'remaining'),
        restored: mapValueOfType<int>(json, r'restored'),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<RiskDisposeOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskDisposeOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskDisposeOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskDisposeOut> mapFromJson(dynamic json) {
    final map = <String, RiskDisposeOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskDisposeOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskDisposeOut-objects as value to a dart map
  static Map<String, List<RiskDisposeOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskDisposeOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskDisposeOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

