//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MCPListing {
  /// Returns a new [MCPListing] instance.
  MCPListing({
    this.description,
    this.featured,
    this.hidden,
    this.id,
    this.logo,
    this.name,
    this.official,
    this.packages = const [],
    this.registry,
    this.remotes = const [],
    this.repo,
    this.site,
    this.synced,
    this.title,
    this.transports = const [],
    this.vendor,
    this.version,
  });

  /// Description is the publisher's one-line summary.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Featured puts the listing on the front of the shelf. Curation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? featured;

  /// Hidden keeps the listing out of the org-visible catalog. Curation: a sync never changes it. Only a SuperAdmin sets it, and only a SuperAdmin sees a hidden entry listed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hidden;

  /// ID addresses the listing in a URL. It is the reverse-DNS NAME with its one slash written as an underscore — reversible, because a namespace never contains an underscore — so the id is readable and stable rather than a hash that means nothing to whoever reads a link.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Logo is the brand mark to render for the listing — the publisher's icon when the entry carries one, or the one an admin set. Curation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logo;

  /// Name is the publisher's reverse-DNS name, e.g. \"com.stripe/mcp\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Official is whether this is the vendor's OWN server rather than someone else's copy of it. Derived on every sync (see isOfficial) until a SuperAdmin sets it explicitly, after which the admin's answer stands.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? official;

  /// Packages are the runnable package forms — npm, pypi, oci — each with the runtime that launches it and the transport it then speaks.
  List<MCPPackage> packages;

  /// Registry is the upstream this row was synced from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? registry;

  /// Remotes are the hosted endpoints the publisher serves the server at.
  List<MCPRemote> remotes;

  /// Repo is the source repository URL, when the entry names one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// Site is the project's homepage, when the entry names one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? site;

  /// Synced is when this row was last confirmed against upstream, Unix seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? synced;

  /// Title is the human-readable display name, when the entry carries one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Transports are the distinct transports this server can be reached over, sorted: some of \"stdio\", \"streamable-http\", \"sse\". A listing with \"streamable-http\" is one an org can enable here and now; a listing that is only \"stdio\" needs a process to run it.
  List<String> transports;

  /// Vendor is the namespace half of Name — the publisher, e.g. \"com.stripe\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? vendor;

  /// Version is the published version of this listing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MCPListing &&
    other.description == description &&
    other.featured == featured &&
    other.hidden == hidden &&
    other.id == id &&
    other.logo == logo &&
    other.name == name &&
    other.official == official &&
    _deepEquality.equals(other.packages, packages) &&
    other.registry == registry &&
    _deepEquality.equals(other.remotes, remotes) &&
    other.repo == repo &&
    other.site == site &&
    other.synced == synced &&
    other.title == title &&
    _deepEquality.equals(other.transports, transports) &&
    other.vendor == vendor &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (description == null ? 0 : description!.hashCode) +
    (featured == null ? 0 : featured!.hashCode) +
    (hidden == null ? 0 : hidden!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (logo == null ? 0 : logo!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (official == null ? 0 : official!.hashCode) +
    (packages.hashCode) +
    (registry == null ? 0 : registry!.hashCode) +
    (remotes.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (site == null ? 0 : site!.hashCode) +
    (synced == null ? 0 : synced!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (transports.hashCode) +
    (vendor == null ? 0 : vendor!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'MCPListing[description=$description, featured=$featured, hidden=$hidden, id=$id, logo=$logo, name=$name, official=$official, packages=$packages, registry=$registry, remotes=$remotes, repo=$repo, site=$site, synced=$synced, title=$title, transports=$transports, vendor=$vendor, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.featured != null) {
      json[r'featured'] = this.featured;
    } else {
      json[r'featured'] = null;
    }
    if (this.hidden != null) {
      json[r'hidden'] = this.hidden;
    } else {
      json[r'hidden'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.logo != null) {
      json[r'logo'] = this.logo;
    } else {
      json[r'logo'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.official != null) {
      json[r'official'] = this.official;
    } else {
      json[r'official'] = null;
    }
      json[r'packages'] = this.packages;
    if (this.registry != null) {
      json[r'registry'] = this.registry;
    } else {
      json[r'registry'] = null;
    }
      json[r'remotes'] = this.remotes;
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.site != null) {
      json[r'site'] = this.site;
    } else {
      json[r'site'] = null;
    }
    if (this.synced != null) {
      json[r'synced'] = this.synced;
    } else {
      json[r'synced'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
      json[r'transports'] = this.transports;
    if (this.vendor != null) {
      json[r'vendor'] = this.vendor;
    } else {
      json[r'vendor'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [MCPListing] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MCPListing? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MCPListing[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MCPListing[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MCPListing(
        description: mapValueOfType<String>(json, r'description'),
        featured: mapValueOfType<bool>(json, r'featured'),
        hidden: mapValueOfType<bool>(json, r'hidden'),
        id: mapValueOfType<String>(json, r'id'),
        logo: mapValueOfType<String>(json, r'logo'),
        name: mapValueOfType<String>(json, r'name'),
        official: mapValueOfType<bool>(json, r'official'),
        packages: MCPPackage.listFromJson(json[r'packages']),
        registry: mapValueOfType<String>(json, r'registry'),
        remotes: MCPRemote.listFromJson(json[r'remotes']),
        repo: mapValueOfType<String>(json, r'repo'),
        site: mapValueOfType<String>(json, r'site'),
        synced: mapValueOfType<int>(json, r'synced'),
        title: mapValueOfType<String>(json, r'title'),
        transports: json[r'transports'] is Iterable
            ? (json[r'transports'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        vendor: mapValueOfType<String>(json, r'vendor'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<MCPListing> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MCPListing>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MCPListing.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MCPListing> mapFromJson(dynamic json) {
    final map = <String, MCPListing>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MCPListing.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MCPListing-objects as value to a dart map
  static Map<String, List<MCPListing>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MCPListing>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MCPListing.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

