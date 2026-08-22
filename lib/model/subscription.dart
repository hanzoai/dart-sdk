//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Subscription {
  /// Returns a new [Subscription] instance.
  Subscription({
    this.cancelAtPeriodEnd,
    this.canceledAt,
    this.createdAt,
    this.currentPeriodEnd,
    this.currentPeriodStart,
    this.defaultPaymentMethod,
    this.endedAt,
    this.id,
    this.mrrCents,
    this.plan,
    this.planId,
    this.providerType,
    this.quantity,
    this.status,
    this.trialEnd,
    this.trialStart,
    this.updatedAt,
    this.userId,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? cancelAtPeriodEnd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? canceledAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currentPeriodEnd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currentPeriodStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultPaymentMethod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// MRRCents is what this subscription contributes per month — commerce's own figure, interval-normalized and multiplied by its seats, so no reader re-derives it from price and interval.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mrrCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SubscriptionPlan? plan;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? planId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? providerType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? quantity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trialEnd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trialStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Subscription &&
    other.cancelAtPeriodEnd == cancelAtPeriodEnd &&
    other.canceledAt == canceledAt &&
    other.createdAt == createdAt &&
    other.currentPeriodEnd == currentPeriodEnd &&
    other.currentPeriodStart == currentPeriodStart &&
    other.defaultPaymentMethod == defaultPaymentMethod &&
    other.endedAt == endedAt &&
    other.id == id &&
    other.mrrCents == mrrCents &&
    other.plan == plan &&
    other.planId == planId &&
    other.providerType == providerType &&
    other.quantity == quantity &&
    other.status == status &&
    other.trialEnd == trialEnd &&
    other.trialStart == trialStart &&
    other.updatedAt == updatedAt &&
    other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cancelAtPeriodEnd == null ? 0 : cancelAtPeriodEnd!.hashCode) +
    (canceledAt == null ? 0 : canceledAt!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (currentPeriodEnd == null ? 0 : currentPeriodEnd!.hashCode) +
    (currentPeriodStart == null ? 0 : currentPeriodStart!.hashCode) +
    (defaultPaymentMethod == null ? 0 : defaultPaymentMethod!.hashCode) +
    (endedAt == null ? 0 : endedAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (mrrCents == null ? 0 : mrrCents!.hashCode) +
    (plan == null ? 0 : plan!.hashCode) +
    (planId == null ? 0 : planId!.hashCode) +
    (providerType == null ? 0 : providerType!.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (trialEnd == null ? 0 : trialEnd!.hashCode) +
    (trialStart == null ? 0 : trialStart!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (userId == null ? 0 : userId!.hashCode);

  @override
  String toString() => 'Subscription[cancelAtPeriodEnd=$cancelAtPeriodEnd, canceledAt=$canceledAt, createdAt=$createdAt, currentPeriodEnd=$currentPeriodEnd, currentPeriodStart=$currentPeriodStart, defaultPaymentMethod=$defaultPaymentMethod, endedAt=$endedAt, id=$id, mrrCents=$mrrCents, plan=$plan, planId=$planId, providerType=$providerType, quantity=$quantity, status=$status, trialEnd=$trialEnd, trialStart=$trialStart, updatedAt=$updatedAt, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cancelAtPeriodEnd != null) {
      json[r'cancelAtPeriodEnd'] = this.cancelAtPeriodEnd;
    } else {
      json[r'cancelAtPeriodEnd'] = null;
    }
    if (this.canceledAt != null) {
      json[r'canceledAt'] = this.canceledAt;
    } else {
      json[r'canceledAt'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.currentPeriodEnd != null) {
      json[r'currentPeriodEnd'] = this.currentPeriodEnd;
    } else {
      json[r'currentPeriodEnd'] = null;
    }
    if (this.currentPeriodStart != null) {
      json[r'currentPeriodStart'] = this.currentPeriodStart;
    } else {
      json[r'currentPeriodStart'] = null;
    }
    if (this.defaultPaymentMethod != null) {
      json[r'defaultPaymentMethod'] = this.defaultPaymentMethod;
    } else {
      json[r'defaultPaymentMethod'] = null;
    }
    if (this.endedAt != null) {
      json[r'endedAt'] = this.endedAt;
    } else {
      json[r'endedAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.mrrCents != null) {
      json[r'mrrCents'] = this.mrrCents;
    } else {
      json[r'mrrCents'] = null;
    }
    if (this.plan != null) {
      json[r'plan'] = this.plan;
    } else {
      json[r'plan'] = null;
    }
    if (this.planId != null) {
      json[r'planId'] = this.planId;
    } else {
      json[r'planId'] = null;
    }
    if (this.providerType != null) {
      json[r'providerType'] = this.providerType;
    } else {
      json[r'providerType'] = null;
    }
    if (this.quantity != null) {
      json[r'quantity'] = this.quantity;
    } else {
      json[r'quantity'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.trialEnd != null) {
      json[r'trialEnd'] = this.trialEnd;
    } else {
      json[r'trialEnd'] = null;
    }
    if (this.trialStart != null) {
      json[r'trialStart'] = this.trialStart;
    } else {
      json[r'trialStart'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    return json;
  }

  /// Returns a new [Subscription] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Subscription? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Subscription[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Subscription[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Subscription(
        cancelAtPeriodEnd: mapValueOfType<bool>(json, r'cancelAtPeriodEnd'),
        canceledAt: mapValueOfType<String>(json, r'canceledAt'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        currentPeriodEnd: mapValueOfType<String>(json, r'currentPeriodEnd'),
        currentPeriodStart: mapValueOfType<String>(json, r'currentPeriodStart'),
        defaultPaymentMethod: mapValueOfType<String>(json, r'defaultPaymentMethod'),
        endedAt: mapValueOfType<String>(json, r'endedAt'),
        id: mapValueOfType<String>(json, r'id'),
        mrrCents: mapValueOfType<int>(json, r'mrrCents'),
        plan: SubscriptionPlan.fromJson(json[r'plan']),
        planId: mapValueOfType<String>(json, r'planId'),
        providerType: mapValueOfType<String>(json, r'providerType'),
        quantity: mapValueOfType<int>(json, r'quantity'),
        status: mapValueOfType<String>(json, r'status'),
        trialEnd: mapValueOfType<String>(json, r'trialEnd'),
        trialStart: mapValueOfType<String>(json, r'trialStart'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
        userId: mapValueOfType<String>(json, r'userId'),
      );
    }
    return null;
  }

  static List<Subscription> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Subscription>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Subscription.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Subscription> mapFromJson(dynamic json) {
    final map = <String, Subscription>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Subscription.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Subscription-objects as value to a dart map
  static Map<String, List<Subscription>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Subscription>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Subscription.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

