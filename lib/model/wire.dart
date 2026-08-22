//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Wire {
  /// Returns a new [Wire] instance.
  Wire({
    this.action,
    this.authMethod,
    this.email,
    this.hash,
    this.home,
    this.isAdmin,
    this.method,
    this.org,
    this.path,
    this.prevHash,
    this.reason,
    this.requestId,
    this.resource,
    this.resourceId,
    this.result,
    this.seq,
    this.sourceIp,
    this.status,
    this.sub,
    this.time,
    this.userAgent,
  });
  /// Action is the verb that was performed. It is the event's name, not the HTTP method — a request-sourced record carries both, and the pair is what makes a row readable (\"grant.create\" at POST /v1/admin/grants).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

  /// Auth is the credential the actor presented: \"jwt\", \"api-key\", or \"none\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authMethod;

  /// Email is the actor's validated address, absent when the credential carried none. It comes from the verified token, never from a client header.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// Hash is this record's SHA-256 over its own canonical JSON with both hash fields cleared, folded with prevHash. Recomputing it from the row's other fields is what proves the row has not been edited.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hash;

  /// Home is present ONLY on a cross-org action: the org the actor came FROM, while Org is the org they acted IN. A console row carrying `home` is a platform-admin impersonation and should be rendered as one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? home;

  /// IsAdmin is the VALIDATED platform-SuperAdmin bit at decision time (membership of the reserved admin org), never the client's own claim to be one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAdmin;

  /// Method is the HTTP verb, on a record a request produced. Absent on an event emitted from inside the binary with no request behind it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? method;

  /// Org is the tenant the action was taken IN — the effective org, which for everyone but an impersonating SuperAdmin is also the actor's own. Empty on an unauthenticated request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// Path is the request's route. Any segment shaped like a credential is replaced before the record is written, so a key that rides in a path is not preserved here by the very control meant to watch it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// PrevHash is the hash of record seq-1, which is what links the rows into a chain: a deleted or reordered record breaks the recomputation at that point. The first record of a chain carries 64 zeros rather than an empty string, so \"start of chain\" and \"field missing\" cannot look alike.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prevHash;

  /// Reason is a short explanation for a deny or an error (\"SuperAdmin required\", \"insufficient_balance\"). It is never a secret and never a raw upstream error body; absent on a success.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// RequestID ties this row to the request-line log and any downstream trace — the X-Request-Id the pipeline minted for that request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestId;

  /// Resource is the KIND of thing acted upon (\"org\", \"role\", \"secret\", \"provider-config\", \"credit\"). Where a mutation has no finer semantics than its route, this is the route family and resourceId is empty — the action and the path already pin the object.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resource;

  /// ResourceID is the specific instance, absent when the kind alone identifies it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resourceId;

  /// Result is how the action ended: \"success\", \"deny\" or \"error\". A deny is a decision this binary made and is as much evidence as a success.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? result;

  /// Seq is the record's position in the chain, 0-based and gapless. The Recorder assigns it under its own lock, so it is a true total order: seq n+1 was written after seq n, and a missing number is a missing record.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? seq;

  /// SourceIP is the client address the edge resolved for the request, after the proxy chain — the address a responder would act on, not the socket peer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceIp;

  /// Status is the HTTP status the caller received. It is the outcome as the client saw it, so a 200 carrying a domain refusal still reads 200 here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? status;

  /// Sub is the acting user (the IAM subject). Empty for a machine principal or an anonymous request, which is how a service action is told from a person's.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sub;

  /// Time is when the action happened, RFC3339Nano in UTC. The stored column has the same precision and sorts the same way, so a client can range and order on this string verbatim.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? time;

  /// UserAgent is the client the request announced itself as. Client-supplied, so it is evidence about what claimed to act, not proof of it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userAgent;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Wire &&
    other.action == action &&
    other.authMethod == authMethod &&
    other.email == email &&
    other.hash == hash &&
    other.home == home &&
    other.isAdmin == isAdmin &&
    other.method == method &&
    other.org == org &&
    other.path == path &&
    other.prevHash == prevHash &&
    other.reason == reason &&
    other.requestId == requestId &&
    other.resource == resource &&
    other.resourceId == resourceId &&
    other.result == result &&
    other.seq == seq &&
    other.sourceIp == sourceIp &&
    other.status == status &&
    other.sub == sub &&
    other.time == time &&
    other.userAgent == userAgent;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action == null ? 0 : action!.hashCode) +
    (authMethod == null ? 0 : authMethod!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (hash == null ? 0 : hash!.hashCode) +
    (home == null ? 0 : home!.hashCode) +
    (isAdmin == null ? 0 : isAdmin!.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (prevHash == null ? 0 : prevHash!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (resource == null ? 0 : resource!.hashCode) +
    (resourceId == null ? 0 : resourceId!.hashCode) +
    (result == null ? 0 : result!.hashCode) +
    (seq == null ? 0 : seq!.hashCode) +
    (sourceIp == null ? 0 : sourceIp!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (sub == null ? 0 : sub!.hashCode) +
    (time == null ? 0 : time!.hashCode) +
    (userAgent == null ? 0 : userAgent!.hashCode);

  @override
  String toString() => 'Wire[action=$action, authMethod=$authMethod, email=$email, hash=$hash, home=$home, isAdmin=$isAdmin, method=$method, org=$org, path=$path, prevHash=$prevHash, reason=$reason, requestId=$requestId, resource=$resource, resourceId=$resourceId, result=$result, seq=$seq, sourceIp=$sourceIp, status=$status, sub=$sub, time=$time, userAgent=$userAgent]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.authMethod != null) {
      json[r'authMethod'] = this.authMethod;
    } else {
      json[r'authMethod'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.hash != null) {
      json[r'hash'] = this.hash;
    } else {
      json[r'hash'] = null;
    }
    if (this.home != null) {
      json[r'home'] = this.home;
    } else {
      json[r'home'] = null;
    }
    if (this.isAdmin != null) {
      json[r'isAdmin'] = this.isAdmin;
    } else {
      json[r'isAdmin'] = null;
    }
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.prevHash != null) {
      json[r'prevHash'] = this.prevHash;
    } else {
      json[r'prevHash'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.requestId != null) {
      json[r'requestId'] = this.requestId;
    } else {
      json[r'requestId'] = null;
    }
    if (this.resource != null) {
      json[r'resource'] = this.resource;
    } else {
      json[r'resource'] = null;
    }
    if (this.resourceId != null) {
      json[r'resourceId'] = this.resourceId;
    } else {
      json[r'resourceId'] = null;
    }
    if (this.result != null) {
      json[r'result'] = this.result;
    } else {
      json[r'result'] = null;
    }
    if (this.seq != null) {
      json[r'seq'] = this.seq;
    } else {
      json[r'seq'] = null;
    }
    if (this.sourceIp != null) {
      json[r'sourceIp'] = this.sourceIp;
    } else {
      json[r'sourceIp'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.sub != null) {
      json[r'sub'] = this.sub;
    } else {
      json[r'sub'] = null;
    }
    if (this.time != null) {
      json[r'time'] = this.time;
    } else {
      json[r'time'] = null;
    }
    if (this.userAgent != null) {
      json[r'userAgent'] = this.userAgent;
    } else {
      json[r'userAgent'] = null;
    }
    return json;
  }

  /// Returns a new [Wire] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Wire? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Wire[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Wire[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Wire(
        action: mapValueOfType<String>(json, r'action'),
        authMethod: mapValueOfType<String>(json, r'authMethod'),
        email: mapValueOfType<String>(json, r'email'),
        hash: mapValueOfType<String>(json, r'hash'),
        home: mapValueOfType<String>(json, r'home'),
        isAdmin: mapValueOfType<bool>(json, r'isAdmin'),
        method: mapValueOfType<String>(json, r'method'),
        org: mapValueOfType<String>(json, r'org'),
        path: mapValueOfType<String>(json, r'path'),
        prevHash: mapValueOfType<String>(json, r'prevHash'),
        reason: mapValueOfType<String>(json, r'reason'),
        requestId: mapValueOfType<String>(json, r'requestId'),
        resource: mapValueOfType<String>(json, r'resource'),
        resourceId: mapValueOfType<String>(json, r'resourceId'),
        result: mapValueOfType<String>(json, r'result'),
        seq: mapValueOfType<int>(json, r'seq'),
        sourceIp: mapValueOfType<String>(json, r'sourceIp'),
        status: mapValueOfType<int>(json, r'status'),
        sub: mapValueOfType<String>(json, r'sub'),
        time: mapValueOfType<String>(json, r'time'),
        userAgent: mapValueOfType<String>(json, r'userAgent'),
      );
    }
    return null;
  }

  static List<Wire> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Wire>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Wire.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Wire> mapFromJson(dynamic json) {
    final map = <String, Wire>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Wire.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Wire-objects as value to a dart map
  static Map<String, List<Wire>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Wire>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Wire.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

