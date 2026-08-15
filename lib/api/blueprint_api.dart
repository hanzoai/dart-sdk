//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class BlueprintApi {
  BlueprintApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns every deployable blueprint with its service count and estimated monthly compute cost.
  ///
  /// Returns every deployable blueprint with its service count and estimated monthly compute cost.  It is the lightweight index the console renders as a template gallery before drilling into one stack's bill of images — GET /v1/blueprint/sbom?template=<id> is the detail view. The cost is the same figure the deploy path meters the deploying org on and the 20% author royalty is taken from, priced from the active rate card (GET /v1/blueprint/health echoes that card).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBlueprintWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/blueprint';

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

  /// Returns every deployable blueprint with its service count and estimated monthly compute cost.
  ///
  /// Returns every deployable blueprint with its service count and estimated monthly compute cost.  It is the lightweight index the console renders as a template gallery before drilling into one stack's bill of images — GET /v1/blueprint/sbom?template=<id> is the detail view. The cost is the same figure the deploy path meters the deploying org on and the 20% author royalty is taken from, priced from the active rate card (GET /v1/blueprint/health echoes that card).
  Future<BlueprintIndex?> getBlueprint() async {
    final response = await getBlueprintWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BlueprintIndex',) as BlueprintIndex;
    
    }
    return null;
  }

  /// Reports blueprint liveness and echoes the compute rate card in force.
  ///
  /// Reports blueprint liveness and echoes the compute rate card in force.  The rate card is the one the estimator actually applies after the operator env overlay, so an operator can confirm a tuned knob took effect rather than inferring it from a price. Not JWT-gated — a liveness probe must be reachable — and it always answers 200 while the subsystem is mounted.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBlueprintHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/blueprint/health';

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

  /// Reports blueprint liveness and echoes the compute rate card in force.
  ///
  /// Reports blueprint liveness and echoes the compute rate card in force.  The rate card is the one the estimator actually applies after the operator env overlay, so an operator can confirm a tuned knob took effect rather than inferring it from a price. Not JWT-gated — a liveness probe must be reachable — and it always answers 200 while the subsystem is mounted.
  Future<BlueprintHealth?> getBlueprintHealth() async {
    final response = await getBlueprintHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BlueprintHealth',) as BlueprintHealth;
    
    }
    return null;
  }

  /// A blueprint's bill of images and what running it costs
  ///
  /// Answers a blueprint's SBOM — the container images its compose stack runs, each with the CPU/memory footprint that was applied to it — together with the compute cost that footprint prices out to on the active rate card.  ONE address, TWO shapes at 200: `?template=<id>` returns that blueprint's Estimate alone (404 on an id no embedded blueprint carries), and no `template` returns `{data:[Estimate]}` for every blueprint — the batch the console's template gallery reads in one round-trip.  The blueprints are reference content embedded in the binary and validated at mount, so this read is the same for every caller and is scoped to no tenant. The per-hour figure it returns is the one the deploy path meters the deploying org on and the 20% author royalty is taken from; GET /v1/blueprint/health echoes the rate card it was priced from.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBlueprintSbomWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/blueprint/sbom';

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

  /// A blueprint's bill of images and what running it costs
  ///
  /// Answers a blueprint's SBOM — the container images its compose stack runs, each with the CPU/memory footprint that was applied to it — together with the compute cost that footprint prices out to on the active rate card.  ONE address, TWO shapes at 200: `?template=<id>` returns that blueprint's Estimate alone (404 on an id no embedded blueprint carries), and no `template` returns `{data:[Estimate]}` for every blueprint — the batch the console's template gallery reads in one round-trip.  The blueprints are reference content embedded in the binary and validated at mount, so this read is the same for every caller and is scoped to no tenant. The per-hour figure it returns is the one the deploy path meters the deploying org on and the 20% author royalty is taken from; GET /v1/blueprint/health echoes the rate card it was priced from.
  Future<void> getBlueprintSbom() async {
    final response = await getBlueprintSbomWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
