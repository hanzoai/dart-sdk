//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class NotifySend {
  /// Returns a new [NotifySend] instance.
  NotifySend({
    this.body,
    this.channel,
    this.event,
    this.provider,
    this.subject,
    this.sync_,
    this.templateId,
    this.templateVars,
    this.to = const [],
  });
  /// Body is the message text, sent verbatim when present — the no-template path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  /// Channel selects the delivery channel, sms or email. The per-channel routes (/send/sms, /send/email) pin it, overriding whatever the body names; on the generic route it is required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channel;

  /// Event is the event name, which doubles as the template id when TemplateID is empty — the IAM OTP path sends event=iam.otp_sent and nothing else.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? event;

  /// Provider pins a provider service name (twilio, plivo, twilio_email, mail). Empty picks the one whose org credentials are actually configured in KMS.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Subject is the message subject, carried on the email channel only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// Sync must be exactly \"true\": delivery here is synchronous, and anything else answers 503 because the queue plane that would run an async dispatch is owned elsewhere. Over REST it rides as ?sync=true (the URL binds over the body); a by-name call states it in its arguments.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sync_;

  /// TemplateID selects a built-in template when Body is empty.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? templateId;

  Object? templateVars;

  /// To is the destination address per recipient — a phone number for sms, an email address for email. Several recipients fan out into one provider call each, and the response shape follows the count (see the items field).
  List<String> to;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotifySend &&
    other.body == body &&
    other.channel == channel &&
    other.event == event &&
    other.provider == provider &&
    other.subject == subject &&
    other.sync_ == sync_ &&
    other.templateId == templateId &&
    other.templateVars == templateVars &&
    _deepEquality.equals(other.to, to);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (body == null ? 0 : body!.hashCode) +
    (channel == null ? 0 : channel!.hashCode) +
    (event == null ? 0 : event!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (sync_ == null ? 0 : sync_!.hashCode) +
    (templateId == null ? 0 : templateId!.hashCode) +
    (templateVars == null ? 0 : templateVars!.hashCode) +
    (to.hashCode);

  @override
  String toString() => 'NotifySend[body=$body, channel=$channel, event=$event, provider=$provider, subject=$subject, sync_=$sync_, templateId=$templateId, templateVars=$templateVars, to=$to]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
    if (this.channel != null) {
      json[r'channel'] = this.channel;
    } else {
      json[r'channel'] = null;
    }
    if (this.event != null) {
      json[r'event'] = this.event;
    } else {
      json[r'event'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.sync_ != null) {
      json[r'sync'] = this.sync_;
    } else {
      json[r'sync'] = null;
    }
    if (this.templateId != null) {
      json[r'template_id'] = this.templateId;
    } else {
      json[r'template_id'] = null;
    }
    if (this.templateVars != null) {
      json[r'template_vars'] = this.templateVars;
    } else {
      json[r'template_vars'] = null;
    }
      json[r'to'] = this.to;
    return json;
  }

  /// Returns a new [NotifySend] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotifySend? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotifySend[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotifySend[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotifySend(
        body: mapValueOfType<String>(json, r'body'),
        channel: mapValueOfType<String>(json, r'channel'),
        event: mapValueOfType<String>(json, r'event'),
        provider: mapValueOfType<String>(json, r'provider'),
        subject: mapValueOfType<String>(json, r'subject'),
        sync_: mapValueOfType<String>(json, r'sync'),
        templateId: mapValueOfType<String>(json, r'template_id'),
        templateVars: mapValueOfType<Object>(json, r'template_vars'),
        to: json[r'to'] is Iterable
            ? (json[r'to'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<NotifySend> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotifySend>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotifySend.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotifySend> mapFromJson(dynamic json) {
    final map = <String, NotifySend>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotifySend.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotifySend-objects as value to a dart map
  static Map<String, List<NotifySend>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotifySend>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotifySend.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

