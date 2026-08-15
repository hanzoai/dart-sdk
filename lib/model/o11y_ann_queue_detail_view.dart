//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yAnnQueueDetailView {
  /// Returns a new [O11yAnnQueueDetailView] instance.
  O11yAnnQueueDetailView({
    this.completedCount,
    this.createdAt,
    this.description,
    this.id,
    this.items = const [],
    this.name,
    this.pendingCount,
    this.scoreConfigIds = const [],
    this.updatedAt,
  });

  /// CompletedCount is how many have been reviewed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? completedCount;

  /// CreatedAt is when it was created, RFC3339 in UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Description is its free text, omitted when empty.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// ID is the queue's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Items is the queue's first page of items (up to 100).
  List<O11yAnnItemView> items;

  /// Name is its display handle.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// PendingCount is how many of its items are still awaiting review.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pendingCount;

  /// ScoreConfigIDs are the eval score-configs reviewers grade against.
  List<String> scoreConfigIds;

  /// UpdatedAt is when it last changed, RFC3339 in UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yAnnQueueDetailView &&
    other.completedCount == completedCount &&
    other.createdAt == createdAt &&
    other.description == description &&
    other.id == id &&
    _deepEquality.equals(other.items, items) &&
    other.name == name &&
    other.pendingCount == pendingCount &&
    _deepEquality.equals(other.scoreConfigIds, scoreConfigIds) &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (completedCount == null ? 0 : completedCount!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (items.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (pendingCount == null ? 0 : pendingCount!.hashCode) +
    (scoreConfigIds.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'O11yAnnQueueDetailView[completedCount=$completedCount, createdAt=$createdAt, description=$description, id=$id, items=$items, name=$name, pendingCount=$pendingCount, scoreConfigIds=$scoreConfigIds, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.completedCount != null) {
      json[r'completedCount'] = this.completedCount;
    } else {
      json[r'completedCount'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'items'] = this.items;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.pendingCount != null) {
      json[r'pendingCount'] = this.pendingCount;
    } else {
      json[r'pendingCount'] = null;
    }
      json[r'scoreConfigIds'] = this.scoreConfigIds;
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [O11yAnnQueueDetailView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yAnnQueueDetailView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yAnnQueueDetailView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yAnnQueueDetailView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yAnnQueueDetailView(
        completedCount: mapValueOfType<int>(json, r'completedCount'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        description: mapValueOfType<String>(json, r'description'),
        id: mapValueOfType<String>(json, r'id'),
        items: O11yAnnItemView.listFromJson(json[r'items']),
        name: mapValueOfType<String>(json, r'name'),
        pendingCount: mapValueOfType<int>(json, r'pendingCount'),
        scoreConfigIds: json[r'scoreConfigIds'] is Iterable
            ? (json[r'scoreConfigIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<O11yAnnQueueDetailView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yAnnQueueDetailView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yAnnQueueDetailView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yAnnQueueDetailView> mapFromJson(dynamic json) {
    final map = <String, O11yAnnQueueDetailView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yAnnQueueDetailView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yAnnQueueDetailView-objects as value to a dart map
  static Map<String, List<O11yAnnQueueDetailView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yAnnQueueDetailView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yAnnQueueDetailView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

