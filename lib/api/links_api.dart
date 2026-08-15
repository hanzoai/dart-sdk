//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class LinksApi {
  LinksApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Logs out one account and stops the sessions it was running.
  ///
  /// Logs out one account and stops the sessions it was running.  It revokes a single linked account and stops the agent sessions that ran under it, answering with the revoked row and how many sessions stopped. The link is RETAINED with a revoked status rather than deleted, so its usage history and the audit trail survive the log-out — which also means a revoked account still appears in the list, and is excluded from the route plan rather than absent from it. The session stop is narrowed to the revoking user's own sessions on that device, provider and account, and a stop that fails does not fail the revoke: the revoked row is the durable truth. An id that does not exist, or belongs to another user or org, is the same 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the link to act on, from the path. It is scoped to the caller, so another user's or org's id is a 404.
  Future<Response> deleteLinksByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/links/{id}'
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

  /// Logs out one account and stops the sessions it was running.
  ///
  /// Logs out one account and stops the sessions it was running.  It revokes a single linked account and stops the agent sessions that ran under it, answering with the revoked row and how many sessions stopped. The link is RETAINED with a revoked status rather than deleted, so its usage history and the audit trail survive the log-out — which also means a revoked account still appears in the list, and is excluded from the route plan rather than absent from it. The session stop is narrowed to the revoking user's own sessions on that device, provider and account, and a stop that fails does not fail the revoke: the revoked row is the durable truth. An id that does not exist, or belongs to another user or org, is the same 404.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the link to act on, from the path. It is scoped to the caller, so another user's or org's id is a 404.
  Future<RevokeResp?> deleteLinksById(String id,) async {
    final response = await deleteLinksByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RevokeResp',) as RevokeResp;
    
    }
    return null;
  }

  /// Lists your linked accounts and the devices they sit on.
  ///
  /// Lists your linked accounts and the devices they sit on.  It answers the caller's own links plus a devices projection of the same rows folded per machine — the cross-machine \"AI Providers / Accounts\" view. A device is a projection, not a stored entity: its labels come from its most-recently-seen account, so there is no device to create and none to garbage-collect. Revoked links are INCLUDED rather than dropped, because a logged-out account keeps its usage history and audit trail. Scoped to the caller: a validated principal and a non-empty org, else 403.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getLinksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/links';

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

  /// Lists your linked accounts and the devices they sit on.
  ///
  /// Lists your linked accounts and the devices they sit on.  It answers the caller's own links plus a devices projection of the same rows folded per machine — the cross-machine \"AI Providers / Accounts\" view. A device is a projection, not a stored entity: its labels come from its most-recently-seen account, so there is no device to create and none to garbage-collect. Revoked links are INCLUDED rather than dropped, because a logged-out account keeps its usage history and audit trail. Scoped to the caller: a validated principal and a non-empty org, else 403.
  Future<LinkList?> getLinks() async {
    final response = await getLinksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LinkList',) as LinkList;
    
    }
    return null;
  }

  /// Reads one linked account.
  ///
  /// Reads one linked account.  It answers a single link — its device, provider, account, plan, how it bills, its status and its latest usage snapshot. An id that does not exist, or belongs to another user or org, is the same 404: the scope is a bound predicate on the read, so a wrong id and a foreign id are indistinguishable and neither confirms the other's existence. The static paths on this collection — route, usage, devices — register before this one and win first-match, so a link whose id collided with one of those words could not be addressed here.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the link to act on, from the path. It is scoped to the caller, so another user's or org's id is a 404.
  Future<Response> getLinksByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/links/{id}'
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

  /// Reads one linked account.
  ///
  /// Reads one linked account.  It answers a single link — its device, provider, account, plan, how it bills, its status and its latest usage snapshot. An id that does not exist, or belongs to another user or org, is the same 404: the scope is a bound predicate on the read, so a wrong id and a foreign id are indistinguishable and neither confirms the other's existence. The static paths on this collection — route, usage, devices — register before this one and win first-match, so a link whose id collided with one of those words could not be addressed here.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the link to act on, from the path. It is scoped to the caller, so another user's or org's id is a 404.
  Future<LinkView?> getLinksById(String id,) async {
    final response = await getLinksByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LinkView',) as LinkView;
    
    }
    return null;
  }

  /// Shows one machine: its accounts, usage and live sessions.
  ///
  /// Shows one machine: its accounts, usage and live sessions.  It answers one device — its host and OS labels, every account the caller has signed in on that machine with its latest usage, and how many agent sessions the caller currently has running on it. The device labels come from the most-recently-seen account, since a device is a projection of its links rather than a row of its own. A machine with none of the caller's accounts is 404, which is also the answer when the machine belongs to someone else — the scope makes the two indistinguishable, deliberately. The session count reports 0 where the agent plane is not mounted rather than failing the read.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] machine (required):
  ///   Machine is the machine to act on, from the path. It is scoped to the caller, so a machine with none of the caller's accounts is a 404.
  Future<Response> getLinksDevicesByMachineWithHttpInfo(String machine,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/links/devices/{machine}'
      .replaceAll('{machine}', machine);

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

  /// Shows one machine: its accounts, usage and live sessions.
  ///
  /// Shows one machine: its accounts, usage and live sessions.  It answers one device — its host and OS labels, every account the caller has signed in on that machine with its latest usage, and how many agent sessions the caller currently has running on it. The device labels come from the most-recently-seen account, since a device is a projection of its links rather than a row of its own. A machine with none of the caller's accounts is 404, which is also the answer when the machine belongs to someone else — the scope makes the two indistinguishable, deliberately. The session count reports 0 where the agent plane is not mounted rather than failing the read.
  ///
  /// Parameters:
  ///
  /// * [String] machine (required):
  ///   Machine is the machine to act on, from the path. It is scoped to the caller, so a machine with none of the caller's accounts is a 404.
  Future<DeviceView?> getLinksDevicesByMachine(String machine,) async {
    final response = await getLinksDevicesByMachineWithHttpInfo(machine,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeviceView',) as DeviceView;
    
    }
    return null;
  }

  /// Gets the failover order across your linked accounts.
  ///
  /// Gets the failover order across your linked accounts.  It answers an ordered redundancy plan over the caller's LINKED (not revoked) accounts: each candidate with its remaining rate-limit headroom, whether it is routable right now, how it BILLS (plan or commerce), and a reason when it is not — plus the primary to try first. It is what lets a router fail over from one subscription to another and fall back to the metered API as the always-available backstop, knowing the cost consequence before it dials.  It is POLICY, not execution: the plan is computed purely from the usage snapshots already in the registry, never by probing a provider, so it is a total function of the links and costs nothing to ask for. Actually dialing, detecting a live 429 and advancing to the next candidate belongs to the caller. A link with no snapshot counts as full headroom.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getLinksRouteWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/links/route';

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

  /// Gets the failover order across your linked accounts.
  ///
  /// Gets the failover order across your linked accounts.  It answers an ordered redundancy plan over the caller's LINKED (not revoked) accounts: each candidate with its remaining rate-limit headroom, whether it is routable right now, how it BILLS (plan or commerce), and a reason when it is not — plus the primary to try first. It is what lets a router fail over from one subscription to another and fall back to the metered API as the always-available backstop, knowing the cost consequence before it dials.  It is POLICY, not execution: the plan is computed purely from the usage snapshots already in the registry, never by probing a provider, so it is a total function of the links and costs nothing to ask for. Actually dialing, detecting a live 429 and advancing to the next candidate belongs to the caller. A link with no snapshot counts as full headroom.
  Future<RoutePlan?> getLinksRoute() async {
    final response = await getLinksRouteWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RoutePlan',) as RoutePlan;
    
    }
    return null;
  }

  /// Shows one provider account's own usage dashboard.
  ///
  /// Shows one provider account's own usage dashboard.  It answers the time series for a SINGLE provider account — the windows in range plus the currently-open ones — as that provider's own meter reported it: \"my plan is 47% through its 6h window, resets at 14:20\". current is the newest instance of each lane (the headline); windows is the history behind it, both computed from ONE deduped read. provider is required; an unknown window class or range is 400, never a quiet fallback to a different one. When no series is available the response is a 200 with available:false and empty lists — an honest \"we have no data\", which is a different claim from zero usage.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider:
  ///   Provider is the provider whose meter to read. Required.
  ///
  /// * [String] account:
  ///   Account narrows to one account when a user has several with the provider.
  ///
  /// * [String] window:
  ///   Window selects a window class: 6h, day, week or month. Empty reads all.
  ///
  /// * [String] range:
  ///   Range is the period, one of 1h, 24h, 7d or 30d; empty means 24h, and an unknown label is 400, never a quiet fallback.
  Future<Response> getLinksUsageWithHttpInfo({ String? provider, String? account, String? window, String? range, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/links/usage';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (provider != null) {
      queryParams.addAll(_queryParams('', 'provider', provider));
    }
    if (account != null) {
      queryParams.addAll(_queryParams('', 'account', account));
    }
    if (window != null) {
      queryParams.addAll(_queryParams('', 'window', window));
    }
    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
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

  /// Shows one provider account's own usage dashboard.
  ///
  /// Shows one provider account's own usage dashboard.  It answers the time series for a SINGLE provider account — the windows in range plus the currently-open ones — as that provider's own meter reported it: \"my plan is 47% through its 6h window, resets at 14:20\". current is the newest instance of each lane (the headline); windows is the history behind it, both computed from ONE deduped read. provider is required; an unknown window class or range is 400, never a quiet fallback to a different one. When no series is available the response is a 200 with available:false and empty lists — an honest \"we have no data\", which is a different claim from zero usage.
  ///
  /// Parameters:
  ///
  /// * [String] provider:
  ///   Provider is the provider whose meter to read. Required.
  ///
  /// * [String] account:
  ///   Account narrows to one account when a user has several with the provider.
  ///
  /// * [String] window:
  ///   Window selects a window class: 6h, day, week or month. Empty reads all.
  ///
  /// * [String] range:
  ///   Range is the period, one of 1h, 24h, 7d or 30d; empty means 24h, and an unknown label is 400, never a quiet fallback.
  Future<BoardResp?> getLinksUsage({ String? provider, String? account, String? window, String? range, }) async {
    final response = await getLinksUsageWithHttpInfo( provider: provider, account: account, window: window, range: range, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BoardResp',) as BoardResp;
    
    }
    return null;
  }

  /// Breaks down what the gateway routed through each of your accounts.
  ///
  /// Breaks down what the gateway routed through each of your accounts.  It answers one row per linked account the GATEWAY actually routed through, plus their total — requests, prompt and completion tokens, and cost. This is the routed ledger, the read twin of the counter the router writes, and it is distinct from both of its neighbours: not the device collector's plan snapshots, and not the org money ledger. The source and scope fields on the response say so on every payload. The same shape answers in the billing namespace, from one shaping function, so the two mounts cannot drift.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getLinksUsageAccountsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/links/usage/accounts';

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

  /// Breaks down what the gateway routed through each of your accounts.
  ///
  /// Breaks down what the gateway routed through each of your accounts.  It answers one row per linked account the GATEWAY actually routed through, plus their total — requests, prompt and completion tokens, and cost. This is the routed ledger, the read twin of the counter the router writes, and it is distinct from both of its neighbours: not the device collector's plan snapshots, and not the org money ledger. The source and scope fields on the response say so on every payload. The same shape answers in the billing namespace, from one shaping function, so the two mounts cannot drift.
  Future<AccountsUsage?> getLinksUsageAccounts() async {
    final response = await getLinksUsageAccountsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountsUsage',) as AccountsUsage;
    
    }
    return null;
  }

  /// Shows plan consumption and Hanzo spend side by side.
  ///
  /// Shows plan consumption and Hanzo spend side by side.  It answers the global usage board over one window: the caller's own linked accounts, metered from each provider's own login, alongside their org's Hanzo-routed inference. These come from different ledgers and mean different things, so every row is LABELLED by source, by scope and by availability, and THE TWO ARE NEVER SUMMED — a plan's percentage is not money, and a provider's own spend is not a Hanzo charge. The rows sit side by side and say what they are.  One resolver fixes the window for both halves, so the two sets always cover the same period. range is one of 1h, 24h, 7d or 30d and defaults to 24h; anything else is 400 rather than a silent substitution. A ledger that cannot answer reports available:false instead of a zero that would read as \"no usage\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is the period, one of 1h, 24h, 7d or 30d; empty means 24h, and an unknown label is 400, never a silent substitution.
  Future<Response> getLinksUsageSummaryWithHttpInfo({ String? range, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/links/usage/summary';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
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

  /// Shows plan consumption and Hanzo spend side by side.
  ///
  /// Shows plan consumption and Hanzo spend side by side.  It answers the global usage board over one window: the caller's own linked accounts, metered from each provider's own login, alongside their org's Hanzo-routed inference. These come from different ledgers and mean different things, so every row is LABELLED by source, by scope and by availability, and THE TWO ARE NEVER SUMMED — a plan's percentage is not money, and a provider's own spend is not a Hanzo charge. The rows sit side by side and say what they are.  One resolver fixes the window for both halves, so the two sets always cover the same period. range is one of 1h, 24h, 7d or 30d and defaults to 24h; anything else is 400 rather than a silent substitution. A ledger that cannot answer reports available:false instead of a zero that would read as \"no usage\".
  ///
  /// Parameters:
  ///
  /// * [String] range:
  ///   Range is the period, one of 1h, 24h, 7d or 30d; empty means 24h, and an unknown label is 400, never a silent substitution.
  Future<SummaryResp?> getLinksUsageSummary({ String? range, }) async {
    final response = await getLinksUsageSummaryWithHttpInfo( range: range, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SummaryResp',) as SummaryResp;
    
    }
    return null;
  }

  /// Registers a signed-in AI provider account on a machine.
  ///
  /// Registers a signed-in AI provider account on a machine.  It records that a developer has signed into one provider account on one machine — a Claude Max or ChatGPT Plus subscription, a Hanzo key, a raw provider key — and answers 201 with the stored link. Re-reporting the same (machine, provider, account) UPDATES that link rather than creating a second, so a collector may call this on every heartbeat. machine and provider are required (400 otherwise), as is a valid kind, and every field is length-bounded. Scoped to the caller: a validated principal and a non-empty org, else 403, so a caller writes only their OWN accounts within their own org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EnrollReq] enrollReq (required):
  Future<Response> postLinksWithHttpInfo(EnrollReq enrollReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/links';

    // ignore: prefer_final_locals
    Object? postBody = enrollReq;

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

  /// Registers a signed-in AI provider account on a machine.
  ///
  /// Registers a signed-in AI provider account on a machine.  It records that a developer has signed into one provider account on one machine — a Claude Max or ChatGPT Plus subscription, a Hanzo key, a raw provider key — and answers 201 with the stored link. Re-reporting the same (machine, provider, account) UPDATES that link rather than creating a second, so a collector may call this on every heartbeat. machine and provider are required (400 otherwise), as is a valid kind, and every field is length-bounded. Scoped to the caller: a validated principal and a non-empty org, else 403, so a caller writes only their OWN accounts within their own org.
  ///
  /// Parameters:
  ///
  /// * [EnrollReq] enrollReq (required):
  Future<LinkView?> postLinks(EnrollReq enrollReq,) async {
    final response = await postLinksWithHttpInfo(enrollReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LinkView',) as LinkView;
    
    }
    return null;
  }

  /// Logs out every account on one machine and stops its sessions.
  ///
  /// Logs out every account on one machine and stops its sessions.  It revokes every one of the caller's accounts on one machine and stops the agent sessions they were running, answering with how many of each. This is the \"I lost that laptop\" button. Revoked links are RETAINED, not deleted, so usage history and the audit trail survive a log-out — the rows come back in the response with their new status. The session stop reaches only the REVOKING user's own sessions, so a shared machine name can never be used to stop a co-tenant's work, and a stop that fails does not fail the revoke: the revoked row is the durable truth and the count then honestly reports fewer. A machine with nothing left to revoke is 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] machine (required):
  ///   Machine is the machine to act on, from the path. It is scoped to the caller, so a machine with none of the caller's accounts is a 404.
  Future<Response> postLinksDevicesByMachineRevokeWithHttpInfo(String machine,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/links/devices/{machine}/revoke'
      .replaceAll('{machine}', machine);

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

  /// Logs out every account on one machine and stops its sessions.
  ///
  /// Logs out every account on one machine and stops its sessions.  It revokes every one of the caller's accounts on one machine and stops the agent sessions they were running, answering with how many of each. This is the \"I lost that laptop\" button. Revoked links are RETAINED, not deleted, so usage history and the audit trail survive a log-out — the rows come back in the response with their new status. The session stop reaches only the REVOKING user's own sessions, so a shared machine name can never be used to stop a co-tenant's work, and a stop that fails does not fail the revoke: the revoked row is the durable truth and the count then honestly reports fewer. A machine with nothing left to revoke is 404.
  ///
  /// Parameters:
  ///
  /// * [String] machine (required):
  ///   Machine is the machine to act on, from the path. It is scoped to the caller, so a machine with none of the caller's accounts is a 404.
  Future<RevokeResp?> postLinksDevicesByMachineRevoke(String machine,) async {
    final response = await postLinksDevicesByMachineRevokeWithHttpInfo(machine,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RevokeResp',) as RevokeResp;
    
    }
    return null;
  }

  /// Reports usage samples from the device collector.
  ///
  /// Reports usage samples from the device collector.  It ingests a batch of usage samples and answers with how many were accepted, whether history was durably stored, and the links they refreshed. A report also REFRESHES one link per distinct (machine, provider, account) it names, so a running collector keeps the accounts overview current without a separate registration call.  A caller can only ever report for THEMSELVES: org and subject come from the validated bearer, never from the body, so no sample can be attributed to another user or tenant. History is FAIL-SOFT and stored says which happened — a warehouse outage still accepts the report and refreshes the links rather than failing the device, and answers 202 either way. Send either one sample inline or up to 256 in samples; an empty batch or an over-long one is 400, as is a provider, window class or kind outside the closed vocabulary — an unrecognized window is refused rather than rewritten, because a silently reclassified sample would fill a dashboard with a class nobody reported.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IngestReq] ingestReq (required):
  Future<Response> postLinksUsageWithHttpInfo(IngestReq ingestReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/links/usage';

    // ignore: prefer_final_locals
    Object? postBody = ingestReq;

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

  /// Reports usage samples from the device collector.
  ///
  /// Reports usage samples from the device collector.  It ingests a batch of usage samples and answers with how many were accepted, whether history was durably stored, and the links they refreshed. A report also REFRESHES one link per distinct (machine, provider, account) it names, so a running collector keeps the accounts overview current without a separate registration call.  A caller can only ever report for THEMSELVES: org and subject come from the validated bearer, never from the body, so no sample can be attributed to another user or tenant. History is FAIL-SOFT and stored says which happened — a warehouse outage still accepts the report and refreshes the links rather than failing the device, and answers 202 either way. Send either one sample inline or up to 256 in samples; an empty batch or an over-long one is 400, as is a provider, window class or kind outside the closed vocabulary — an unrecognized window is refused rather than rewritten, because a silently reclassified sample would fill a dashboard with a class nobody reported.
  ///
  /// Parameters:
  ///
  /// * [IngestReq] ingestReq (required):
  Future<IngestResp?> postLinksUsage(IngestReq ingestReq,) async {
    final response = await postLinksUsageWithHttpInfo(ingestReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IngestResp',) as IngestResp;
    
    }
    return null;
  }
}
