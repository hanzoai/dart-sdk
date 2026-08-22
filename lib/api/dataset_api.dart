//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class DatasetApi {
  DatasetApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Declare the next version of a dataset
  ///
  /// Declares the next version of a dataset from a bound query over this org's own feature surface.  It mints a VERSION and writes no rows: a version is declared, then materialised once, then never rewritten. Version numbers are monotone and never reused, so \"version 3 of signups\" means one thing forever — which is the whole reason a model can cite one.  The window is bounded by the source's retention, the horizon by a year, the rows by the plane's cap, and the number of datasets and versions per org by their own limits. Every refusal names which bound it hit.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RiskDatasetSpec] riskDatasetSpec (required):
  Future<Response> riskCreateDatasetWithHttpInfo(RiskDatasetSpec riskDatasetSpec,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataset';

    // ignore: prefer_final_locals
    Object? postBody = riskDatasetSpec;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Declare the next version of a dataset
  ///
  /// Declares the next version of a dataset from a bound query over this org's own feature surface.  It mints a VERSION and writes no rows: a version is declared, then materialised once, then never rewritten. Version numbers are monotone and never reused, so \"version 3 of signups\" means one thing forever — which is the whole reason a model can cite one.  The window is bounded by the source's retention, the horizon by a year, the rows by the plane's cap, and the number of datasets and versions per org by their own limits. Every refusal names which bound it hit.
  ///
  /// Parameters:
  ///
  /// * [RiskDatasetSpec] riskDatasetSpec (required):
  Future<RiskDataset?> riskCreateDataset(RiskDatasetSpec riskDatasetSpec,) async {
    final response = await riskCreateDatasetWithHttpInfo(riskDatasetSpec,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskDataset',) as RiskDataset;
    
    }
    return null;
  }

  /// Describe every version of one dataset
  ///
  /// Dataset describes every version of one dataset, newest first — the whole history, because the point of a version is that the older ones are still there and a model fitted last quarter cites one of them.  A name this org does not own answers 404, exactly as an unknown name does, so a probe learns nothing about another tenant's datasets.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset, from the path.
  Future<Response> riskDatasetWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataset/{name}'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Describe every version of one dataset
  ///
  /// Dataset describes every version of one dataset, newest first — the whole history, because the point of a version is that the older ones are still there and a model fitted last quarter cites one of them.  A name this org does not own answers 404, exactly as an unknown name does, so a probe learns nothing about another tenant's datasets.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset, from the path.
  Future<RiskDatasetVersions?> riskDataset(String name,) async {
    final response = await riskDatasetWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskDatasetVersions',) as RiskDatasetVersions;
    
    }
    return null;
  }

  /// Show where a version's rows came from, and whether that can still be demonstrated
  ///
  /// Shows where a version's rows came from and whether that can still be demonstrated.  The answer is MEASURED, not recalled: the plane asks the source the same bounded question again and compares it to the fingerprint taken when the version was built. Anything but exact agreement is reported as drift — the source is fed by a rollup that runs behind the events, so \"it holds more now\" is the ordinary case and it means re-running the spec would not reproduce this version. An admitted gap is actionable; an unfalsifiable claim is not.  IT IS A PRICED, BOUNDED READ, because it is the same statement a materialisation is charged for: an exact distinct-count over up to 400 days of this org's feature surface. It takes the org's ONE source-scan slot, so a tenant looping it spends one scan and not a thousand; it counts against the plane's ceiling, so the fleet's warehouse is bounded too; and it runs under this plane's own deadline rather than the caller's patience.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset, from the path.
  ///
  /// * [int] version:
  ///   Version is the version to trace. Zero takes the newest published one.
  Future<Response> riskDatasetLineageWithHttpInfo(String name, { int? version, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataset/{name}/lineage'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (version != null) {
      queryParams.addAll(_queryParams('', 'version', version));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Show where a version's rows came from, and whether that can still be demonstrated
  ///
  /// Shows where a version's rows came from and whether that can still be demonstrated.  The answer is MEASURED, not recalled: the plane asks the source the same bounded question again and compares it to the fingerprint taken when the version was built. Anything but exact agreement is reported as drift — the source is fed by a rollup that runs behind the events, so \"it holds more now\" is the ordinary case and it means re-running the spec would not reproduce this version. An admitted gap is actionable; an unfalsifiable claim is not.  IT IS A PRICED, BOUNDED READ, because it is the same statement a materialisation is charged for: an exact distinct-count over up to 400 days of this org's feature surface. It takes the org's ONE source-scan slot, so a tenant looping it spends one scan and not a thousand; it counts against the plane's ceiling, so the fleet's warehouse is bounded too; and it runs under this plane's own deadline rather than the caller's patience.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset, from the path.
  ///
  /// * [int] version:
  ///   Version is the version to trace. Zero takes the newest published one.
  Future<RiskLineage?> riskDatasetLineage(String name, { int? version, }) async {
    final response = await riskDatasetLineageWithHttpInfo(name,  version: version, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskLineage',) as RiskLineage;
    
    }
    return null;
  }

  /// List this org's datasets
  ///
  /// Datasets lists this org's datasets, each with its newest version. An org that has declared none gets an empty list; a store that cannot be reached gets a refusal, never an empty list, because the two read identically and only one of them is true.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> riskDatasetsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataset';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List this org's datasets
  ///
  /// Datasets lists this org's datasets, each with its newest version. An org that has declared none gets an empty list; a store that cannot be reached gets a refusal, never an empty list, because the two read identically and only one of them is true.
  Future<RiskDatasetList?> riskDatasets() async {
    final response = await riskDatasetsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskDatasetList',) as RiskDatasetList;
    
    }
    return null;
  }

  /// Dispose of one dataset and every version of it
  ///
  /// Disposes of one dataset and every version of it: the rows are dropped and the register is marked with what went.  This is the ONLY expiry in this plane. Neither table carries a TTL, deliberately: a table TTL is a fleet-wide clock no tenant can hold longer or shorten, which is the opposite of a retention decision belonging to the tenant whose records they are. The drop is a partition drop on (org, dataset), so the tenant is the first component of the thing being dropped and a disposal cannot be spelled across one.  The BYTES are what goes. The register keeps one `disposed` row per version — the name, the number, the spec, the digest and who disposed of it when — for two reasons: a retention obligation is answered by a record of the deletion, not by silence; and version numbers must stay monotone, so that after `orders` is disposed of and declared again the next version is 4 and not 1. A number that could be reused would make every citation of `orders v3` ambiguous forever.  It is not reversible and there is no soft state in between. A version a model cited has no rows once this returns, and every read of it says so.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset, from the path.
  Future<Response> riskDeleteDatasetWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataset/{name}'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Dispose of one dataset and every version of it
  ///
  /// Disposes of one dataset and every version of it: the rows are dropped and the register is marked with what went.  This is the ONLY expiry in this plane. Neither table carries a TTL, deliberately: a table TTL is a fleet-wide clock no tenant can hold longer or shorten, which is the opposite of a retention decision belonging to the tenant whose records they are. The drop is a partition drop on (org, dataset), so the tenant is the first component of the thing being dropped and a disposal cannot be spelled across one.  The BYTES are what goes. The register keeps one `disposed` row per version — the name, the number, the spec, the digest and who disposed of it when — for two reasons: a retention obligation is answered by a record of the deletion, not by silence; and version numbers must stay monotone, so that after `orders` is disposed of and declared again the next version is 4 and not 1. A number that could be reused would make every citation of `orders v3` ambiguous forever.  It is not reversible and there is no soft state in between. A version a model cited has no rows once this returns, and every read of it says so.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset, from the path.
  Future<RiskDatasetDisposal?> riskDeleteDataset(String name,) async {
    final response = await riskDeleteDatasetWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskDatasetDisposal',) as RiskDatasetDisposal;
    
    }
    return null;
  }

  /// Read a version's rows back, one page at a time
  ///
  /// Reads a published version's rows back, one bounded page at a time, in the version's own stable row order.  Only a published version can be exported. Rows written by an attempt that never completed are inert — no register row names them — and they are disposed of with the dataset.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset, from the path.
  ///
  /// * [int] version:
  ///   Version is the version to read. Zero takes the newest published one.
  ///
  /// * [String] split:
  ///   Split narrows to train, val or test. Empty reads every split.
  ///
  /// * [int] offset:
  ///   Offset is where the page starts, in the version's own row order (by id, which is derived from the row and therefore stable forever).
  ///
  /// * [int] limit:
  ///   Limit is how many rows to return. Zero and anything above the plane's bound take the bound.
  Future<Response> riskExportDatasetWithHttpInfo(String name, { int? version, String? split, int? offset, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataset/{name}/export'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (version != null) {
      queryParams.addAll(_queryParams('', 'version', version));
    }
    if (split != null) {
      queryParams.addAll(_queryParams('', 'split', split));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Read a version's rows back, one page at a time
  ///
  /// Reads a published version's rows back, one bounded page at a time, in the version's own stable row order.  Only a published version can be exported. Rows written by an attempt that never completed are inert — no register row names them — and they are disposed of with the dataset.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset, from the path.
  ///
  /// * [int] version:
  ///   Version is the version to read. Zero takes the newest published one.
  ///
  /// * [String] split:
  ///   Split narrows to train, val or test. Empty reads every split.
  ///
  /// * [int] offset:
  ///   Offset is where the page starts, in the version's own row order (by id, which is derived from the row and therefore stable forever).
  ///
  /// * [int] limit:
  ///   Limit is how many rows to return. Zero and anything above the plane's bound take the bound.
  Future<RiskDatasetRows?> riskExportDataset(String name, { int? version, String? split, int? offset, int? limit, }) async {
    final response = await riskExportDatasetWithHttpInfo(name,  version: version, split: split, offset: offset, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskDatasetRows',) as RiskDatasetRows;
    
    }
    return null;
  }

  /// Materialise the declared version into immutable rows
  ///
  /// Builds the declared version into immutable rows and answers 202 as soon as the attempt is on record.  It never holds the request open for the work: a materialisation is a bounded warehouse scan, and letting an HTTP client's timeout be a data plane's timeout is how one tenant's retry loop becomes everyone's outage. ONE materialisation runs per org at a time; a second is refused rather than queued, because a queue admits the same work later and the honest answer to \"again\" while one is running is that one is running.  Only a DECLARED version is admitted. A published version is immutable, and a version whose earlier attempt did not complete is never re-attempted — that would union two runs' rows under one number and make the digest a lie. In both cases the answer is to declare a new version, which is what a second run over a moving source honestly is.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset, from the path.
  Future<Response> riskMaterializeDatasetWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/dataset/{name}/materialize'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Materialise the declared version into immutable rows
  ///
  /// Builds the declared version into immutable rows and answers 202 as soon as the attempt is on record.  It never holds the request open for the work: a materialisation is a bounded warehouse scan, and letting an HTTP client's timeout be a data plane's timeout is how one tenant's retry loop becomes everyone's outage. ONE materialisation runs per org at a time; a second is refused rather than queued, because a queue admits the same work later and the honest answer to \"again\" while one is running is that one is running.  Only a DECLARED version is admitted. A published version is immutable, and a version whose earlier attempt did not complete is never re-attempted — that would union two runs' rows under one number and make the digest a lie. In both cases the answer is to declare a new version, which is what a second run over a moving source honestly is.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name is the dataset, from the path.
  Future<RiskDataset?> riskMaterializeDataset(String name,) async {
    final response = await riskMaterializeDatasetWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RiskDataset',) as RiskDataset;
    
    }
    return null;
  }
}
