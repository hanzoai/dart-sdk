//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SummaryResp {
  /// Returns a new [SummaryResp] instance.
  SummaryResp({
    this.account,
    this.from,
    this.hanzo,
    this.range,
    this.rows = const [],
    this.to,
  });
  /// Account reports the linked-accounts ledger's own availability, so a partial answer never fabricates this half. It is scoped to the CALLER: the accounts they linked, metered from each provider's own login.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SourceState? account;

  /// From is when the window opens, RFC 3339 UTC. ONE resolver fixes it for both ledgers, so the account rows and the Hanzo rows always cover the same period — two resolvers could drift and turn the union into a lie.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  /// Hanzo reports the same for the Hanzo-routed ledger, which is scoped to the ORG rather than the caller — a different question over the same window. The two are independent: either can be unavailable while the other answers, and Rows then carries only the half that did.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SourceState? hanzo;

  /// Range is the resolved period label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? range;

  /// Rows is the union of both ledgers, each row labelled by source and scope — concatenated, NEVER summed: a plan's percentage is not money.
  List<TotalView> rows;

  /// To is where the window closes, EXCLUSIVE, RFC 3339 UTC — the instant the read was served. Shared by both ledgers, for the reason From gives.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? to;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SummaryResp &&
    other.account == account &&
    other.from == from &&
    other.hanzo == hanzo &&
    other.range == range &&
    _deepEquality.equals(other.rows, rows) &&
    other.to == to;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (hanzo == null ? 0 : hanzo!.hashCode) +
    (range == null ? 0 : range!.hashCode) +
    (rows.hashCode) +
    (to == null ? 0 : to!.hashCode);

  @override
  String toString() => 'SummaryResp[account=$account, from=$from, hanzo=$hanzo, range=$range, rows=$rows, to=$to]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.hanzo != null) {
      json[r'hanzo'] = this.hanzo;
    } else {
      json[r'hanzo'] = null;
    }
    if (this.range != null) {
      json[r'range'] = this.range;
    } else {
      json[r'range'] = null;
    }
      json[r'rows'] = this.rows;
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    return json;
  }

  /// Returns a new [SummaryResp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SummaryResp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SummaryResp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SummaryResp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SummaryResp(
        account: SourceState.fromJson(json[r'account']),
        from: mapValueOfType<String>(json, r'from'),
        hanzo: SourceState.fromJson(json[r'hanzo']),
        range: mapValueOfType<String>(json, r'range'),
        rows: TotalView.listFromJson(json[r'rows']),
        to: mapValueOfType<String>(json, r'to'),
      );
    }
    return null;
  }

  static List<SummaryResp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SummaryResp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SummaryResp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SummaryResp> mapFromJson(dynamic json) {
    final map = <String, SummaryResp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SummaryResp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SummaryResp-objects as value to a dart map
  static Map<String, List<SummaryResp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SummaryResp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SummaryResp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

