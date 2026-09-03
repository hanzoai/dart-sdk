//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class KnowledgeApi {
  KnowledgeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Revokes a connection: it tombstones the stored credential so a later sync cannot reuse it, purges this provider's points from the org's vector namespace, and marks the connector disconnected.
  ///
  /// Revokes a connection: it tombstones the stored credential so a later sync cannot reuse it, purges this provider's points from the org's vector namespace, and marks the connector disconnected. The documents already ingested stay in the org's store — they are the org's own data — but stop being retrievable by search; a caller deletes them through the document surface.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the connector to act on: github, slack, google or notion.
  Future<Response> deleteKnowledgeConnectorsByProviderWithHttpInfo(String provider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/knowledge/connectors/{provider}'
      .replaceAll('{provider}', provider);

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

  /// Revokes a connection: it tombstones the stored credential so a later sync cannot reuse it, purges this provider's points from the org's vector namespace, and marks the connector disconnected.
  ///
  /// Revokes a connection: it tombstones the stored credential so a later sync cannot reuse it, purges this provider's points from the org's vector namespace, and marks the connector disconnected. The documents already ingested stay in the org's store — they are the org's own data — but stop being retrievable by search; a caller deletes them through the document surface.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the connector to act on: github, slack, google or notion.
  Future<ConnectionOut?> deleteKnowledgeConnectorsByProvider(String provider,) async {
    final response = await deleteKnowledgeConnectorsByProviderWithHttpInfo(provider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectionOut',) as ConnectionOut;
    
    }
    return null;
  }

  /// Returns every supported knowledge connector with THIS org's connection state and the REAL number of documents each has ingested into the org's store.
  ///
  /// Returns every supported knowledge connector with THIS org's connection state and the REAL number of documents each has ingested into the org's store. A provider that is configured for the deployment but not yet connected appears as disconnected, so the console can offer a Connect button. No secret is ever returned.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getKnowledgeConnectorsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/knowledge/connectors';

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

  /// Returns every supported knowledge connector with THIS org's connection state and the REAL number of documents each has ingested into the org's store.
  ///
  /// Returns every supported knowledge connector with THIS org's connection state and the REAL number of documents each has ingested into the org's store. A provider that is configured for the deployment but not yet connected appears as disconnected, so the console can offer a Connect button. No secret is ever returned.
  Future<KbConnectorsOut?> getKnowledgeConnectors() async {
    final response = await getKnowledgeConnectorsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KbConnectorsOut',) as KbConnectorsOut;
    
    }
    return null;
  }

  /// CompleteConnectorOAuth finishes an OAuth connection: it exchanges the provider's code for a token, seals that token in KMS, and records the connection.
  ///
  /// CompleteConnectorOAuth finishes an OAuth connection: it exchanges the provider's code for a token, seals that token in KMS, and records the connection. THE ORG COMES FROM THE SIGNED STATE, not from a header and not from the provider, so an attacker cannot bind their own account to someone else's org — a tampered, expired or foreign-provider state is refused outright. The token itself is never returned, never written into the document, and never logged; the document holds only its KMS path.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the connector completing its flow, from the path.
  ///
  /// * [String] code:
  ///   Code is the provider's authorization code, exchanged for a token.
  ///
  /// * [String] state:
  ///   State is the org-bound value this server signed at connect time.
  ///
  /// * [String] error:
  ///   Error is the provider's denial reason when the user refused consent.
  Future<Response> getKnowledgeConnectorsByProviderCallbackWithHttpInfo(String provider, { String? code, String? state, String? error, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/knowledge/connectors/{provider}/callback'
      .replaceAll('{provider}', provider);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (code != null) {
      queryParams.addAll(_queryParams('', 'code', code));
    }
    if (state != null) {
      queryParams.addAll(_queryParams('', 'state', state));
    }
    if (error != null) {
      queryParams.addAll(_queryParams('', 'error', error));
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

  /// CompleteConnectorOAuth finishes an OAuth connection: it exchanges the provider's code for a token, seals that token in KMS, and records the connection.
  ///
  /// CompleteConnectorOAuth finishes an OAuth connection: it exchanges the provider's code for a token, seals that token in KMS, and records the connection. THE ORG COMES FROM THE SIGNED STATE, not from a header and not from the provider, so an attacker cannot bind their own account to someone else's org — a tampered, expired or foreign-provider state is refused outright. The token itself is never returned, never written into the document, and never logged; the document holds only its KMS path.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the connector completing its flow, from the path.
  ///
  /// * [String] code:
  ///   Code is the provider's authorization code, exchanged for a token.
  ///
  /// * [String] state:
  ///   State is the org-bound value this server signed at connect time.
  ///
  /// * [String] error:
  ///   Error is the provider's denial reason when the user refused consent.
  Future<ConnectionOut?> getKnowledgeConnectorsByProviderCallback(String provider, { String? code, String? state, String? error, }) async {
    final response = await getKnowledgeConnectorsByProviderCallbackWithHttpInfo(provider,  code: code, state: state, error: error, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectionOut',) as ConnectionOut;
    
    }
    return null;
  }

  /// StartConnectorOAuth returns the provider authorize URL the console opens to connect this org's account.
  ///
  /// StartConnectorOAuth returns the provider authorize URL the console opens to connect this org's account. There is no server-side redirect — the console stays in control of the navigation. The URL carries a state this server SIGNED over the caller's validated org, so the connection the callback completes can only ever land in that org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the connector to act on: github, slack, google or notion.
  Future<Response> getKnowledgeConnectorsByProviderConnectWithHttpInfo(String provider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/knowledge/connectors/{provider}/connect'
      .replaceAll('{provider}', provider);

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

  /// StartConnectorOAuth returns the provider authorize URL the console opens to connect this org's account.
  ///
  /// StartConnectorOAuth returns the provider authorize URL the console opens to connect this org's account. There is no server-side redirect — the console stays in control of the navigation. The URL carries a state this server SIGNED over the caller's validated org, so the connection the callback completes can only ever land in that org.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the connector to act on: github, slack, google or notion.
  Future<KbAuthorizeOut?> getKnowledgeConnectorsByProviderConnect(String provider,) async {
    final response = await getKnowledgeConnectorsByProviderConnectWithHttpInfo(provider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KbAuthorizeOut',) as KbAuthorizeOut;
    
    }
    return null;
  }

  /// Returns the ONE catalog of everything a caller can connect: every first-party connector and every long-tail one, in a single list sorted by provider.
  ///
  /// Returns the ONE catalog of everything a caller can connect: every first-party connector and every long-tail one, in a single list sorted by provider. `configured` reports whether this deployment holds OAuth credentials for a source, so the console can show Connect rather than a dead button, and `kind` is a badge only — the connect and sync lifecycle is identical for both. The catalog itself is org-independent; a validated principal is still required. It is metadata only: no secret is ever returned.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getKnowledgeConnectorsCatalogWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/knowledge/connectors/catalog';

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

  /// Returns the ONE catalog of everything a caller can connect: every first-party connector and every long-tail one, in a single list sorted by provider.
  ///
  /// Returns the ONE catalog of everything a caller can connect: every first-party connector and every long-tail one, in a single list sorted by provider. `configured` reports whether this deployment holds OAuth credentials for a source, so the console can show Connect rather than a dead button, and `kind` is a badge only — the connect and sync lifecycle is identical for both. The catalog itself is org-independent; a validated principal is still required. It is metadata only: no secret is ever returned.
  Future<CatalogOut?> getKnowledgeConnectorsCatalog() async {
    final response = await getKnowledgeConnectorsCatalogWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CatalogOut',) as CatalogOut;
    
    }
    return null;
  }

  /// Returns the caller org's knowledge as a node/edge graph shaped for a force-directed renderer: pages, memories and synced sources as nodes; the page parent tree, the wikilinks between pages, and each source's connector provenance as edges.
  ///
  /// Returns the caller org's knowledge as a node/edge graph shaped for a force-directed renderer: pages, memories and synced sources as nodes; the page parent tree, the wikilinks between pages, and each source's connector provenance as edges. Wikilink targets are resolved HERE by title or slug, so a rename never needs an edge rewrite and a link that matches no page renders as its own \"unresolved\" node instead of vanishing. ?project= narrows it. A store outage degrades to an honest empty graph, never a 5xx.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project:
  ///   Project narrows the graph to one project scope. Empty reads the whole org.
  Future<Response> getKnowledgeGraphWithHttpInfo({ String? project, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/knowledge/graph';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (project != null) {
      queryParams.addAll(_queryParams('', 'project', project));
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

  /// Returns the caller org's knowledge as a node/edge graph shaped for a force-directed renderer: pages, memories and synced sources as nodes; the page parent tree, the wikilinks between pages, and each source's connector provenance as edges.
  ///
  /// Returns the caller org's knowledge as a node/edge graph shaped for a force-directed renderer: pages, memories and synced sources as nodes; the page parent tree, the wikilinks between pages, and each source's connector provenance as edges. Wikilink targets are resolved HERE by title or slug, so a rename never needs an edge rewrite and a link that matches no page renders as its own \"unresolved\" node instead of vanishing. ?project= narrows it. A store outage degrades to an honest empty graph, never a 5xx.
  ///
  /// Parameters:
  ///
  /// * [String] project:
  ///   Project narrows the graph to one project scope. Empty reads the whole org.
  Future<GraphOut?> getKnowledgeGraph({ String? project, }) async {
    final response = await getKnowledgeGraphWithHttpInfo( project: project, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GraphOut',) as GraphOut;
    
    }
    return null;
  }

  /// Pulls the provider's documents for the caller's org and files them as knowledge sources, which the store's own hook then indexes — so a synced document is retrievable exactly like a hand-written page.
  ///
  /// Pulls the provider's documents for the caller's org and files them as knowledge sources, which the store's own hook then indexes — so a synced document is retrievable exactly like a hand-written page. The org is the validated tenant and the credential is read from KMS, so an org can only ever sync its own connection. A provider failure is reported honestly (502) and recorded on the connector rather than silently swallowed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the connector to act on: github, slack, google or notion.
  Future<Response> postKnowledgeConnectorsByProviderSyncWithHttpInfo(String provider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/knowledge/connectors/{provider}/sync'
      .replaceAll('{provider}', provider);

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

  /// Pulls the provider's documents for the caller's org and files them as knowledge sources, which the store's own hook then indexes — so a synced document is retrievable exactly like a hand-written page.
  ///
  /// Pulls the provider's documents for the caller's org and files them as knowledge sources, which the store's own hook then indexes — so a synced document is retrievable exactly like a hand-written page. The org is the validated tenant and the credential is read from KMS, so an org can only ever sync its own connection. A provider failure is reported honestly (502) and recorded on the connector rather than silently swallowed.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the connector to act on: github, slack, google or notion.
  Future<KbSyncOut?> postKnowledgeConnectorsByProviderSync(String provider,) async {
    final response = await postKnowledgeConnectorsByProviderSyncWithHttpInfo(provider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KbSyncOut',) as KbSyncOut;
    
    }
    return null;
  }

  /// Import an Obsidian, Notion, Roam or Evernote export into the org's knowledge base
  ///
  /// Ingests an uploaded export as a tree of kb.page documents with its link structure intact. `?format=` picks the normalizer — obsidian, notion, roam or evernote — and the export arrives as a multipart `file` part, or as the raw request body when there is no multipart part: an Obsidian or Notion vault zip, a Roam JSON (raw or inside the zip Roam downloads), or an Evernote .enex.  The pages are filed through the SAME ingest path a connector sync uses, so the kb.page hook indexes each one for retrieval AND extracts its `[[wikilinks]]` into kb.link edges — the imported vault is searchable and its graph is navigable without a second pass. Parents are filed before their children, and each page takes a slug unique within the org (suffixed -2, -3, … on collision), so a re-import adds pages rather than overwriting the ones already there.  Scoped to the caller's validated org; `?project=` narrows every imported page to one project. No validated principal is 403, and an org that has not installed the kb module is refused with the install call to make first. The bounds are 64 MB per upload, 5000 pages and 8 MB per archive entry: pages past the five-thousandth are dropped and a larger entry is truncated at its bound, and a page the store rejects is skipped — so the answer's `imported` count is what was actually filed, not what was sent.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postKnowledgeImportWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/knowledge/import';

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

  /// Import an Obsidian, Notion, Roam or Evernote export into the org's knowledge base
  ///
  /// Ingests an uploaded export as a tree of kb.page documents with its link structure intact. `?format=` picks the normalizer — obsidian, notion, roam or evernote — and the export arrives as a multipart `file` part, or as the raw request body when there is no multipart part: an Obsidian or Notion vault zip, a Roam JSON (raw or inside the zip Roam downloads), or an Evernote .enex.  The pages are filed through the SAME ingest path a connector sync uses, so the kb.page hook indexes each one for retrieval AND extracts its `[[wikilinks]]` into kb.link edges — the imported vault is searchable and its graph is navigable without a second pass. Parents are filed before their children, and each page takes a slug unique within the org (suffixed -2, -3, … on collision), so a re-import adds pages rather than overwriting the ones already there.  Scoped to the caller's validated org; `?project=` narrows every imported page to one project. No validated principal is 403, and an org that has not installed the kb module is refused with the install call to make first. The bounds are 64 MB per upload, 5000 pages and 8 MB per archive entry: pages past the five-thousandth are dropped and a larger entry is truncated at its bound, and a page the store rejects is skipped — so the answer's `imported` count is what was actually filed, not what was sent.
  Future<void> postKnowledgeImport() async {
    final response = await postKnowledgeImportWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Rebuilds the caller org's retrieval from its documents: the vector collection is dropped and created again at the configured embedding size and every page, memory and source is embedded into it; the lexical index is reconciled to the same set.
  ///
  /// Rebuilds the caller org's retrieval from its documents: the vector collection is dropped and created again at the configured embedding size and every page, memory and source is embedded into it; the lexical index is reconciled to the same set. It is what an operator runs after the embedding model or its dimension changes, and what puts an org's retrieval right after a vector outage. It requires ORG ADMIN and runs inline: an org's knowledge is a few thousand documents, and the answer is the count.  The request has no body. Response: {\"vectors\": 412, \"lexical\": 412, \"removed\": 3, \"failed\": 0}
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postKnowledgeReindexWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/knowledge/reindex';

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

  /// Rebuilds the caller org's retrieval from its documents: the vector collection is dropped and created again at the configured embedding size and every page, memory and source is embedded into it; the lexical index is reconciled to the same set.
  ///
  /// Rebuilds the caller org's retrieval from its documents: the vector collection is dropped and created again at the configured embedding size and every page, memory and source is embedded into it; the lexical index is reconciled to the same set. It is what an operator runs after the embedding model or its dimension changes, and what puts an org's retrieval right after a vector outage. It requires ORG ADMIN and runs inline: an org's knowledge is a few thousand documents, and the answer is the count.  The request has no body. Response: {\"vectors\": 412, \"lexical\": 412, \"removed\": 3, \"failed\": 0}
  Future<ReindexOut?> postKnowledgeReindex() async {
    final response = await postKnowledgeReindexWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReindexOut',) as ReindexOut;
    
    }
    return null;
  }

  /// Runs a semantic search over the caller org's own knowledge — its wiki pages, its agent memories and everything its connectors have synced — and returns the matching passages.
  ///
  /// Runs a semantic search over the caller org's own knowledge — its wiki pages, its agent memories and everything its connectors have synced — and returns the matching passages. This is the RAG entry point: an agent asks \"what does this org know about X\" and the org's OWN vector namespace answers. The org comes from the validated principal, and both the collection and the payload filter are pinned to it, so cross-tenant retrieval is impossible. An unreachable index returns an honest empty result set with degraded=true, never a 5xx.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SearchIn] searchIn (required):
  Future<Response> postKnowledgeSearchWithHttpInfo(SearchIn searchIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/knowledge/search';

    // ignore: prefer_final_locals
    Object? postBody = searchIn;

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

  /// Runs a semantic search over the caller org's own knowledge — its wiki pages, its agent memories and everything its connectors have synced — and returns the matching passages.
  ///
  /// Runs a semantic search over the caller org's own knowledge — its wiki pages, its agent memories and everything its connectors have synced — and returns the matching passages. This is the RAG entry point: an agent asks \"what does this org know about X\" and the org's OWN vector namespace answers. The org comes from the validated principal, and both the collection and the payload filter are pinned to it, so cross-tenant retrieval is impossible. An unreachable index returns an honest empty result set with degraded=true, never a 5xx.
  ///
  /// Parameters:
  ///
  /// * [SearchIn] searchIn (required):
  Future<SearchOut?> postKnowledgeSearch(SearchIn searchIn,) async {
    final response = await postKnowledgeSearchWithHttpInfo(searchIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchOut',) as SearchOut;
    
    }
    return null;
  }
}
