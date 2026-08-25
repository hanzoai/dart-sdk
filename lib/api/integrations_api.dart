//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class IntegrationsApi {
  IntegrationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Forgets a connector: every custodied secret, then the row.
  ///
  /// Forgets a connector: every custodied secret, then the row. Idempotent — dropping a never-connected id still answers {disconnected:true} (disconnect() parity). No provider Revoke: none of the user-plane providers exposes a revoke endpoint.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the connector id, provider + \":\" + label (\"openai:default\") — the auth-profile-id shape. Another user's id is simply no row, so 404.
  Future<Response> deleteIntegrationsConnectorsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/connectors/{id}'
      .replaceAll('{id}', id);

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

  /// Forgets a connector: every custodied secret, then the row.
  ///
  /// Forgets a connector: every custodied secret, then the row. Idempotent — dropping a never-connected id still answers {disconnected:true} (disconnect() parity). No provider Revoke: none of the user-plane providers exposes a revoke endpoint.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the connector id, provider + \":\" + label (\"openai:default\") — the auth-profile-id shape. Another user's id is simply no row, so 404.
  Future<DisconnectOut?> deleteIntegrationsConnectorsById(String id,) async {
    final response = await deleteIntegrationsConnectorsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DisconnectOut',) as DisconnectOut;
    
    }
    return null;
  }

  /// Deletes the repo's Pages site.
  ///
  /// Deletes the repo's Pages site. 404 when there is none, so a caller can tell \"turned it off\" from \"there was nothing on\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] repo (required):
  ///   Repo is the repository's short name within the org's installation, with no owner prefix (the owner is server-derived from the grant). A trailing \".git\" is stripped.
  Future<Response> deleteIntegrationsGithubReposByRepoPagesWithHttpInfo(String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/github/repos/{repo}/pages'
      .replaceAll('{repo}', repo);

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

  /// Deletes the repo's Pages site.
  ///
  /// Deletes the repo's Pages site. 404 when there is none, so a caller can tell \"turned it off\" from \"there was nothing on\".
  ///
  /// Parameters:
  ///
  /// * [String] repo (required):
  ///   Repo is the repository's short name within the org's installation, with no owner prefix (the owner is server-derived from the grant). A trailing \".git\" is stripped.
  Future<GithubPagesDisabledOut?> deleteIntegrationsGithubReposByRepoPages(String repo,) async {
    final response = await deleteIntegrationsGithubReposByRepoPagesWithHttpInfo(repo,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GithubPagesDisabledOut',) as GithubPagesDisabledOut;
    
    }
    return null;
  }

  /// Returns every registered integration provider together with THIS org's connection status for it — the catalog the console's Integrations page renders.
  ///
  /// Returns every registered integration provider together with THIS org's connection status for it — the catalog the console's Integrations page renders. Org-authed: a caller with no validated principal is 403, because the status is per-org and there is no org-less answer. User-plane providers (the /v1/integrations/connectors surface) are omitted; the two planes are disjoint.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIntegrationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations';

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

  /// Returns every registered integration provider together with THIS org's connection status for it — the catalog the console's Integrations page renders.
  ///
  /// Returns every registered integration provider together with THIS org's connection status for it — the catalog the console's Integrations page renders. Org-authed: a caller with no validated principal is 403, because the status is per-org and there is no org-less answer. User-plane providers (the /v1/integrations/connectors surface) are omitted; the two planes are disjoint.
  Future<ListOut?> getIntegrations() async {
    final response = await getIntegrationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListOut',) as ListOut;
    
    }
    return null;
  }

  /// Returns ONE provider with this org's connection status — the same view list carries, for a single id.
  ///
  /// Returns ONE provider with this org's connection status — the same view list carries, for a single id. An unknown id is 404, and so is a user-plane provider: the org surface never resolves one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the registry id of the connector — \"slack\", \"github\", \"cloudflare\". Unknown ids are 404, as are the user-plane (/v1/integrations/connectors) providers, which this surface never resolves.
  Future<Response> getIntegrationsByProviderWithHttpInfo(String provider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/{provider}'
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

  /// Returns ONE provider with this org's connection status — the same view list carries, for a single id.
  ///
  /// Returns ONE provider with this org's connection status — the same view list carries, for a single id. An unknown id is 404, and so is a user-plane provider: the org surface never resolves one.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the registry id of the connector — \"slack\", \"github\", \"cloudflare\". Unknown ids are 404, as are the user-plane (/v1/integrations/connectors) providers, which this surface never resolves.
  Future<ProviderView?> getIntegrationsByProvider(String provider,) async {
    final response = await getIntegrationsByProviderWithHttpInfo(provider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProviderView',) as ProviderView;
    
    }
    return null;
  }

  /// OAuth return for any connector
  ///
  /// The single address every connector's OAuth flow returns to. It exchanges the authorization the provider granted, records the connection, and ALWAYS redirects the browser back to the console — on success and on every labeled failure alike, so a user never lands on a raw JSON dead end.  It is public and carries no principal, so the org is taken ONLY from the signed state minted when the flow began; no header is trusted here. That state is single-use and is burned BEFORE the exchange, so one authorization is one attempt and a replayed return fails instead of exchanging twice.  Tokens are sealed into the org's KMS namespace BEFORE the connection row is written, so a failure of the secret store leaves no half-connected integration advertising a credential that was never stored. Token values never appear in the redirect, in a log line or in an error.  One generalization is worth knowing: a GitHub App installation returns an installation identifier instead of an OAuth code, and it is accepted in the code's place so the App model needs no second address.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  Future<Response> getIntegrationsByProviderCallbackWithHttpInfo(String provider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/{provider}/callback'
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

  /// OAuth return for any connector
  ///
  /// The single address every connector's OAuth flow returns to. It exchanges the authorization the provider granted, records the connection, and ALWAYS redirects the browser back to the console — on success and on every labeled failure alike, so a user never lands on a raw JSON dead end.  It is public and carries no principal, so the org is taken ONLY from the signed state minted when the flow began; no header is trusted here. That state is single-use and is burned BEFORE the exchange, so one authorization is one attempt and a replayed return fails instead of exchanging twice.  Tokens are sealed into the org's KMS namespace BEFORE the connection row is written, so a failure of the secret store leaves no half-connected integration advertising a credential that was never stored. Token values never appear in the redirect, in a log line or in an error.  One generalization is worth knowing: a GitHub App installation returns an installation identifier instead of an OAuth code, and it is accepted in the code's place so the App model needs no second address.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  Future<void> getIntegrationsByProviderCallback(String provider,) async {
    final response = await getIntegrationsByProviderCallbackWithHttpInfo(provider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists the caller's OWN connectors across every provider — the set `hanzo connector ls` prints.
  ///
  /// Lists the caller's OWN connectors across every provider — the set `hanzo connector ls` prints. Rows are keyed (org,user), so this can never surface another user's connector, and no secret is in the view.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIntegrationsConnectorsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/connectors';

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

  /// Lists the caller's OWN connectors across every provider — the set `hanzo connector ls` prints.
  ///
  /// Lists the caller's OWN connectors across every provider — the set `hanzo connector ls` prints. Rows are keyed (org,user), so this can never surface another user's connector, and no secret is in the view.
  Future<ConnectorsOut?> getIntegrationsConnectors() async {
    final response = await getIntegrationsConnectorsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectorsOut',) as ConnectorsOut;
    
    }
    return null;
  }

  /// Hands the custodied access token to its owner — the ONE place custody exits.
  ///
  /// Hands the custodied access token to its owner — the ONE place custody exits. The (org,user)-keyed row IS the same-user gate: another user's id is simply \"no row\" → 404. fresh() auto-rotates within the refreshSkew window; static providers degenerate to a plain kmsGet of Secrets[0]. Refresh tokens are NEVER returned — custody keeps the sink. The token is never logged.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the connector id, provider + \":\" + label (\"openai:default\") — the auth-profile-id shape. Another user's id is simply no row, so 404.
  Future<Response> getIntegrationsConnectorsByIdTokenWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/connectors/{id}/token'
      .replaceAll('{id}', id);

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

  /// Hands the custodied access token to its owner — the ONE place custody exits.
  ///
  /// Hands the custodied access token to its owner — the ONE place custody exits. The (org,user)-keyed row IS the same-user gate: another user's id is simply \"no row\" → 404. fresh() auto-rotates within the refreshSkew window; static providers degenerate to a plain kmsGet of Secrets[0]. Refresh tokens are NEVER returned — custody keeps the sink. The token is never logged.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the connector id, provider + \":\" + label (\"openai:default\") — the auth-profile-id shape. Another user's id is simply no row, so 404.
  Future<ConnectorTokenOut?> getIntegrationsConnectorsByIdToken(String id,) async {
    final response = await getIntegrationsConnectorsByIdTokenWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectorTokenOut',) as ConnectorTokenOut;
    
    }
    return null;
  }

  /// Lists the user-scoped provider cards — the catalog of what a user can connect, and how.
  ///
  /// Lists the user-scoped provider cards — the catalog of what a user can connect, and how. Methods derive from capabilities (Device/Adopt/Verify — Mount asserts at least one), never from a parallel kind enum.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIntegrationsConnectorsProvidersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/connectors/providers';

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

  /// Lists the user-scoped provider cards — the catalog of what a user can connect, and how.
  ///
  /// Lists the user-scoped provider cards — the catalog of what a user can connect, and how. Methods derive from capabilities (Device/Adopt/Verify — Mount asserts at least one), never from a parallel kind enum.
  Future<ConnectorProvidersOut?> getIntegrationsConnectorsProviders() async {
    final response = await getIntegrationsConnectorsProvidersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectorProvidersOut',) as ConnectorProvidersOut;
    
    }
    return null;
  }

  /// Begin linking a Hanzo account from Discord
  ///
  /// The entry point behind the connect prompt Hanzo shows in a Discord server. It starts a link session and redirects to Discord's OAuth `identify` consent — the narrowest scope that establishes which Discord user is asking, and nothing more.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIntegrationsDiscordLinkWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/discord/link';

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

  /// Begin linking a Hanzo account from Discord
  ///
  /// The entry point behind the connect prompt Hanzo shows in a Discord server. It starts a link session and redirects to Discord's OAuth `identify` consent — the narrowest scope that establishes which Discord user is asking, and nothing more.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  Future<void> getIntegrationsDiscordLink() async {
    final response = await getIntegrationsDiscordLinkWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Complete the Discord account link
  ///
  /// The final leg: it binds the verified Discord user to the Hanzo account that just signed in, and answers a short confirmation page telling them to return to Discord. The Hanzo credential is sealed into the connected org's KMS namespace rather than stored beside the link.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIntegrationsDiscordLinkCallbackWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/discord/link/callback';

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

  /// Complete the Discord account link
  ///
  /// The final leg: it binds the verified Discord user to the Hanzo account that just signed in, and answers a short confirmation page telling them to return to Discord. The Hanzo credential is sealed into the connected org's KMS namespace rather than stored beside the link.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  Future<void> getIntegrationsDiscordLinkCallback() async {
    final response = await getIntegrationsDiscordLinkCallbackWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Discord sign-in return leg
  ///
  /// Where Discord returns the user after the identify consent. It resolves the verified Discord user, confirms the server is connected to an org, and hands the browser to the Hanzo sign-in that completes the link.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIntegrationsDiscordLinkDiscordWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/discord/link/discord';

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

  /// Discord sign-in return leg
  ///
  /// Where Discord returns the user after the identify consent. It resolves the verified Discord user, confirms the server is connected to an org, and hands the browser to the Hanzo sign-in that completes the link.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  Future<void> getIntegrationsDiscordLinkDiscord() async {
    final response = await getIntegrationsDiscordLinkDiscordWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists the GitHub accounts the caller may see the App installed on, each confirmed against the App's own list, plus where to add another.
  ///
  /// Lists the GitHub accounts the caller may see the App installed on, each confirmed against the App's own list, plus where to add another.  The confirmation is the point. A connection row holds an installation id, and an id whose installation was since removed on GitHub is a row that mints nothing — every list and import against it fails with a token error, which reads as \"our git integration is broken\" rather than \"that install is gone\". Checking the App's view turns that into a fact the caller can act on.  ORG-SCOPED for a tenant, deliberately. The App is installed across every customer, so the raw list is the customer list; a tenant sees only accounts its own org has bound. It discovers a NEW account by installing it (InstallURL), which is GitHub's own consent screen — not by reading ours.  A SUPER ADMIN sees the App's whole install list, because that list is the platform's own inventory rather than any one tenant's data, and platform sudo is the single cross-tenant scope this house has. Without it an App installed out-of-band — granted straight from GitHub, so no connect flow ever ran and no connection row exists — is invisible to everyone: the console card reads \"not connected\" and an operator asked \"which GitHub orgs do you see\" can only answer for accounts already bound, which is precisely the accounts that were never the question.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIntegrationsGithubInstallationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/github/installations';

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

  /// Lists the GitHub accounts the caller may see the App installed on, each confirmed against the App's own list, plus where to add another.
  ///
  /// Lists the GitHub accounts the caller may see the App installed on, each confirmed against the App's own list, plus where to add another.  The confirmation is the point. A connection row holds an installation id, and an id whose installation was since removed on GitHub is a row that mints nothing — every list and import against it fails with a token error, which reads as \"our git integration is broken\" rather than \"that install is gone\". Checking the App's view turns that into a fact the caller can act on.  ORG-SCOPED for a tenant, deliberately. The App is installed across every customer, so the raw list is the customer list; a tenant sees only accounts its own org has bound. It discovers a NEW account by installing it (InstallURL), which is GitHub's own consent screen — not by reading ours.  A SUPER ADMIN sees the App's whole install list, because that list is the platform's own inventory rather than any one tenant's data, and platform sudo is the single cross-tenant scope this house has. Without it an App installed out-of-band — granted straight from GitHub, so no connect flow ever ran and no connection row exists — is invisible to everyone: the console card reads \"not connected\" and an operator asked \"which GitHub orgs do you see\" can only answer for accounts already bound, which is precisely the accounts that were never the question.
  Future<GithubInstallationsOut?> getIntegrationsGithubInstallations() async {
    final response = await getIntegrationsGithubInstallationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GithubInstallationsOut',) as GithubInstallationsOut;
    
    }
    return null;
  }

  /// Lists the org's granted GitHub repositories, each annotated with its native import + sync status from the git object plane.
  ///
  /// Lists the org's granted GitHub repositories, each annotated with its native import + sync status from the git object plane. Org-authed: the org comes from the validated principal, and the granted set is bounded to THAT org's installation token — an org can never enumerate another org's repos. The console polls it to watch an import flip a repo to imported.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIntegrationsGithubReposWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/github/repos';

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

  /// Lists the org's granted GitHub repositories, each annotated with its native import + sync status from the git object plane.
  ///
  /// Lists the org's granted GitHub repositories, each annotated with its native import + sync status from the git object plane. Org-authed: the org comes from the validated principal, and the granted set is bounded to THAT org's installation token — an org can never enumerate another org's repos. The console polls it to watch an import flip a repo to imported.
  Future<GithubReposOut?> getIntegrationsGithubRepos() async {
    final response = await getIntegrationsGithubReposWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GithubReposOut',) as GithubReposOut;
    
    }
    return null;
  }

  /// Returns the repo's Pages status, live URL, custom domain and build source.
  ///
  /// Returns the repo's Pages status, live URL, custom domain and build source. The repo is resolved against the org installation's GRANTED set, so a caller can never address a repo the App was not granted; 404 when the repo has no Pages site.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] repo (required):
  ///   Repo is the repository's short name within the org's installation, with no owner prefix (the owner is server-derived from the grant). A trailing \".git\" is stripped.
  Future<Response> getIntegrationsGithubReposByRepoPagesWithHttpInfo(String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/github/repos/{repo}/pages'
      .replaceAll('{repo}', repo);

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

  /// Returns the repo's Pages status, live URL, custom domain and build source.
  ///
  /// Returns the repo's Pages status, live URL, custom domain and build source. The repo is resolved against the org installation's GRANTED set, so a caller can never address a repo the App was not granted; 404 when the repo has no Pages site.
  ///
  /// Parameters:
  ///
  /// * [String] repo (required):
  ///   Repo is the repository's short name within the org's installation, with no owner prefix (the owner is server-derived from the grant). A trailing \".git\" is stripped.
  Future<GithubPagesView?> getIntegrationsGithubReposByRepoPages(String repo,) async {
    final response = await getIntegrationsGithubReposByRepoPagesWithHttpInfo(repo,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GithubPagesView',) as GithubPagesView;
    
    }
    return null;
  }

  /// Lists the projects the org's GitLab connection can reach — membership projects, most recently active first.
  ///
  /// Lists the projects the org's GitLab connection can reach — membership projects, most recently active first.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIntegrationsGitlabProjectsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/gitlab/projects';

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

  /// Lists the projects the org's GitLab connection can reach — membership projects, most recently active first.
  ///
  /// Lists the projects the org's GitLab connection can reach — membership projects, most recently active first.
  Future<GitlabProjectsOut?> getIntegrationsGitlabProjects() async {
    final response = await getIntegrationsGitlabProjectsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GitlabProjectsOut',) as GitlabProjectsOut;
    
    }
    return null;
  }

  /// Install the Hanzo app into a Slack workspace
  ///
  /// The address behind Slack's \"Add to Slack\" and Marketplace Install buttons. It answers a 302 to Slack's own consent screen and does nothing else — it is a redirector by design.  It exists because Slack refuses a slack.com URL in that field and requires one of ours that redirects there, which makes the field an ATTRIBUTION hook: routing the click through our own address is what lets an install be counted, and always answering the redirect is what keeps the counter from becoming a detour that never reaches consent. The destination is the same consent URL every time, built from the same scopes the console's Connect button asks for, so a workspace is asked to grant one thing however the install began.  It is PUBLIC and carries no principal, because whoever clicks Install in Slack's directory has no Hanzo session yet. It binds no org either, and that is deliberate rather than missing: the org is resolved at the shared provider callback, from the signed state a console connect minted or from the workspace's existing connection. Minting an org for an anonymous click is the one thing that would break tenant isolation, so an install begun here finishes under exactly the rules every other install obeys.  Where the app is not configured it answers 503, rather than a consent URL carrying an empty client_id that Slack would render as its own dead-end error page.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIntegrationsSlackInstallWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/slack/install';

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

  /// Install the Hanzo app into a Slack workspace
  ///
  /// The address behind Slack's \"Add to Slack\" and Marketplace Install buttons. It answers a 302 to Slack's own consent screen and does nothing else — it is a redirector by design.  It exists because Slack refuses a slack.com URL in that field and requires one of ours that redirects there, which makes the field an ATTRIBUTION hook: routing the click through our own address is what lets an install be counted, and always answering the redirect is what keeps the counter from becoming a detour that never reaches consent. The destination is the same consent URL every time, built from the same scopes the console's Connect button asks for, so a workspace is asked to grant one thing however the install began.  It is PUBLIC and carries no principal, because whoever clicks Install in Slack's directory has no Hanzo session yet. It binds no org either, and that is deliberate rather than missing: the org is resolved at the shared provider callback, from the signed state a console connect minted or from the workspace's existing connection. Minting an org for an anonymous click is the one thing that would break tenant isolation, so an install begun here finishes under exactly the rules every other install obeys.  Where the app is not configured it answers 503, rather than a consent URL carrying an empty client_id that Slack would render as its own dead-end error page.
  Future<void> getIntegrationsSlackInstall() async {
    final response = await getIntegrationsSlackInstallWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Begin linking a Hanzo account from Slack
  ///
  /// The entry point behind the connect prompt Hanzo posts in Slack. It starts a link session in the browser and redirects to Slack's own sign-in, which is what proves which Slack user is asking.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIntegrationsSlackLinkWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/slack/link';

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

  /// Begin linking a Hanzo account from Slack
  ///
  /// The entry point behind the connect prompt Hanzo posts in Slack. It starts a link session in the browser and redirects to Slack's own sign-in, which is what proves which Slack user is asking.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  Future<void> getIntegrationsSlackLink() async {
    final response = await getIntegrationsSlackLinkWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Complete the Slack account link
  ///
  /// The final leg: the user has proved both who they are in Slack and who they are in Hanzo, and this binds the two. It answers a short confirmation page telling them to return to Slack.  The Hanzo credential obtained here is sealed into the connected workspace's own KMS namespace; it is never written to a database column and never logged. A deployment whose secret store is unavailable refuses the link rather than completing it without custody of the credential.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIntegrationsSlackLinkCallbackWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/slack/link/callback';

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

  /// Complete the Slack account link
  ///
  /// The final leg: the user has proved both who they are in Slack and who they are in Hanzo, and this binds the two. It answers a short confirmation page telling them to return to Slack.  The Hanzo credential obtained here is sealed into the connected workspace's own KMS namespace; it is never written to a database column and never logged. A deployment whose secret store is unavailable refuses the link rather than completing it without custody of the credential.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  Future<void> getIntegrationsSlackLinkCallback() async {
    final response = await getIntegrationsSlackLinkCallbackWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Slack sign-in return leg
  ///
  /// Where Slack returns the user after they sign in. It establishes the verified Slack workspace and user, confirms that workspace is connected to an org, and hands the browser on to the Hanzo sign-in that completes the link.  The verified pair is carried onward in a host-bound cookie rather than in the URL, so the identity being linked cannot be edited in transit.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIntegrationsSlackLinkSlackWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/slack/link/slack';

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

  /// Slack sign-in return leg
  ///
  /// Where Slack returns the user after they sign in. It establishes the verified Slack workspace and user, confirms that workspace is connected to an org, and hands the browser on to the Hanzo sign-in that completes the link.  The verified pair is carried onward in a host-bound cookie rather than in the URL, so the identity being linked cannot be edited in transit.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  Future<void> getIntegrationsSlackLinkSlack() async {
    final response = await getIntegrationsSlackLinkSlackWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Begin linking a Hanzo account from Teams
  ///
  /// The entry point behind the connect prompt Hanzo shows in Teams. It starts a link session and redirects to Microsoft sign-in addressed to the CHAT'S OWN tenant, not the common endpoint, so only a member of that tenant can complete it.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIntegrationsTeamsLinkWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/teams/link';

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

  /// Begin linking a Hanzo account from Teams
  ///
  /// The entry point behind the connect prompt Hanzo shows in Teams. It starts a link session and redirects to Microsoft sign-in addressed to the CHAT'S OWN tenant, not the common endpoint, so only a member of that tenant can complete it.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  Future<void> getIntegrationsTeamsLink() async {
    final response = await getIntegrationsTeamsLinkWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Microsoft sign-in return leg
  ///
  /// Where Microsoft returns the user after sign-in. It resolves the verified directory identity and then re-checks the tenant: the signed-in user's tenant must equal the tenant of the chat the link started from, so a valid Microsoft sign-in from a different organization is refused here rather than accepted.  This is the leg Teams has and the other platforms do not, which is why the Teams flow has an extra address.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIntegrationsTeamsLinkAadWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/teams/link/aad';

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

  /// Microsoft sign-in return leg
  ///
  /// Where Microsoft returns the user after sign-in. It resolves the verified directory identity and then re-checks the tenant: the signed-in user's tenant must equal the tenant of the chat the link started from, so a valid Microsoft sign-in from a different organization is refused here rather than accepted.  This is the leg Teams has and the other platforms do not, which is why the Teams flow has an extra address.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  Future<void> getIntegrationsTeamsLinkAad() async {
    final response = await getIntegrationsTeamsLinkAadWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Complete the Teams account link
  ///
  /// The final leg: it binds the verified directory identity to the Hanzo account that just signed in, and answers a short confirmation page telling them to return to Teams. The Hanzo credential is sealed into the connected org's KMS namespace.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIntegrationsTeamsLinkCallbackWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/teams/link/callback';

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

  /// Complete the Teams account link
  ///
  /// The final leg: it binds the verified directory identity to the Hanzo account that just signed in, and answers a short confirmation page telling them to return to Teams. The Hanzo credential is sealed into the connected org's KMS namespace.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  Future<void> getIntegrationsTeamsLinkCallback() async {
    final response = await getIntegrationsTeamsLinkCallbackWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Begin linking a Hanzo account from Telegram
  ///
  /// The entry point behind the connect prompt Hanzo sends in Telegram. Unlike the other platforms it answers an HTML PAGE rather than a redirect: Telegram has no OAuth flow, so the page hosts Telegram's Login Widget, and the browser is sent onward only after the user signs in through it.  The widget only appears on the domain registered for the bot, so a deployment whose bot domain is unset renders a page with nothing on it.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIntegrationsTelegramLinkWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/telegram/link';

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

  /// Begin linking a Hanzo account from Telegram
  ///
  /// The entry point behind the connect prompt Hanzo sends in Telegram. Unlike the other platforms it answers an HTML PAGE rather than a redirect: Telegram has no OAuth flow, so the page hosts Telegram's Login Widget, and the browser is sent onward only after the user signs in through it.  The widget only appears on the domain registered for the bot, so a deployment whose bot domain is unset renders a page with nothing on it.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  Future<void> getIntegrationsTelegramLink() async {
    final response = await getIntegrationsTelegramLinkWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Telegram Login Widget return leg
  ///
  /// Where Telegram's Login Widget sends the user with its signed authentication data. That data is verified against the bot token — this is the identity source, and it is the widget's signature rather than a code exchange — and the chat is confirmed to be bound to an org before the browser is handed to the Hanzo sign-in.  Widget data is only accepted while it is fresh, so a captured sign-in blob cannot be replayed later even though its signature stays valid.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIntegrationsTelegramLinkAuthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/telegram/link/auth';

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

  /// Telegram Login Widget return leg
  ///
  /// Where Telegram's Login Widget sends the user with its signed authentication data. That data is verified against the bot token — this is the identity source, and it is the widget's signature rather than a code exchange — and the chat is confirmed to be bound to an org before the browser is handed to the Hanzo sign-in.  Widget data is only accepted while it is fresh, so a captured sign-in blob cannot be replayed later even though its signature stays valid.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  Future<void> getIntegrationsTelegramLinkAuth() async {
    final response = await getIntegrationsTelegramLinkAuthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Complete the Telegram account link
  ///
  /// The final leg: it binds the verified Telegram user to the Hanzo account that just signed in, and answers a short confirmation page telling them to return to Telegram. The Hanzo credential is sealed into the connected org's KMS namespace.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIntegrationsTelegramLinkCallbackWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/telegram/link/callback';

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

  /// Complete the Telegram account link
  ///
  /// The final leg: it binds the verified Telegram user to the Hanzo account that just signed in, and answers a short confirmation page telling them to return to Telegram. The Hanzo credential is sealed into the connected org's KMS namespace.  This is one leg of a three-leg flow, and the legs are not interchangeable: a browser is expected to arrive here only from the leg before it. The link URL's state proves the prompt was server-minted and carries the CHAT it started from — it is provenance only, and it never decides which account gets linked. The account identity always comes from the platform's own verified sign-in and a host-bound cookie, so forwarding a link to someone else cannot bind their account, and a session lifted into another browser is refused rather than completed. Each link is single-use, and a deployment without linking configured answers 503.
  Future<void> getIntegrationsTelegramLinkCallback() async {
    final response = await getIntegrationsTelegramLinkCallbackWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Acquires the org's credential for one provider.
  ///
  /// Acquires the org's credential for one provider. It has TWO paths and the REQUEST picks which: a \"token\" key in the body seals that credential directly (verify-before-store), and its absence begins the 3-legged OAuth flow — minting a single-use nonce plus an HMAC-signed state that binds this org to this provider, and answering with the provider's authorize URL for the caller to redirect to.  Fail-closed order, unchanged: no principal → 403; unknown provider → 404; an AdminOnly connector without the caller's own-org admin bit → 403; not configured → 503; KMS not ready → 503 (the flow WILL need to seal a token, so refuse now rather than dead-end at the callback).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the connector's registry id, from the :provider path segment.
  ///
  /// * [ConnectIn] connectIn (required):
  Future<Response> postIntegrationsByProviderConnectWithHttpInfo(String provider, ConnectIn connectIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/{provider}/connect'
      .replaceAll('{provider}', provider);

    // ignore: prefer_final_locals
    Object? postBody = connectIn;

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

  /// Acquires the org's credential for one provider.
  ///
  /// Acquires the org's credential for one provider. It has TWO paths and the REQUEST picks which: a \"token\" key in the body seals that credential directly (verify-before-store), and its absence begins the 3-legged OAuth flow — minting a single-use nonce plus an HMAC-signed state that binds this org to this provider, and answering with the provider's authorize URL for the caller to redirect to.  Fail-closed order, unchanged: no principal → 403; unknown provider → 404; an AdminOnly connector without the caller's own-org admin bit → 403; not configured → 503; KMS not ready → 503 (the flow WILL need to seal a token, so refuse now rather than dead-end at the callback).
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the connector's registry id, from the :provider path segment.
  ///
  /// * [ConnectIn] connectIn (required):
  Future<ConnectOut?> postIntegrationsByProviderConnect(String provider, ConnectIn connectIn,) async {
    final response = await postIntegrationsByProviderConnectWithHttpInfo(provider, connectIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectOut',) as ConnectOut;
    
    }
    return null;
  }

  /// Revokes (best-effort) and forgets an org's connection: it deletes every custodied KMS secret and the connection row.
  ///
  /// Revokes (best-effort) and forgets an org's connection: it deletes every custodied KMS secret and the connection row. Idempotent — disconnecting a provider that was never connected still returns {disconnected:true}. Symmetric with connect: an AdminOnly connector needs the caller's own-org admin bit.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the registry id of the connector — \"slack\", \"github\", \"cloudflare\". Unknown ids are 404, as are the user-plane (/v1/integrations/connectors) providers, which this surface never resolves.
  Future<Response> postIntegrationsByProviderDisconnectWithHttpInfo(String provider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/{provider}/disconnect'
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

  /// Revokes (best-effort) and forgets an org's connection: it deletes every custodied KMS secret and the connection row.
  ///
  /// Revokes (best-effort) and forgets an org's connection: it deletes every custodied KMS secret and the connection row. Idempotent — disconnecting a provider that was never connected still returns {disconnected:true}. Symmetric with connect: an AdminOnly connector needs the caller's own-org admin bit.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the registry id of the connector — \"slack\", \"github\", \"cloudflare\". Unknown ids are 404, as are the user-plane (/v1/integrations/connectors) providers, which this surface never resolves.
  Future<DisconnectOut?> postIntegrationsByProviderDisconnect(String provider,) async {
    final response = await postIntegrationsByProviderDisconnectWithHttpInfo(provider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DisconnectOut',) as DisconnectOut;
    
    }
    return null;
  }

  /// Re-checks a CONNECTED apikey connector's stored credential against the provider, live (`hanzo connector verify`).
  ///
  /// Re-checks a CONNECTED apikey connector's stored credential against the provider, live (`hanzo connector verify`). Org-scoped (any member may check status); the credential is read from KMS, verified, and NEVER returned or logged. A verification failure is reported as {active:false}, not an error — the console/ CLI renders it. Only apikey providers support verify (OAuth tokens are checked at use, not re-verified here).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the registry id of the connector — \"slack\", \"github\", \"cloudflare\". Unknown ids are 404, as are the user-plane (/v1/integrations/connectors) providers, which this surface never resolves.
  Future<Response> postIntegrationsByProviderVerifyWithHttpInfo(String provider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/{provider}/verify'
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

  /// Re-checks a CONNECTED apikey connector's stored credential against the provider, live (`hanzo connector verify`).
  ///
  /// Re-checks a CONNECTED apikey connector's stored credential against the provider, live (`hanzo connector verify`). Org-scoped (any member may check status); the credential is read from KMS, verified, and NEVER returned or logged. A verification failure is reported as {active:false}, not an error — the console/ CLI renders it. Only apikey providers support verify (OAuth tokens are checked at use, not re-verified here).
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the registry id of the connector — \"slack\", \"github\", \"cloudflare\". Unknown ids are 404, as are the user-plane (/v1/integrations/connectors) providers, which this surface never resolves.
  Future<VerifyOut?> postIntegrationsByProviderVerify(String provider,) async {
    final response = await postIntegrationsByProviderVerifyWithHttpInfo(provider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VerifyOut',) as VerifyOut;
    
    }
    return null;
  }

  /// Forces a token rotation for a connected connector, ahead of the automatic rotation a token read would do inside the expiry window.
  ///
  /// Forces a token rotation for a connected connector, ahead of the automatic rotation a token read would do inside the expiry window. Only providers that declare a Refresh support it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the connector id, provider + \":\" + label (\"openai:default\") — the auth-profile-id shape. Another user's id is simply no row, so 404.
  Future<Response> postIntegrationsConnectorsByIdRefreshWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/connectors/{id}/refresh'
      .replaceAll('{id}', id);

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

  /// Forces a token rotation for a connected connector, ahead of the automatic rotation a token read would do inside the expiry window.
  ///
  /// Forces a token rotation for a connected connector, ahead of the automatic rotation a token read would do inside the expiry window. Only providers that declare a Refresh support it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the connector id, provider + \":\" + label (\"openai:default\") — the auth-profile-id shape. Another user's id is simply no row, so 404.
  Future<RefreshOut?> postIntegrationsConnectorsByIdRefresh(String id,) async {
    final response = await postIntegrationsConnectorsByIdRefreshWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RefreshOut',) as RefreshOut;
    
    }
    return null;
  }

  /// Is the direct intake path: a customer-held token/setup-token (Verify) or an externally obtained OAuth bundle from the CLI's local PKCE (Adopt).
  ///
  /// Is the direct intake path: a customer-held token/setup-token (Verify) or an externally obtained OAuth bundle from the CLI's local PKCE (Adopt). ALWAYS verify-before-store: a bad credential is refused and NOTHING is persisted (connectByCredential's fail-closed order).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the user-scoped provider's registry id, from the path.
  ///
  /// * [CredentialIn] credentialIn (required):
  Future<Response> postIntegrationsConnectorsByProviderCredentialWithHttpInfo(String provider, CredentialIn credentialIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/connectors/{provider}/credential'
      .replaceAll('{provider}', provider);

    // ignore: prefer_final_locals
    Object? postBody = credentialIn;

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

  /// Is the direct intake path: a customer-held token/setup-token (Verify) or an externally obtained OAuth bundle from the CLI's local PKCE (Adopt).
  ///
  /// Is the direct intake path: a customer-held token/setup-token (Verify) or an externally obtained OAuth bundle from the CLI's local PKCE (Adopt). ALWAYS verify-before-store: a bad credential is refused and NOTHING is persisted (connectByCredential's fail-closed order).
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the user-scoped provider's registry id, from the path.
  ///
  /// * [CredentialIn] credentialIn (required):
  Future<CredentialOut?> postIntegrationsConnectorsByProviderCredential(String provider, CredentialIn credentialIn,) async {
    final response = await postIntegrationsConnectorsByProviderCredentialWithHttpInfo(provider, credentialIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CredentialOut',) as CredentialOut;
    
    }
    return null;
  }

  /// Begins a device sign-in and returns the code to show the user plus how to poll for completion.
  ///
  /// Begins a device sign-in and returns the code to show the user plus how to poll for completion. KMS readiness is checked NOW rather than dead-ending the user at poll-done (connect() parity), and the per-provider connector cap is checked before the provider is called. The provider's device code is persisted only in the encrypted grants table and is NEVER returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the user-scoped provider's registry id, from the path.
  ///
  /// * [DeviceStartIn] deviceStartIn (required):
  Future<Response> postIntegrationsConnectorsByProviderDeviceWithHttpInfo(String provider, DeviceStartIn deviceStartIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/connectors/{provider}/device'
      .replaceAll('{provider}', provider);

    // ignore: prefer_final_locals
    Object? postBody = deviceStartIn;

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

  /// Begins a device sign-in and returns the code to show the user plus how to poll for completion.
  ///
  /// Begins a device sign-in and returns the code to show the user plus how to poll for completion. KMS readiness is checked NOW rather than dead-ending the user at poll-done (connect() parity), and the per-provider connector cap is checked before the provider is called. The provider's device code is persisted only in the encrypted grants table and is NEVER returned.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the user-scoped provider's registry id, from the path.
  ///
  /// * [DeviceStartIn] deviceStartIn (required):
  Future<DeviceStartOut?> postIntegrationsConnectorsByProviderDevice(String provider, DeviceStartIn deviceStartIn,) async {
    final response = await postIntegrationsConnectorsByProviderDeviceWithHttpInfo(provider, deviceStartIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeviceStartOut',) as DeviceStartOut;
    
    }
    return null;
  }

  /// Advances a device sign-in.
  ///
  /// Advances a device sign-in. Terminal outcomes are DATA, not errors (verifyConn {active:false} discipline) — the status set is closed: pending|connected|denied|expired. pollSlow collapses to \"pending\" on the wire; the raised cadence rides interval.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the user-scoped provider's registry id, from the path.
  ///
  /// * [String] flow (required):
  ///   Flow is the id deviceStartOut returned. Expired or another user's flow is indistinguishable from an unknown one: 404.
  Future<Response> postIntegrationsConnectorsByProviderDeviceByFlowPollWithHttpInfo(String provider, String flow,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/connectors/{provider}/device/{flow}/poll'
      .replaceAll('{provider}', provider)
      .replaceAll('{flow}', flow);

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

  /// Advances a device sign-in.
  ///
  /// Advances a device sign-in. Terminal outcomes are DATA, not errors (verifyConn {active:false} discipline) — the status set is closed: pending|connected|denied|expired. pollSlow collapses to \"pending\" on the wire; the raised cadence rides interval.
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///   Provider is the user-scoped provider's registry id, from the path.
  ///
  /// * [String] flow (required):
  ///   Flow is the id deviceStartOut returned. Expired or another user's flow is indistinguishable from an unknown one: 404.
  Future<DevicePollOut?> postIntegrationsConnectorsByProviderDeviceByFlowPoll(String provider, String flow,) async {
    final response = await postIntegrationsConnectorsByProviderDeviceByFlowPollWithHttpInfo(provider, flow,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePollOut',) as DevicePollOut;
    
    }
    return null;
  }

  /// Discord interactions endpoint
  ///
  /// The Interactions Endpoint URL for the Discord app. It answers Discord's PING with a PONG, and handles the `/hanzo` slash command by acknowledging with a deferred ephemeral reply and editing that reply with the answer once the agent has run. Any other interaction is acknowledged and ignored.  Requests are verified by ED25519 SIGNATURE over the timestamp and body against the app's public key — not by HMAC, unlike the Slack webhooks. Interactions work over plain HTTP, so no gateway connection and no message-content intent is involved.  Discord does not retry, so this is the one channel where being at capacity is shown to the user as an ephemeral ask-to-run-it-again rather than answered as a retriable failure — nothing is recorded either way, so the next attempt is clean.  The caller here is the PLATFORM, not a Hanzo tenant, so there is no bearer and no principal. The signature check IS the authentication, and it fails closed. The tenant is never read from the payload either: it is resolved from the verified platform identifier through the connection map, so an event from a workspace nobody connected does nothing. Refusals are written with their own status rather than being flattened to a 500, so a rejected signature reads as 401 and a malformed body as 400.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIntegrationsDiscordInteractionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/discord/interactions';

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

  /// Discord interactions endpoint
  ///
  /// The Interactions Endpoint URL for the Discord app. It answers Discord's PING with a PONG, and handles the `/hanzo` slash command by acknowledging with a deferred ephemeral reply and editing that reply with the answer once the agent has run. Any other interaction is acknowledged and ignored.  Requests are verified by ED25519 SIGNATURE over the timestamp and body against the app's public key — not by HMAC, unlike the Slack webhooks. Interactions work over plain HTTP, so no gateway connection and no message-content intent is involved.  Discord does not retry, so this is the one channel where being at capacity is shown to the user as an ephemeral ask-to-run-it-again rather than answered as a retriable failure — nothing is recorded either way, so the next attempt is clean.  The caller here is the PLATFORM, not a Hanzo tenant, so there is no bearer and no principal. The signature check IS the authentication, and it fails closed. The tenant is never read from the payload either: it is resolved from the verified platform identifier through the connection map, so an event from a workspace nobody connected does nothing. Refusals are written with their own status rather than being flattened to a 500, so a rejected signature reads as 401 and a malformed body as 400.
  Future<void> postIntegrationsDiscordInteractions() async {
    final response = await postIntegrationsDiscordInteractionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Binds installations the App ALREADY holds to the org the caller is acting in — the reconciliation for a grant that happened outside our connect flow.
  ///
  /// Binds installations the App ALREADY holds to the org the caller is acting in — the reconciliation for a grant that happened outside our connect flow.  An installation IS the grant: GitHub recorded the consent when the App was installed, and our connection row is bookkeeping that never got written because nobody came through our callback. This writes that row from the App's own view, so 23 accounts granted straight from GitHub stop reading as nothing.  The org is taken from the VALIDATED PRINCIPAL and never from the body, because it is the one part GitHub cannot tell us. An installation carries an account login, a type and a repository selection — nothing that names a Hanzo org. So the binding cannot be DERIVED, only asserted, and the only unforgeable assertion available is the org the caller is already acting in. Inferring one from the account name would be a guess the store cannot catch: its key is (org,provider,owner), so a wrong org is a valid row, and a valid row is a mirror pointed at the wrong tenant.  SUPER ADMIN only, for that same reason. A tenant's proof that an account is theirs is GitHub's own consent screen — the connect flow — and without it any org could claim any account the App holds. Platform sudo is already the scope that reads the whole install list, so it is the scope that may bind from it; giving a tenant this verb would hand it every other tenant's repositories.  Idempotent: the row is keyed (org,provider,owner) and connected_at survives an upsert, so claiming twice rebinds the same account to the same org and reports it under `already`. Re-claiming also REFRESHES the installation id, so an account reinstalled on GitHub — new id, same login — self-heals instead of minting tokens against a dead installation.  Claiming an account another org holds ADDS this org's row and leaves theirs standing, so no org loses an integration it is using.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GithubClaimIn] githubClaimIn (required):
  Future<Response> postIntegrationsGithubClaimWithHttpInfo(GithubClaimIn githubClaimIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/github/claim';

    // ignore: prefer_final_locals
    Object? postBody = githubClaimIn;

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

  /// Binds installations the App ALREADY holds to the org the caller is acting in — the reconciliation for a grant that happened outside our connect flow.
  ///
  /// Binds installations the App ALREADY holds to the org the caller is acting in — the reconciliation for a grant that happened outside our connect flow.  An installation IS the grant: GitHub recorded the consent when the App was installed, and our connection row is bookkeeping that never got written because nobody came through our callback. This writes that row from the App's own view, so 23 accounts granted straight from GitHub stop reading as nothing.  The org is taken from the VALIDATED PRINCIPAL and never from the body, because it is the one part GitHub cannot tell us. An installation carries an account login, a type and a repository selection — nothing that names a Hanzo org. So the binding cannot be DERIVED, only asserted, and the only unforgeable assertion available is the org the caller is already acting in. Inferring one from the account name would be a guess the store cannot catch: its key is (org,provider,owner), so a wrong org is a valid row, and a valid row is a mirror pointed at the wrong tenant.  SUPER ADMIN only, for that same reason. A tenant's proof that an account is theirs is GitHub's own consent screen — the connect flow — and without it any org could claim any account the App holds. Platform sudo is already the scope that reads the whole install list, so it is the scope that may bind from it; giving a tenant this verb would hand it every other tenant's repositories.  Idempotent: the row is keyed (org,provider,owner) and connected_at survives an upsert, so claiming twice rebinds the same account to the same org and reports it under `already`. Re-claiming also REFRESHES the installation id, so an account reinstalled on GitHub — new id, same login — self-heals instead of minting tokens against a dead installation.  Claiming an account another org holds ADDS this org's row and leaves theirs standing, so no org loses an integration it is using.
  ///
  /// Parameters:
  ///
  /// * [GithubClaimIn] githubClaimIn (required):
  Future<GithubClaimOut?> postIntegrationsGithubClaim(GithubClaimIn githubClaimIn,) async {
    final response = await postIntegrationsGithubClaimWithHttpInfo(githubClaimIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GithubClaimOut',) as GithubClaimOut;
    
    }
    return null;
  }

  /// Forks a granted repository.
  ///
  /// Forks a granted repository.  GitHub's fork is ASYNCHRONOUS: it answers 202 with the target repo and populates it in the background, and it answers the same 202 when the fork already exists. So this reports what GitHub said rather than waiting — a call that blocked until the clone finished would time out on a large repository and tell the caller nothing it does not already know.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GithubForkReq] githubForkReq (required):
  Future<Response> postIntegrationsGithubForkWithHttpInfo(GithubForkReq githubForkReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/github/fork';

    // ignore: prefer_final_locals
    Object? postBody = githubForkReq;

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

  /// Forks a granted repository.
  ///
  /// Forks a granted repository.  GitHub's fork is ASYNCHRONOUS: it answers 202 with the target repo and populates it in the background, and it answers the same 202 when the fork already exists. So this reports what GitHub said rather than waiting — a call that blocked until the clone finished would time out on a large repository and tell the caller nothing it does not already know.
  ///
  /// Parameters:
  ///
  /// * [GithubForkReq] githubForkReq (required):
  Future<GithubForkOut?> postIntegrationsGithubFork(GithubForkReq githubForkReq,) async {
    final response = await postIntegrationsGithubForkWithHttpInfo(githubForkReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GithubForkOut',) as GithubForkOut;
    
    }
    return null;
  }

  /// Seeds the native todo with the EXISTING issues across the org's granted repos (default state=open); the webhook keeps them live thereafter.
  ///
  /// Seeds the native todo with the EXISTING issues across the org's granted repos (default state=open); the webhook keeps them live thereafter. Org-scoped by the validated principal — a caller only ever backfills its OWN org. Synchronous + bounded (a total time budget and an issue cap) so it returns the counts directly; idempotent by ExtRef, so a re-run continues where a truncated pass left off and never duplicates.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GithubBackfillIn] githubBackfillIn (required):
  Future<Response> postIntegrationsGithubIssuesBackfillWithHttpInfo(GithubBackfillIn githubBackfillIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/github/issues/backfill';

    // ignore: prefer_final_locals
    Object? postBody = githubBackfillIn;

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

  /// Seeds the native todo with the EXISTING issues across the org's granted repos (default state=open); the webhook keeps them live thereafter.
  ///
  /// Seeds the native todo with the EXISTING issues across the org's granted repos (default state=open); the webhook keeps them live thereafter. Org-scoped by the validated principal — a caller only ever backfills its OWN org. Synchronous + bounded (a total time budget and an issue cap) so it returns the counts directly; idempotent by ExtRef, so a re-run continues where a truncated pass left off and never duplicates.
  ///
  /// Parameters:
  ///
  /// * [GithubBackfillIn] githubBackfillIn (required):
  Future<GithubBackfillResult?> postIntegrationsGithubIssuesBackfill(GithubBackfillIn githubBackfillIn,) async {
    final response = await postIntegrationsGithubIssuesBackfillWithHttpInfo(githubBackfillIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GithubBackfillResult',) as GithubBackfillResult;
    
    }
    return null;
  }

  /// Creates the repo's Pages site and answers 201 Created with it.
  ///
  /// Creates the repo's Pages site and answers 201 Created with it. With buildType \"workflow\" the site builds via GitHub Actions; otherwise it builds from a branch source, defaulting to the repo's own default branch when none is given. Only \"/\" and \"/docs\" are legal source paths (GitHub's rule).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] repo (required):
  ///   Repo is the repository, from the :repo path segment.
  ///
  /// * [GithubPagesEnableReq] githubPagesEnableReq (required):
  Future<Response> postIntegrationsGithubReposByRepoPagesWithHttpInfo(String repo, GithubPagesEnableReq githubPagesEnableReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/github/repos/{repo}/pages'
      .replaceAll('{repo}', repo);

    // ignore: prefer_final_locals
    Object? postBody = githubPagesEnableReq;

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

  /// Creates the repo's Pages site and answers 201 Created with it.
  ///
  /// Creates the repo's Pages site and answers 201 Created with it. With buildType \"workflow\" the site builds via GitHub Actions; otherwise it builds from a branch source, defaulting to the repo's own default branch when none is given. Only \"/\" and \"/docs\" are legal source paths (GitHub's rule).
  ///
  /// Parameters:
  ///
  /// * [String] repo (required):
  ///   Repo is the repository, from the :repo path segment.
  ///
  /// * [GithubPagesEnableReq] githubPagesEnableReq (required):
  Future<GithubPagesView?> postIntegrationsGithubReposByRepoPages(String repo, GithubPagesEnableReq githubPagesEnableReq,) async {
    final response = await postIntegrationsGithubReposByRepoPagesWithHttpInfo(repo, githubPagesEnableReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GithubPagesView',) as GithubPagesView;
    
    }
    return null;
  }

  /// Requests a Pages rebuild and returns the queued build's status.
  ///
  /// Requests a Pages rebuild and returns the queued build's status. The build is queued AT GITHUB, not completed here, so the answer is 202 Accepted and its status is the one GitHub reported at queue time. 404 when the repository has no Pages site, or when the org's installation was not granted it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] repo (required):
  ///   Repo is the repository's short name within the org's installation, with no owner prefix (the owner is server-derived from the grant). A trailing \".git\" is stripped.
  Future<Response> postIntegrationsGithubReposByRepoPagesBuildsWithHttpInfo(String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/github/repos/{repo}/pages/builds'
      .replaceAll('{repo}', repo);

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

  /// Requests a Pages rebuild and returns the queued build's status.
  ///
  /// Requests a Pages rebuild and returns the queued build's status. The build is queued AT GITHUB, not completed here, so the answer is 202 Accepted and its status is the one GitHub reported at queue time. 404 when the repository has no Pages site, or when the org's installation was not granted it.
  ///
  /// Parameters:
  ///
  /// * [String] repo (required):
  ///   Repo is the repository's short name within the org's installation, with no owner prefix (the owner is server-derived from the grant). A trailing \".git\" is stripped.
  Future<GithubPagesBuildOut?> postIntegrationsGithubReposByRepoPagesBuilds(String repo,) async {
    final response = await postIntegrationsGithubReposByRepoPagesBuildsWithHttpInfo(repo,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GithubPagesBuildOut',) as GithubPagesBuildOut;
    
    }
    return null;
  }

  /// Imports the selected (or all) granted repos into git.hanzo.ai.
  ///
  /// Imports the selected (or all) granted repos into git.hanzo.ai. The selection is intersected with the installation's GRANTED set, so a client can never import a repo the App was not granted (org isolation + a grant check). The import runs in a bounded background worker (don't block the request), so the answer is 202 Accepted; poll GET /v1/integrations/github/repos for the per-repo status to flip to imported.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GithubImportIn] githubImportIn (required):
  Future<Response> postIntegrationsGithubReposImportWithHttpInfo(GithubImportIn githubImportIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/github/repos/import';

    // ignore: prefer_final_locals
    Object? postBody = githubImportIn;

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

  /// Imports the selected (or all) granted repos into git.hanzo.ai.
  ///
  /// Imports the selected (or all) granted repos into git.hanzo.ai. The selection is intersected with the installation's GRANTED set, so a client can never import a repo the App was not granted (org isolation + a grant check). The import runs in a bounded background worker (don't block the request), so the answer is 202 Accepted; poll GET /v1/integrations/github/repos for the per-repo status to flip to imported.
  ///
  /// Parameters:
  ///
  /// * [GithubImportIn] githubImportIn (required):
  Future<GithubImportOut?> postIntegrationsGithubReposImport(GithubImportIn githubImportIn,) async {
    final response = await postIntegrationsGithubReposImportWithHttpInfo(githubImportIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GithubImportOut',) as GithubImportOut;
    
    }
    return null;
  }

  /// Finds repositories on GitHub.
  ///
  /// Finds repositories on GitHub.  This reads the PUBLIC index and returns nothing an installation unlocks: it is how you find a repository to fork, not a way to see inside one. The org's own token is used only so the query is rate-limited against the installation rather than anonymously — the results are the same ones anyone would get.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GithubSearchReq] githubSearchReq (required):
  Future<Response> postIntegrationsGithubSearchWithHttpInfo(GithubSearchReq githubSearchReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/github/search';

    // ignore: prefer_final_locals
    Object? postBody = githubSearchReq;

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

  /// Finds repositories on GitHub.
  ///
  /// Finds repositories on GitHub.  This reads the PUBLIC index and returns nothing an installation unlocks: it is how you find a repository to fork, not a way to see inside one. The org's own token is used only so the query is rate-limited against the installation rather than anonymously — the results are the same ones anyone would get.
  ///
  /// Parameters:
  ///
  /// * [GithubSearchReq] githubSearchReq (required):
  Future<GithubSearchOut?> postIntegrationsGithubSearch(GithubSearchReq githubSearchReq,) async {
    final response = await postIntegrationsGithubSearchWithHttpInfo(githubSearchReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GithubSearchOut',) as GithubSearchOut;
    
    }
    return null;
  }

  /// GitHub App webhook
  ///
  /// The address the GitHub App delivers events to. A push is handed to the repository sync engine, and an issue or issue-comment event is mirrored into the native todo — idempotently, so the same issue re-syncs to one row however many times it is edited, closed or reopened.  It answers a benign 200 for everything it does not act on — the ping, other event types, an unknown installation — deliberately, so GitHub does not enter a retry storm over events that were never going to do anything. Only a bad signature and a genuine sync failure are non-200, and an oversized payload is refused outright.  Two sync rules are worth stating because neither is guessable. EVERY ref syncs, tags as well as branches, because releases are cut by tag and filtering them would stop publishing with nothing reporting a failure. And a delete is NEVER propagated: the native side is canonical, so an inbound delete never removes a native ref.  The payload is verified by HMAC against the webhook secret before it is parsed.  The caller here is the PLATFORM, not a Hanzo tenant, so there is no bearer and no principal. The signature check IS the authentication, and it fails closed. The tenant is never read from the payload either: it is resolved from the verified platform identifier through the connection map, so an event from a workspace nobody connected does nothing. Refusals are written with their own status rather than being flattened to a 500, so a rejected signature reads as 401 and a malformed body as 400.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIntegrationsGithubWebhookWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/github/webhook';

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

  /// GitHub App webhook
  ///
  /// The address the GitHub App delivers events to. A push is handed to the repository sync engine, and an issue or issue-comment event is mirrored into the native todo — idempotently, so the same issue re-syncs to one row however many times it is edited, closed or reopened.  It answers a benign 200 for everything it does not act on — the ping, other event types, an unknown installation — deliberately, so GitHub does not enter a retry storm over events that were never going to do anything. Only a bad signature and a genuine sync failure are non-200, and an oversized payload is refused outright.  Two sync rules are worth stating because neither is guessable. EVERY ref syncs, tags as well as branches, because releases are cut by tag and filtering them would stop publishing with nothing reporting a failure. And a delete is NEVER propagated: the native side is canonical, so an inbound delete never removes a native ref.  The payload is verified by HMAC against the webhook secret before it is parsed.  The caller here is the PLATFORM, not a Hanzo tenant, so there is no bearer and no principal. The signature check IS the authentication, and it fails closed. The tenant is never read from the payload either: it is resolved from the verified platform identifier through the connection map, so an event from a workspace nobody connected does nothing. Refusals are written with their own status rather than being flattened to a 500, so a rejected signature reads as 401 and a malformed body as 400.
  Future<void> postIntegrationsGithubWebhook() async {
    final response = await postIntegrationsGithubWebhookWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Receive OpenRouter Broadcast traces as usage rows
  ///
  /// OpenRouter's spend is invisible to every Hanzo money lens because those lenses read hanzo.cloud_usage and OpenRouter meters keys of its own. Point a Broadcast destination (Settings ▸ Observability ▸ Webhook) at this endpoint and each generation span becomes ONE row in that same ledger with provider `openrouter`, so one query answers what we spend everywhere. Enable the Cost and Identity field categories: cost is the money and identity carries `openrouter.api_key_name`, which is what says WHICH key spent it — it lands in `account` as openrouter/<key name>.  AUTHENTICATION IS A HANZO KEY. Broadcast signs nothing; its only authentication is the destination's Headers map, so send a key as `Authorization: Bearer pk-…` and it is admitted exactly as /v1/event admits a beacon's: a project key resolves through the project that minted it, an IAM-issued key through IAM. That key names the org every row is filed under; it can write and cannot read. No key, or a key that names no org, is 401 and nothing is stored.  The body is OTLP/JSON — `{resourceSpans:[{scopeSpans:[{spans:[…]}]}]}` — exactly as OpenTelemetry defines it; the model, tokens and cost are read from each span's `gen_ai.*` attributes and the key name from `openrouter.api_key_name`. The answer is `{stored, dropped}`: how many generations became rows, and how many spans named no model. Those are OpenRouter's trace and span parents — they carry no cost to meter. An empty payload stores nothing and answers 200, which is what makes Test Connection pass. A warehouse that cannot take the rows answers 503 so the delivery shows red and can be replayed: a row is keyed by its span id, so a redelivery collapses rather than double-counting.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Map<String, Object>] requestBody:
  Future<Response> postIntegrationsOpenrouterWebhookWithHttpInfo({ Map<String, Object>? requestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/openrouter/webhook';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Receive OpenRouter Broadcast traces as usage rows
  ///
  /// OpenRouter's spend is invisible to every Hanzo money lens because those lenses read hanzo.cloud_usage and OpenRouter meters keys of its own. Point a Broadcast destination (Settings ▸ Observability ▸ Webhook) at this endpoint and each generation span becomes ONE row in that same ledger with provider `openrouter`, so one query answers what we spend everywhere. Enable the Cost and Identity field categories: cost is the money and identity carries `openrouter.api_key_name`, which is what says WHICH key spent it — it lands in `account` as openrouter/<key name>.  AUTHENTICATION IS A HANZO KEY. Broadcast signs nothing; its only authentication is the destination's Headers map, so send a key as `Authorization: Bearer pk-…` and it is admitted exactly as /v1/event admits a beacon's: a project key resolves through the project that minted it, an IAM-issued key through IAM. That key names the org every row is filed under; it can write and cannot read. No key, or a key that names no org, is 401 and nothing is stored.  The body is OTLP/JSON — `{resourceSpans:[{scopeSpans:[{spans:[…]}]}]}` — exactly as OpenTelemetry defines it; the model, tokens and cost are read from each span's `gen_ai.*` attributes and the key name from `openrouter.api_key_name`. The answer is `{stored, dropped}`: how many generations became rows, and how many spans named no model. Those are OpenRouter's trace and span parents — they carry no cost to meter. An empty payload stores nothing and answers 200, which is what makes Test Connection pass. A warehouse that cannot take the rows answers 503 so the delivery shows red and can be replayed: a row is keyed by its span id, so a redelivery collapses rather than double-counting.
  ///
  /// Parameters:
  ///
  /// * [Map<String, Object>] requestBody:
  Future<Map<String, Object>?> postIntegrationsOpenrouterWebhook({ Map<String, Object>? requestBody, }) async {
    final response = await postIntegrationsOpenrouterWebhookWithHttpInfo( requestBody: requestBody, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Slack slash command webhook
  ///
  /// The address Slack posts a slash command to, form-encoded. It acknowledges inside Slack's three-second budget and posts the answer afterwards to the command's own response URL, which is why the immediate reply is empty.  The body is verified against the same app signing secret as the events webhook, and a repeat of the same command invocation is absorbed rather than answered twice.  The caller here is the PLATFORM, not a Hanzo tenant, so there is no bearer and no principal. The signature check IS the authentication, and it fails closed. The tenant is never read from the payload either: it is resolved from the verified platform identifier through the connection map, so an event from a workspace nobody connected does nothing. Refusals are written with their own status rather than being flattened to a 500, so a rejected signature reads as 401 and a malformed body as 400.  The answer is acknowledged immediately and the work happens afterwards, because every one of these platforms times out a slow webhook. Duplicate deliveries are absorbed durably, so a platform retry of an event that already ran never runs it a second time or bills for it twice. When the agent pool is full nothing at all is recorded and the delivery is refused as retriable, so the message is re-delivered later rather than being lost or half-processed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIntegrationsSlackCommandsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/slack/commands';

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

  /// Slack slash command webhook
  ///
  /// The address Slack posts a slash command to, form-encoded. It acknowledges inside Slack's three-second budget and posts the answer afterwards to the command's own response URL, which is why the immediate reply is empty.  The body is verified against the same app signing secret as the events webhook, and a repeat of the same command invocation is absorbed rather than answered twice.  The caller here is the PLATFORM, not a Hanzo tenant, so there is no bearer and no principal. The signature check IS the authentication, and it fails closed. The tenant is never read from the payload either: it is resolved from the verified platform identifier through the connection map, so an event from a workspace nobody connected does nothing. Refusals are written with their own status rather than being flattened to a 500, so a rejected signature reads as 401 and a malformed body as 400.  The answer is acknowledged immediately and the work happens afterwards, because every one of these platforms times out a slow webhook. Duplicate deliveries are absorbed durably, so a platform retry of an event that already ran never runs it a second time or bills for it twice. When the agent pool is full nothing at all is recorded and the delivery is refused as retriable, so the message is re-delivered later rather than being lost or half-processed.
  Future<void> postIntegrationsSlackCommands() async {
    final response = await postIntegrationsSlackCommandsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Slack Events API webhook
  ///
  /// The address a Slack app posts workspace events to. It answers Slack's url_verification handshake with the challenge, and routes an @mention or a direct message to an agent turn that replies in the same thread. The turn holds the product's own tools, so a request to change code starts a sandbox run because the model chose to — there is no prefix and no second path.  The raw body and its timestamp are verified against the app's signing secret before anything is read from them. Hanzo's own bot messages are dropped, so a reply cannot trigger another reply.  The caller here is the PLATFORM, not a Hanzo tenant, so there is no bearer and no principal. The signature check IS the authentication, and it fails closed. The tenant is never read from the payload either: it is resolved from the verified platform identifier through the connection map, so an event from a workspace nobody connected does nothing. Refusals are written with their own status rather than being flattened to a 500, so a rejected signature reads as 401 and a malformed body as 400.  The answer is acknowledged immediately and the work happens afterwards, because every one of these platforms times out a slow webhook. Duplicate deliveries are absorbed durably, so a platform retry of an event that already ran never runs it a second time or bills for it twice. When the agent pool is full nothing at all is recorded and the delivery is refused as retriable, so the message is re-delivered later rather than being lost or half-processed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIntegrationsSlackEventsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/slack/events';

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

  /// Slack Events API webhook
  ///
  /// The address a Slack app posts workspace events to. It answers Slack's url_verification handshake with the challenge, and routes an @mention or a direct message to an agent turn that replies in the same thread. The turn holds the product's own tools, so a request to change code starts a sandbox run because the model chose to — there is no prefix and no second path.  The raw body and its timestamp are verified against the app's signing secret before anything is read from them. Hanzo's own bot messages are dropped, so a reply cannot trigger another reply.  The caller here is the PLATFORM, not a Hanzo tenant, so there is no bearer and no principal. The signature check IS the authentication, and it fails closed. The tenant is never read from the payload either: it is resolved from the verified platform identifier through the connection map, so an event from a workspace nobody connected does nothing. Refusals are written with their own status rather than being flattened to a 500, so a rejected signature reads as 401 and a malformed body as 400.  The answer is acknowledged immediately and the work happens afterwards, because every one of these platforms times out a slow webhook. Duplicate deliveries are absorbed durably, so a platform retry of an event that already ran never runs it a second time or bills for it twice. When the agent pool is full nothing at all is recorded and the delivery is refused as retriable, so the message is re-delivered later rather than being lost or half-processed.
  Future<void> postIntegrationsSlackEvents() async {
    final response = await postIntegrationsSlackEventsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Microsoft Teams Bot Framework webhook
  ///
  /// The messaging endpoint for the Teams bot. A message activity is routed to an agent turn and answered proactively through the Bot Connection; anything that is not a message with text is acknowledged and ignored.  Authentication is the Bot Framework's RS256 JWT, verified against its published keys and bound BOTH to this deployment's app id and to the activity's own service URL. The service-URL binding is the part that matters: without it a token valid for one activity could point the outbound reply somewhere else.  The caller here is the PLATFORM, not a Hanzo tenant, so there is no bearer and no principal. The signature check IS the authentication, and it fails closed. The tenant is never read from the payload either: it is resolved from the verified platform identifier through the connection map, so an event from a workspace nobody connected does nothing. Refusals are written with their own status rather than being flattened to a 500, so a rejected signature reads as 401 and a malformed body as 400.  The answer is acknowledged immediately and the work happens afterwards, because every one of these platforms times out a slow webhook. Duplicate deliveries are absorbed durably, so a platform retry of an event that already ran never runs it a second time or bills for it twice. When the agent pool is full nothing at all is recorded and the delivery is refused as retriable, so the message is re-delivered later rather than being lost or half-processed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIntegrationsTeamsEventsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/teams/events';

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

  /// Microsoft Teams Bot Framework webhook
  ///
  /// The messaging endpoint for the Teams bot. A message activity is routed to an agent turn and answered proactively through the Bot Connection; anything that is not a message with text is acknowledged and ignored.  Authentication is the Bot Framework's RS256 JWT, verified against its published keys and bound BOTH to this deployment's app id and to the activity's own service URL. The service-URL binding is the part that matters: without it a token valid for one activity could point the outbound reply somewhere else.  The caller here is the PLATFORM, not a Hanzo tenant, so there is no bearer and no principal. The signature check IS the authentication, and it fails closed. The tenant is never read from the payload either: it is resolved from the verified platform identifier through the connection map, so an event from a workspace nobody connected does nothing. Refusals are written with their own status rather than being flattened to a 500, so a rejected signature reads as 401 and a malformed body as 400.  The answer is acknowledged immediately and the work happens afterwards, because every one of these platforms times out a slow webhook. Duplicate deliveries are absorbed durably, so a platform retry of an event that already ran never runs it a second time or bills for it twice. When the agent pool is full nothing at all is recorded and the delivery is refused as retriable, so the message is re-delivered later rather than being lost or half-processed.
  Future<void> postIntegrationsTeamsEvents() async {
    final response = await postIntegrationsTeamsEventsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Mints a short, single-use deep-link code bound to the caller's org and returns the t.me link the console navigates to.
  ///
  /// Mints a short, single-use deep-link code bound to the caller's org and returns the t.me link the console navigates to. Org-authed: a caller with no validated principal is 403 (same gate as the framework connect). The code is stored as an oauth_nonce (org,telegram); the webhook's /start handler claims it to bind chat→org. It is short (128-bit hex) so it fits Telegram's 64-char `start` payload limit.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIntegrationsTelegramConnectWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/telegram/connect';

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

  /// Mints a short, single-use deep-link code bound to the caller's org and returns the t.me link the console navigates to.
  ///
  /// Mints a short, single-use deep-link code bound to the caller's org and returns the t.me link the console navigates to. Org-authed: a caller with no validated principal is 403 (same gate as the framework connect). The code is stored as an oauth_nonce (org,telegram); the webhook's /start handler claims it to bind chat→org. It is short (128-bit hex) so it fits Telegram's 64-char `start` payload limit.
  Future<AuthorizeOut?> postIntegrationsTelegramConnect() async {
    final response = await postIntegrationsTelegramConnectWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthorizeOut',) as AuthorizeOut;
    
    }
    return null;
  }

  /// Telegram Bot API webhook
  ///
  /// The update webhook for the Telegram bot. It does two jobs: `/start <code>` or `/connect <code>` binds the chat it was sent from to an org, idempotently; anything else is treated as a possible agent trigger.  What counts as a trigger differs by chat type, and it is easy to get wrong: in a private chat every message is a trigger, while in a group the message must mention the bot or use the `/hanzo` command. Non-triggers and non-message updates are acknowledged and dropped.  Authentication is the secret token Telegram echoes on every update, compared in constant time. A message in a chat that has never been bound is dropped, which is why the bind command exists.  The caller here is the PLATFORM, not a Hanzo tenant, so there is no bearer and no principal. The signature check IS the authentication, and it fails closed. The tenant is never read from the payload either: it is resolved from the verified platform identifier through the connection map, so an event from a workspace nobody connected does nothing. Refusals are written with their own status rather than being flattened to a 500, so a rejected signature reads as 401 and a malformed body as 400.  The answer is acknowledged immediately and the work happens afterwards, because every one of these platforms times out a slow webhook. Duplicate deliveries are absorbed durably, so a platform retry of an event that already ran never runs it a second time or bills for it twice. When the agent pool is full nothing at all is recorded and the delivery is refused as retriable, so the message is re-delivered later rather than being lost or half-processed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postIntegrationsTelegramWebhookWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/telegram/webhook';

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

  /// Telegram Bot API webhook
  ///
  /// The update webhook for the Telegram bot. It does two jobs: `/start <code>` or `/connect <code>` binds the chat it was sent from to an org, idempotently; anything else is treated as a possible agent trigger.  What counts as a trigger differs by chat type, and it is easy to get wrong: in a private chat every message is a trigger, while in a group the message must mention the bot or use the `/hanzo` command. Non-triggers and non-message updates are acknowledged and dropped.  Authentication is the secret token Telegram echoes on every update, compared in constant time. A message in a chat that has never been bound is dropped, which is why the bind command exists.  The caller here is the PLATFORM, not a Hanzo tenant, so there is no bearer and no principal. The signature check IS the authentication, and it fails closed. The tenant is never read from the payload either: it is resolved from the verified platform identifier through the connection map, so an event from a workspace nobody connected does nothing. Refusals are written with their own status rather than being flattened to a 500, so a rejected signature reads as 401 and a malformed body as 400.  The answer is acknowledged immediately and the work happens afterwards, because every one of these platforms times out a slow webhook. Duplicate deliveries are absorbed durably, so a platform retry of an event that already ran never runs it a second time or bills for it twice. When the agent pool is full nothing at all is recorded and the delivery is refused as retriable, so the message is re-delivered later rather than being lost or half-processed.
  Future<void> postIntegrationsTelegramWebhook() async {
    final response = await postIntegrationsTelegramWebhookWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Sets or clears the custom domain (cname) and updates HTTPS enforcement, build type, or source.
  ///
  /// Sets or clears the custom domain (cname) and updates HTTPS enforcement, build type, or source. ONLY the provided fields are sent to GitHub, so an update never resets a setting the caller did not mention.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] repo (required):
  ///   Repo is the repository, from the :repo path segment.
  ///
  /// * [GithubPagesUpdateReq] githubPagesUpdateReq (required):
  Future<Response> putIntegrationsGithubReposByRepoPagesWithHttpInfo(String repo, GithubPagesUpdateReq githubPagesUpdateReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/integrations/github/repos/{repo}/pages'
      .replaceAll('{repo}', repo);

    // ignore: prefer_final_locals
    Object? postBody = githubPagesUpdateReq;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Sets or clears the custom domain (cname) and updates HTTPS enforcement, build type, or source.
  ///
  /// Sets or clears the custom domain (cname) and updates HTTPS enforcement, build type, or source. ONLY the provided fields are sent to GitHub, so an update never resets a setting the caller did not mention.
  ///
  /// Parameters:
  ///
  /// * [String] repo (required):
  ///   Repo is the repository, from the :repo path segment.
  ///
  /// * [GithubPagesUpdateReq] githubPagesUpdateReq (required):
  Future<GithubPagesUpdatedOut?> putIntegrationsGithubReposByRepoPages(String repo, GithubPagesUpdateReq githubPagesUpdateReq,) async {
    final response = await putIntegrationsGithubReposByRepoPagesWithHttpInfo(repo, githubPagesUpdateReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GithubPagesUpdatedOut',) as GithubPagesUpdatedOut;
    
    }
    return null;
  }
}
