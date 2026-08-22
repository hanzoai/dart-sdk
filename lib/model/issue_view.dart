//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IssueView {
  /// Returns a new [IssueView] instance.
  IssueView({
    this.assignee,
    this.createdAt,
    this.description,
    this.dueAt,
    this.extRef,
    this.id,
    this.identifier,
    this.kind,
    this.labels = const [],
    this.number,
    this.priority,
    this.projectKey,
    this.repo,
    this.source_,
    this.startAt,
    this.status,
    this.title,
    this.updatedAt,
  });
  /// Assignee is who holds the work — an IAM username, or the login of the FIRST assignee when a forge issue has several. Absent when nobody holds it, which is exactly the state a claim needs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assignee;

  /// CreatedAt is when the item was opened, in unix seconds. 0 when the source gave no parseable timestamp.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Description is the body, markdown as its author wrote it. Absent when empty.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// DueAt is when the work is due, in unix seconds; absent means no due date. A forge row takes it from its MILESTONE's due date, since a forge issue has no deadline of its own. Never before StartAt, and never past 2200-01-01.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dueAt;

  /// ExtRef anchors the item to something outside the todo — a mirrored issue (\"github:owner/repo#123\"), a pushed PR branch, or a record on another plane. It is the idempotency key the mirror upsert matches on. Absent when the item has no external origin.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? extRef;

  /// ID is the work item's opaque handle, and it is NOT how you address it — ProjectKey plus Number is. Its shape says which source answered: a forge issue's is the forge's own numeric id in decimal, an index row's a minted \"issue_\" id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Identifier is the human handle, \"<key>#<number>\" — the board and the number on it, joined. ONE spelling whichever source answered, because a list where forge rows read cli#1 and index rows read OPS-3 is two products in one list.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? identifier;

  /// Kind is what the item IS: issue, pr or epic. Set once at create and never changed, so a row does not migrate between surfaces. Deliberately not \"task\" — that word is the async plane (contract.go).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Labels are the item's remaining tags, with the status and priority labels lifted OUT — a column that stayed here would render twice, once as the card's column and once as a chip on the card. Always present; empty is [].
  List<String> labels;

  /// Number is the item's number ON ITS BOARD, from 1 and monotonic there — the forge's own issue number for a forge row, allocated inside the create transaction for an index row so it cannot race. Unique per board, never across the org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? number;

  /// Priority is urgent, high, medium, low or none. Also a label on a forge row. Never empty: \"none\" when nothing names one, so callers compare a value rather than test for absence.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? priority;

  /// ProjectKey is the board this item is on: the repository name for a forge issue, the index board's key otherwise. With Number it is the item's address in every other route.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectKey;

  /// Repo is the git repository the item is bound to, so a repository's Issues and PRs tabs are filters over this one table. Absent when the item is not repo-bound.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// Source is which surface OPENED it: team, git, crm, helpdesk, cms or agent. Also set once. It is the ORIGIN, not the subject — source=helpdesk is an engineering issue opened from a support escalation, not a support ticket.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// StartAt is when the work starts, in unix seconds; absent means unscheduled. A forge row takes it from when the issue was opened, but only once the issue has a due date — an interval needs both ends.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startAt;

  /// Status is the board column: backlog, todo, in_progress, done or canceled, and nothing else. On a forge row it is read off a LABEL, so relabelling in the forge web UI moves the card here and vice versa — and a CLOSED forge issue reads done whatever its labels say. Never empty: \"backlog\" when nothing names a column.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Title is the item's one-line summary.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// UpdatedAt is when it last changed, in unix seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IssueView &&
    other.assignee == assignee &&
    other.createdAt == createdAt &&
    other.description == description &&
    other.dueAt == dueAt &&
    other.extRef == extRef &&
    other.id == id &&
    other.identifier == identifier &&
    other.kind == kind &&
    _deepEquality.equals(other.labels, labels) &&
    other.number == number &&
    other.priority == priority &&
    other.projectKey == projectKey &&
    other.repo == repo &&
    other.source_ == source_ &&
    other.startAt == startAt &&
    other.status == status &&
    other.title == title &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assignee == null ? 0 : assignee!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (dueAt == null ? 0 : dueAt!.hashCode) +
    (extRef == null ? 0 : extRef!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (identifier == null ? 0 : identifier!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (labels.hashCode) +
    (number == null ? 0 : number!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (projectKey == null ? 0 : projectKey!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (startAt == null ? 0 : startAt!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'IssueView[assignee=$assignee, createdAt=$createdAt, description=$description, dueAt=$dueAt, extRef=$extRef, id=$id, identifier=$identifier, kind=$kind, labels=$labels, number=$number, priority=$priority, projectKey=$projectKey, repo=$repo, source_=$source_, startAt=$startAt, status=$status, title=$title, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.assignee != null) {
      json[r'assignee'] = this.assignee;
    } else {
      json[r'assignee'] = null;
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
    if (this.dueAt != null) {
      json[r'dueAt'] = this.dueAt;
    } else {
      json[r'dueAt'] = null;
    }
    if (this.extRef != null) {
      json[r'extRef'] = this.extRef;
    } else {
      json[r'extRef'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.identifier != null) {
      json[r'identifier'] = this.identifier;
    } else {
      json[r'identifier'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
      json[r'labels'] = this.labels;
    if (this.number != null) {
      json[r'number'] = this.number;
    } else {
      json[r'number'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.projectKey != null) {
      json[r'projectKey'] = this.projectKey;
    } else {
      json[r'projectKey'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.startAt != null) {
      json[r'startAt'] = this.startAt;
    } else {
      json[r'startAt'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [IssueView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IssueView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IssueView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IssueView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IssueView(
        assignee: mapValueOfType<String>(json, r'assignee'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        description: mapValueOfType<String>(json, r'description'),
        dueAt: mapValueOfType<int>(json, r'dueAt'),
        extRef: mapValueOfType<String>(json, r'extRef'),
        id: mapValueOfType<String>(json, r'id'),
        identifier: mapValueOfType<String>(json, r'identifier'),
        kind: mapValueOfType<String>(json, r'kind'),
        labels: json[r'labels'] is Iterable
            ? (json[r'labels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        number: mapValueOfType<int>(json, r'number'),
        priority: mapValueOfType<String>(json, r'priority'),
        projectKey: mapValueOfType<String>(json, r'projectKey'),
        repo: mapValueOfType<String>(json, r'repo'),
        source_: mapValueOfType<String>(json, r'source'),
        startAt: mapValueOfType<int>(json, r'startAt'),
        status: mapValueOfType<String>(json, r'status'),
        title: mapValueOfType<String>(json, r'title'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<IssueView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IssueView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IssueView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IssueView> mapFromJson(dynamic json) {
    final map = <String, IssueView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IssueView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IssueView-objects as value to a dart map
  static Map<String, List<IssueView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IssueView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IssueView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

