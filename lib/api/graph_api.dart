//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class GraphApi {
  GraphApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Assert what is true of an entity
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GraphAssertIn] graphAssertIn (required):
  Future<Response> graphAssertWithHttpInfo(GraphAssertIn graphAssertIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/graph';

    // ignore: prefer_final_locals
    Object? postBody = graphAssertIn;

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

  /// Assert what is true of an entity
  ///
  /// Parameters:
  ///
  /// * [GraphAssertIn] graphAssertIn (required):
  Future<GraphAssertOut?> graphAssert(GraphAssertIn graphAssertIn,) async {
    final response = await graphAssertWithHttpInfo(graphAssertIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GraphAssertOut',) as GraphAssertOut;
    
    }
    return null;
  }

  /// Walk the edges from a seed set, bounded
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GraphNeighborsIn] graphNeighborsIn (required):
  Future<Response> graphNeighborsWithHttpInfo(GraphNeighborsIn graphNeighborsIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/graph/neighbors';

    // ignore: prefer_final_locals
    Object? postBody = graphNeighborsIn;

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

  /// Walk the edges from a seed set, bounded
  ///
  /// Parameters:
  ///
  /// * [GraphNeighborsIn] graphNeighborsIn (required):
  Future<GraphNeighborsOut?> graphNeighbors(GraphNeighborsIn graphNeighborsIn,) async {
    final response = await graphNeighborsWithHttpInfo(graphNeighborsIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GraphNeighborsOut',) as GraphNeighborsOut;
    
    }
    return null;
  }

  /// Read the assertions this organization has recorded
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] entity:
  ///   Entity narrows to what was asserted ABOUT one entity. Absent matches every entity.
  ///
  /// * [String] relation:
  ///   Relation narrows to one relation. Absent matches every relation.
  ///
  /// * [String] value:
  ///   Value narrows to assertions pointing AT one value, which is how the edges into an entity are read.
  ///
  /// * [String] asOf:
  ///   AsOf bounds the read to what was knowable at an instant, RFC 3339. Absent reads everything this plane holds.
  ///
  /// * [int] limit:
  ///   Limit caps how many assertions come back. Absent, zero, or anything above the walk ceiling is the ceiling.
  Future<Response> graphReadWithHttpInfo({ String? entity, String? relation, String? value, String? asOf, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/graph';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (entity != null) {
      queryParams.addAll(_queryParams('', 'entity', entity));
    }
    if (relation != null) {
      queryParams.addAll(_queryParams('', 'relation', relation));
    }
    if (value != null) {
      queryParams.addAll(_queryParams('', 'value', value));
    }
    if (asOf != null) {
      queryParams.addAll(_queryParams('', 'as_of', asOf));
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

  /// Read the assertions this organization has recorded
  ///
  /// Parameters:
  ///
  /// * [String] entity:
  ///   Entity narrows to what was asserted ABOUT one entity. Absent matches every entity.
  ///
  /// * [String] relation:
  ///   Relation narrows to one relation. Absent matches every relation.
  ///
  /// * [String] value:
  ///   Value narrows to assertions pointing AT one value, which is how the edges into an entity are read.
  ///
  /// * [String] asOf:
  ///   AsOf bounds the read to what was knowable at an instant, RFC 3339. Absent reads everything this plane holds.
  ///
  /// * [int] limit:
  ///   Limit caps how many assertions come back. Absent, zero, or anything above the walk ceiling is the ceiling.
  Future<GraphReadOut?> graphRead({ String? entity, String? relation, String? value, String? asOf, int? limit, }) async {
    final response = await graphReadWithHttpInfo( entity: entity, relation: relation, value: value, asOf: asOf, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GraphReadOut',) as GraphReadOut;
    
    }
    return null;
  }

  /// What is in force about an entity as of an instant, and what disagreed
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GraphResolveIn] graphResolveIn (required):
  Future<Response> graphResolveWithHttpInfo(GraphResolveIn graphResolveIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/graph/resolve';

    // ignore: prefer_final_locals
    Object? postBody = graphResolveIn;

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

  /// What is in force about an entity as of an instant, and what disagreed
  ///
  /// Parameters:
  ///
  /// * [GraphResolveIn] graphResolveIn (required):
  Future<GraphResolveOut?> graphResolve(GraphResolveIn graphResolveIn,) async {
    final response = await graphResolveWithHttpInfo(graphResolveIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GraphResolveOut',) as GraphResolveOut;
    
    }
    return null;
  }

  /// Find assertions by their text rather than by an entity key
  ///
  /// Finds assertions by their text where read finds them by their keys.  It is the READ with one more term, not a second way to leave the store: same order, same ceiling, same tenancy, and searching composes with narrowing by relation and by instant because all of them are terms of one filter.  It resolves nothing. What matches is what was asserted, including claims that were later corrected — which is the honest answer to \"where is this mentioned\" and the reason the caller then asks resolve about what it found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q:
  ///   Q is what to look for: words, matched as prefixes, all of them required. Punctuation is text here rather than syntax, so an entity key searches as itself.
  ///
  /// * [String] relation:
  ///   Relation narrows to one relation. Absent matches every relation.
  ///
  /// * [String] asOf:
  ///   AsOf bounds the search to what was knowable at an instant, RFC 3339. Absent searches everything this plane holds.
  ///
  /// * [int] limit:
  ///   Limit caps how many assertions come back. Absent, zero, or anything above the walk ceiling is the ceiling.
  Future<Response> graphSearchWithHttpInfo({ String? q, String? relation, String? asOf, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/graph/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (relation != null) {
      queryParams.addAll(_queryParams('', 'relation', relation));
    }
    if (asOf != null) {
      queryParams.addAll(_queryParams('', 'as_of', asOf));
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

  /// Find assertions by their text rather than by an entity key
  ///
  /// Finds assertions by their text where read finds them by their keys.  It is the READ with one more term, not a second way to leave the store: same order, same ceiling, same tenancy, and searching composes with narrowing by relation and by instant because all of them are terms of one filter.  It resolves nothing. What matches is what was asserted, including claims that were later corrected — which is the honest answer to \"where is this mentioned\" and the reason the caller then asks resolve about what it found.
  ///
  /// Parameters:
  ///
  /// * [String] q:
  ///   Q is what to look for: words, matched as prefixes, all of them required. Punctuation is text here rather than syntax, so an entity key searches as itself.
  ///
  /// * [String] relation:
  ///   Relation narrows to one relation. Absent matches every relation.
  ///
  /// * [String] asOf:
  ///   AsOf bounds the search to what was knowable at an instant, RFC 3339. Absent searches everything this plane holds.
  ///
  /// * [int] limit:
  ///   Limit caps how many assertions come back. Absent, zero, or anything above the walk ceiling is the ceiling.
  Future<GraphReadOut?> graphSearch({ String? q, String? relation, String? asOf, int? limit, }) async {
    final response = await graphSearchWithHttpInfo( q: q, relation: relation, asOf: asOf, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GraphReadOut',) as GraphReadOut;
    
    }
    return null;
  }

  /// The relations in use, and the rule that resolves a conflict
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> graphVocabularyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/graph/vocabulary';

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

  /// The relations in use, and the rule that resolves a conflict
  Future<GraphVocabularyOut?> graphVocabulary() async {
    final response = await graphVocabularyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GraphVocabularyOut',) as GraphVocabularyOut;
    
    }
    return null;
  }

  /// Ask the graph in one request, traversing.
  ///
  /// Runs a GraphQL query against this organization's assertions.  It is the one door here a caller can TRAVERSE: the REST ops each answer a single question, so composing them — the entities this one points at, and what each of those resolves to — costs a request per hop with the intermediate keys held by the caller. Here that is one query and the nesting is the answer's shape.  It adds no way to ask anything new. Every field runs the SAME operation the matching REST route runs, so the tenancy, the as-of bound, the traversal bounds and the conflict rule are the ones already in force; the schema is served by introspection.  A query that cannot run answers 200 with an `errors` list, which is the wire every GraphQL client parses.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GraphQLIn] graphQLIn:
  Future<Response> postGraphGraphqlWithHttpInfo({ GraphQLIn? graphQLIn, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/graph/graphql';

    // ignore: prefer_final_locals
    Object? postBody = graphQLIn;

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

  /// Ask the graph in one request, traversing.
  ///
  /// Runs a GraphQL query against this organization's assertions.  It is the one door here a caller can TRAVERSE: the REST ops each answer a single question, so composing them — the entities this one points at, and what each of those resolves to — costs a request per hop with the intermediate keys held by the caller. Here that is one query and the nesting is the answer's shape.  It adds no way to ask anything new. Every field runs the SAME operation the matching REST route runs, so the tenancy, the as-of bound, the traversal bounds and the conflict rule are the ones already in force; the schema is served by introspection.  A query that cannot run answers 200 with an `errors` list, which is the wire every GraphQL client parses.
  ///
  /// Parameters:
  ///
  /// * [GraphQLIn] graphQLIn:
  Future<GraphQLOut?> postGraphGraphql({ GraphQLIn? graphQLIn, }) async {
    final response = await postGraphGraphqlWithHttpInfo( graphQLIn: graphQLIn, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GraphQLOut',) as GraphQLOut;
    
    }
    return null;
  }
}
