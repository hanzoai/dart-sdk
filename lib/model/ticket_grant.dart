//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TicketGrant {
  /// Returns a new [TicketGrant] instance.
  TicketGrant({
    this.expiresIn,
    this.ticket,
    this.url,
  });
  /// ExpiresIn is how long the ticket is good for, in seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresIn;

  /// Ticket is the grant itself. It is single-purpose and short-lived, and it travels in a query string because a WebSocket handshake carries no Authorization header a browser can set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ticket;

  /// URL is the PATH to open, ticket included — not an absolute URL. Which host this address wears in public is the edge's answer and not this process's, so an absolute URL would be a guess; the client already knows the host it is talking to. It names the PAGE, which is what a caller embeds — the page finds its own socket, and a caller that wants the raw socket adds `/ws`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TicketGrant &&
    other.expiresIn == expiresIn &&
    other.ticket == ticket &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expiresIn == null ? 0 : expiresIn!.hashCode) +
    (ticket == null ? 0 : ticket!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'TicketGrant[expiresIn=$expiresIn, ticket=$ticket, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.expiresIn != null) {
      json[r'expiresIn'] = this.expiresIn;
    } else {
      json[r'expiresIn'] = null;
    }
    if (this.ticket != null) {
      json[r'ticket'] = this.ticket;
    } else {
      json[r'ticket'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [TicketGrant] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TicketGrant? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TicketGrant[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TicketGrant[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TicketGrant(
        expiresIn: mapValueOfType<int>(json, r'expiresIn'),
        ticket: mapValueOfType<String>(json, r'ticket'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<TicketGrant> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TicketGrant>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TicketGrant.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TicketGrant> mapFromJson(dynamic json) {
    final map = <String, TicketGrant>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TicketGrant.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TicketGrant-objects as value to a dart map
  static Map<String, List<TicketGrant>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TicketGrant>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TicketGrant.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

