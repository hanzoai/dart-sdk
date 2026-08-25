//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class O11yApi {
  O11yApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Is the deployed agent's check-in — the path consistent with the account surface, reporting the agent's account and telemetry state so the connection can be tracked.
  ///
  /// Is the deployed agent's check-in — the path consistent with the account surface, reporting the agent's account and telemetry state so the connection can be tracked. Viewer gate — the agent's role is viewer.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [O11yO11yAgentCheckInIn] o11yO11yAgentCheckInIn (required):
  Future<Response> agentCheckInWithHttpInfo(String cloudProvider, O11yO11yAgentCheckInIn o11yO11yAgentCheckInIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/cloud_integrations/{cloud_provider}/accounts/check_in'
      .replaceAll('{cloud_provider}', cloudProvider);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yAgentCheckInIn;

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

  /// Is the deployed agent's check-in — the path consistent with the account surface, reporting the agent's account and telemetry state so the connection can be tracked.
  ///
  /// Is the deployed agent's check-in — the path consistent with the account surface, reporting the agent's account and telemetry state so the connection can be tracked. Viewer gate — the agent's role is viewer.
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [O11yO11yAgentCheckInIn] o11yO11yAgentCheckInIn (required):
  Future<O11yO11yAgentCheckInOut?> agentCheckIn(String cloudProvider, O11yO11yAgentCheckInIn o11yO11yAgentCheckInIn,) async {
    final response = await agentCheckInWithHttpInfo(cloudProvider, o11yO11yAgentCheckInIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yAgentCheckInOut',) as O11yO11yAgentCheckInOut;
    
    }
    return null;
  }

  /// Is the deployed agent's check-in on its original hyphenated path, kept for backward compatibility with agents already running.
  ///
  /// Is the deployed agent's check-in on its original hyphenated path, kept for backward compatibility with agents already running. Viewer gate — the agent's role is viewer.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [O11yO11yAgentCheckInIn] o11yO11yAgentCheckInIn (required):
  Future<Response> agentCheckInDeprecatedWithHttpInfo(String cloudProvider, O11yO11yAgentCheckInIn o11yO11yAgentCheckInIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/cloud-integrations/{cloud_provider}/agent-check-in'
      .replaceAll('{cloud_provider}', cloudProvider);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yAgentCheckInIn;

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

  /// Is the deployed agent's check-in on its original hyphenated path, kept for backward compatibility with agents already running.
  ///
  /// Is the deployed agent's check-in on its original hyphenated path, kept for backward compatibility with agents already running. Viewer gate — the agent's role is viewer.
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [O11yO11yAgentCheckInIn] o11yO11yAgentCheckInIn (required):
  Future<O11yO11yAgentCheckInOut?> agentCheckInDeprecated(String cloudProvider, O11yO11yAgentCheckInIn o11yO11yAgentCheckInIn,) async {
    final response = await agentCheckInDeprecatedWithHttpInfo(cloudProvider, o11yO11yAgentCheckInIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yAgentCheckInOut',) as O11yO11yAgentCheckInOut;
    
    }
    return null;
  }

  /// Evaluates a batch of transactions — relation plus object — for the authenticated caller and answers each with its authorization verdict, in the order they were asked.
  ///
  /// Evaluates a batch of transactions — relation plus object — for the authenticated caller and answers each with its authorization verdict, in the order they were asked. It is the read a UI uses to decide which controls to show.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<O11yO11yTransaction>] o11yO11yTransaction (required):
  Future<Response> authzCheckWithHttpInfo(List<O11yO11yTransaction> o11yO11yTransaction,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/authz/check';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yTransaction;

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

  /// Evaluates a batch of transactions — relation plus object — for the authenticated caller and answers each with its authorization verdict, in the order they were asked.
  ///
  /// Evaluates a batch of transactions — relation plus object — for the authenticated caller and answers each with its authorization verdict, in the order they were asked. It is the read a UI uses to decide which controls to show.
  ///
  /// Parameters:
  ///
  /// * [List<O11yO11yTransaction>] o11yO11yTransaction (required):
  Future<O11yO11yCheckOut?> authzCheck(List<O11yO11yTransaction> o11yO11yTransaction,) async {
    final response = await authzCheckWithHttpInfo(o11yO11yTransaction,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yCheckOut',) as O11yO11yCheckOut;
    
    }
    return null;
  }

  /// Clones an existing v2-shape dashboard.
  ///
  /// Clones an existing v2-shape dashboard. User and integration dashboards can be cloned; system dashboards are rejected. The clone keeps the source's display name, panels and tags, but gets a freshly generated unique internal name and is always created as an unlocked user dashboard owned by the caller.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<Response> cloneDashboardV2WithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/dashboards/{id}/clone'
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

  /// Clones an existing v2-shape dashboard.
  ///
  /// Clones an existing v2-shape dashboard. User and integration dashboards can be cloned; system dashboards are rejected. The clone keeps the source's display name, panels and tags, but gets a freshly generated unique internal name and is always created as an unlocked user dashboard owned by the caller.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<O11yO11yDashboardOut?> cloneDashboardV2(String id,) async {
    final response = await cloneDashboardV2WithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDashboardOut',) as O11yO11yDashboardOut;
    
    }
    return null;
  }

  /// Connects a new cloud-integration account for the given provider from its posted config and credentials, answering with the account and the artifact the agent deploys to complete the connection.
  ///
  /// Connects a new cloud-integration account for the given provider from its posted config and credentials, answering with the account and the artifact the agent deploys to complete the connection. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [O11yO11yCreateAccountIn] o11yO11yCreateAccountIn (required):
  Future<Response> createAccountWithHttpInfo(String cloudProvider, O11yO11yCreateAccountIn o11yO11yCreateAccountIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/cloud_integrations/{cloud_provider}/accounts'
      .replaceAll('{cloud_provider}', cloudProvider);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yCreateAccountIn;

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

  /// Connects a new cloud-integration account for the given provider from its posted config and credentials, answering with the account and the artifact the agent deploys to complete the connection.
  ///
  /// Connects a new cloud-integration account for the given provider from its posted config and credentials, answering with the account and the artifact the agent deploys to complete the connection. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [O11yO11yCreateAccountIn] o11yO11yCreateAccountIn (required):
  Future<O11yO11yCreateAccountOut?> createAccount(String cloudProvider, O11yO11yCreateAccountIn o11yO11yCreateAccountIn,) async {
    final response = await createAccountWithHttpInfo(cloudProvider, o11yO11yCreateAccountIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yCreateAccountOut',) as O11yO11yCreateAccountOut;
    
    }
    return null;
  }

  /// Claims an email domain for the org and configures how its users sign in; the answer is the new domain's id.
  ///
  /// Claims an email domain for the org and configures how its users sign in; the answer is the new domain's id. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yPostableAuthDomain] o11yO11yPostableAuthDomain (required):
  Future<Response> createAuthDomainWithHttpInfo(O11yO11yPostableAuthDomain o11yO11yPostableAuthDomain,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/domains';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yPostableAuthDomain;

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

  /// Claims an email domain for the org and configures how its users sign in; the answer is the new domain's id.
  ///
  /// Claims an email domain for the org and configures how its users sign in; the answer is the new domain's id. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yPostableAuthDomain] o11yO11yPostableAuthDomain (required):
  Future<O11yO11yCreatedOut?> createAuthDomain(O11yO11yPostableAuthDomain o11yO11yPostableAuthDomain,) async {
    final response = await createAuthDomainWithHttpInfo(o11yO11yPostableAuthDomain,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yCreatedOut',) as O11yO11yCreatedOut;
    
    }
    return null;
  }

  /// Invites several people to the caller's org in one call, refusing the whole batch when any email repeats.
  ///
  /// Invites several people to the caller's org in one call, refusing the whole batch when any email repeats. Deprecated alongside createInvite. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yBulkInviteIn] o11yO11yBulkInviteIn (required):
  Future<Response> createBulkInviteWithHttpInfo(O11yO11yBulkInviteIn o11yO11yBulkInviteIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/invite/bulk';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yBulkInviteIn;

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

  /// Invites several people to the caller's org in one call, refusing the whole batch when any email repeats.
  ///
  /// Invites several people to the caller's org in one call, refusing the whole batch when any email repeats. Deprecated alongside createInvite. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yBulkInviteIn] o11yO11yBulkInviteIn (required):
  Future<O11yO11yAck?> createBulkInvite(O11yO11yBulkInviteIn o11yO11yBulkInviteIn,) async {
    final response = await createBulkInviteWithHttpInfo(o11yO11yBulkInviteIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yAck',) as O11yO11yAck;
    
    }
    return null;
  }

  /// Creates a notification channel, answering with the stored channel.
  ///
  /// Creates a notification channel, answering with the stored channel. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yPostableChannel] o11yPostableChannel (required):
  Future<Response> createChannelWithHttpInfo(O11yPostableChannel o11yPostableChannel,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/channels';

    // ignore: prefer_final_locals
    Object? postBody = o11yPostableChannel;

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

  /// Creates a notification channel, answering with the stored channel.
  ///
  /// Creates a notification channel, answering with the stored channel. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [O11yPostableChannel] o11yPostableChannel (required):
  Future<O11yO11yChannelOut?> createChannel(O11yPostableChannel o11yPostableChannel,) async {
    final response = await createChannelWithHttpInfo(o11yPostableChannel,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yChannelOut',) as O11yO11yChannelOut;
    
    }
    return null;
  }

  /// Creates a dashboard in the v2 format that follows the Perses spec and answers with the stored dashboard.
  ///
  /// Creates a dashboard in the v2 format that follows the Perses spec and answers with the stored dashboard.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDashboardPostable] o11yO11yDashboardPostable (required):
  Future<Response> createDashboardV2WithHttpInfo(O11yO11yDashboardPostable o11yO11yDashboardPostable,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/dashboards';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yDashboardPostable;

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

  /// Creates a dashboard in the v2 format that follows the Perses spec and answers with the stored dashboard.
  ///
  /// Creates a dashboard in the v2 format that follows the Perses spec and answers with the stored dashboard.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDashboardPostable] o11yO11yDashboardPostable (required):
  Future<O11yO11yDashboardOut?> createDashboardV2(O11yO11yDashboardPostable o11yO11yDashboardPostable,) async {
    final response = await createDashboardV2WithHttpInfo(o11yO11yDashboardPostable,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDashboardOut',) as O11yO11yDashboardOut;
    
    }
    return null;
  }

  /// Persists the calling user's dashboard-listing state (query, sort, order) as a named, reusable view shared across the org.
  ///
  /// Persists the calling user's dashboard-listing state (query, sort, order) as a named, reusable view shared across the org.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDashboardViewPostable] o11yO11yDashboardViewPostable (required):
  Future<Response> createDashboardViewWithHttpInfo(O11yO11yDashboardViewPostable o11yO11yDashboardViewPostable,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/dashboard_views';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yDashboardViewPostable;

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

  /// Persists the calling user's dashboard-listing state (query, sort, order) as a named, reusable view shared across the org.
  ///
  /// Persists the calling user's dashboard-listing state (query, sort, order) as a named, reusable view shared across the org.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDashboardViewPostable] o11yO11yDashboardViewPostable (required):
  Future<O11yO11yDashboardViewOut?> createDashboardView(O11yO11yDashboardViewPostable o11yO11yDashboardViewPostable,) async {
    final response = await createDashboardViewWithHttpInfo(o11yO11yDashboardViewPostable,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDashboardViewOut',) as O11yO11yDashboardViewOut;
    
    }
    return null;
  }

  /// Creates a planned maintenance window, answering with the stored schedule.
  ///
  /// Creates a planned maintenance window, answering with the stored schedule. Editor gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yPostablePlannedMaintenance] o11yPostablePlannedMaintenance (required):
  Future<Response> createDowntimeScheduleWithHttpInfo(O11yPostablePlannedMaintenance o11yPostablePlannedMaintenance,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/downtime_schedules';

    // ignore: prefer_final_locals
    Object? postBody = o11yPostablePlannedMaintenance;

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

  /// Creates a planned maintenance window, answering with the stored schedule.
  ///
  /// Creates a planned maintenance window, answering with the stored schedule. Editor gate.
  ///
  /// Parameters:
  ///
  /// * [O11yPostablePlannedMaintenance] o11yPostablePlannedMaintenance (required):
  Future<O11yO11yDowntimeScheduleOut?> createDowntimeSchedule(O11yPostablePlannedMaintenance o11yPostablePlannedMaintenance,) async {
    final response = await createDowntimeScheduleWithHttpInfo(o11yPostablePlannedMaintenance,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDowntimeScheduleOut',) as O11yO11yDowntimeScheduleOut;
    
    }
    return null;
  }

  /// Mints an ingestion key for the workspace, answering with the created key.
  ///
  /// Mints an ingestion key for the workspace, answering with the created key. Editor gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yPostableIngestionKey] o11yPostableIngestionKey (required):
  Future<Response> createIngestionKeyWithHttpInfo(O11yPostableIngestionKey o11yPostableIngestionKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/gateway/ingestion_keys';

    // ignore: prefer_final_locals
    Object? postBody = o11yPostableIngestionKey;

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

  /// Mints an ingestion key for the workspace, answering with the created key.
  ///
  /// Mints an ingestion key for the workspace, answering with the created key. Editor gate.
  ///
  /// Parameters:
  ///
  /// * [O11yPostableIngestionKey] o11yPostableIngestionKey (required):
  Future<O11yO11yCreatedIngestionKeyOut?> createIngestionKey(O11yPostableIngestionKey o11yPostableIngestionKey,) async {
    final response = await createIngestionKeyWithHttpInfo(o11yPostableIngestionKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yCreatedIngestionKeyOut',) as O11yO11yCreatedIngestionKeyOut;
    
    }
    return null;
  }

  /// Sets a signal limit on an ingestion key, by key id, answering with the created limit.
  ///
  /// Sets a signal limit on an ingestion key, by key id, answering with the created limit. Editor gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] keyId (required):
  ///
  /// * [O11yO11yCreateLimitIn] o11yO11yCreateLimitIn (required):
  Future<Response> createIngestionKeyLimitWithHttpInfo(String keyId, O11yO11yCreateLimitIn o11yO11yCreateLimitIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/gateway/ingestion_keys/{keyId}/limits'
      .replaceAll('{keyId}', keyId);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yCreateLimitIn;

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

  /// Sets a signal limit on an ingestion key, by key id, answering with the created limit.
  ///
  /// Sets a signal limit on an ingestion key, by key id, answering with the created limit. Editor gate.
  ///
  /// Parameters:
  ///
  /// * [String] keyId (required):
  ///
  /// * [O11yO11yCreateLimitIn] o11yO11yCreateLimitIn (required):
  Future<O11yO11yCreatedLimitOut?> createIngestionKeyLimit(String keyId, O11yO11yCreateLimitIn o11yO11yCreateLimitIn,) async {
    final response = await createIngestionKeyLimitWithHttpInfo(keyId, o11yO11yCreateLimitIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yCreatedLimitOut',) as O11yO11yCreatedLimitOut;
    
    }
    return null;
  }

  /// Invites one person to the caller's org by email, with the role they will hold when they accept.
  ///
  /// Invites one person to the caller's org by email, with the role they will hold when they accept. Deprecated in favor of creating users directly; kept because callers still hold it. Admin gate, enforced by the runtime this op relays to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yInviteIn] o11yO11yInviteIn (required):
  Future<Response> createInviteWithHttpInfo(O11yO11yInviteIn o11yO11yInviteIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/invite';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yInviteIn;

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

  /// Invites one person to the caller's org by email, with the role they will hold when they accept.
  ///
  /// Invites one person to the caller's org by email, with the role they will hold when they accept. Deprecated in favor of creating users directly; kept because callers still hold it. Admin gate, enforced by the runtime this op relays to.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yInviteIn] o11yO11yInviteIn (required):
  Future<O11yO11yInviteOut?> createInvite(O11yO11yInviteIn o11yO11yInviteIn,) async {
    final response = await createInviteWithHttpInfo(o11yO11yInviteIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInviteOut',) as O11yO11yInviteOut;
    
    }
    return null;
  }

  /// Adds a human annotation to a trace or observation, optionally in a review queue.
  ///
  /// Adds a human annotation to a trace or observation, optionally in a review queue.  Callers need the editor role; the runtime's own gate enforces it, and it validates the payload and stamps the annotation's author and org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yLLMIngestAnnotation] o11yO11yLLMIngestAnnotation (required):
  Future<Response> createLLMAnnotationWithHttpInfo(O11yO11yLLMIngestAnnotation o11yO11yLLMIngestAnnotation,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/llm/annotation';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yLLMIngestAnnotation;

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

  /// Adds a human annotation to a trace or observation, optionally in a review queue.
  ///
  /// Adds a human annotation to a trace or observation, optionally in a review queue.  Callers need the editor role; the runtime's own gate enforces it, and it validates the payload and stamps the annotation's author and org.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yLLMIngestAnnotation] o11yO11yLLMIngestAnnotation (required):
  Future<O11yO11yLLMAnnotationOut?> createLLMAnnotation(O11yO11yLLMIngestAnnotation o11yO11yLLMIngestAnnotation,) async {
    final response = await createLLMAnnotationWithHttpInfo(o11yO11yLLMIngestAnnotation,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLLMAnnotationOut',) as O11yO11yLLMAnnotationOut;
    
    }
    return null;
  }

  /// Attaches an eval score or human-feedback signal to a trace or a single observation.
  ///
  /// Attaches an eval score or human-feedback signal to a trace or a single observation.  Callers need the editor role; the runtime's own gate enforces it, and it validates the payload and stamps the score's author and org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yLLMIngestScore] o11yO11yLLMIngestScore (required):
  Future<Response> createLLMScoreWithHttpInfo(O11yO11yLLMIngestScore o11yO11yLLMIngestScore,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/llm/scores';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yLLMIngestScore;

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

  /// Attaches an eval score or human-feedback signal to a trace or a single observation.
  ///
  /// Attaches an eval score or human-feedback signal to a trace or a single observation.  Callers need the editor role; the runtime's own gate enforces it, and it validates the payload and stamps the score's author and org.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yLLMIngestScore] o11yO11yLLMIngestScore (required):
  Future<O11yO11yLLMScoreOut?> createLLMScore(O11yO11yLLMIngestScore o11yO11yLLMIngestScore,) async {
    final response = await createLLMScoreWithHttpInfo(o11yO11yLLMIngestScore,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLLMScoreOut',) as O11yO11yLLMScoreOut;
    
    }
    return null;
  }

  /// Creates a volume-control rule for a metric and returns it with its id; a metric that already has a rule is refused.
  ///
  /// Creates a volume-control rule for a metric and returns it with its id; a metric that already has a rule is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yReductionRuleCreateIn] o11yO11yReductionRuleCreateIn (required):
  Future<Response> createMetricReductionRuleWithHttpInfo(O11yO11yReductionRuleCreateIn o11yO11yReductionRuleCreateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/metric_reduction_rules';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yReductionRuleCreateIn;

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

  /// Creates a volume-control rule for a metric and returns it with its id; a metric that already has a rule is refused.
  ///
  /// Creates a volume-control rule for a metric and returns it with its id; a metric that already has a rule is refused.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yReductionRuleCreateIn] o11yO11yReductionRuleCreateIn (required):
  Future<O11yO11yReductionRuleOut?> createMetricReductionRule(O11yO11yReductionRuleCreateIn o11yO11yReductionRuleCreateIn,) async {
    final response = await createMetricReductionRuleWithHttpInfo(o11yO11yReductionRuleCreateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yReductionRuleOut',) as O11yO11yReductionRuleOut;
    
    }
    return null;
  }

  /// Writes the pricing-rule batch — the single write endpoint used by both the user and the Zeus sync job.
  ///
  /// Writes the pricing-rule batch — the single write endpoint used by both the user and the Zeus sync job. Per-rule match is by id, then sourceId, then insert; an override row is fully preserved when the request omits isOverride, only its synced_at stamped.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yLLMUpdatablePricingRules] o11yO11yLLMUpdatablePricingRules (required):
  Future<Response> createOrUpdateLLMPricingRulesWithHttpInfo(O11yO11yLLMUpdatablePricingRules o11yO11yLLMUpdatablePricingRules,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/llm_pricing_rules';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yLLMUpdatablePricingRules;

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

  /// Writes the pricing-rule batch — the single write endpoint used by both the user and the Zeus sync job.
  ///
  /// Writes the pricing-rule batch — the single write endpoint used by both the user and the Zeus sync job. Per-rule match is by id, then sourceId, then insert; an override row is fully preserved when the request omits isOverride, only its synced_at stamped.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yLLMUpdatablePricingRules] o11yO11yLLMUpdatablePricingRules (required):
  Future<void> createOrUpdateLLMPricingRules(O11yO11yLLMUpdatablePricingRules o11yO11yLLMUpdatablePricingRules,) async {
    final response = await createOrUpdateLLMPricingRulesWithHttpInfo(o11yO11yLLMUpdatablePricingRules,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Creates the public-sharing config for a dashboard and enables public sharing, answering with the new share's id.
  ///
  /// Creates the public-sharing config for a dashboard and enables public sharing, answering with the new share's id.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the dashboard id from the path.
  ///
  /// * [O11yO11yPublicDashboardWriteIn] o11yO11yPublicDashboardWriteIn (required):
  Future<Response> createPublicDashboardWithHttpInfo(String id, O11yO11yPublicDashboardWriteIn o11yO11yPublicDashboardWriteIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/dashboards/{id}/public'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yPublicDashboardWriteIn;

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

  /// Creates the public-sharing config for a dashboard and enables public sharing, answering with the new share's id.
  ///
  /// Creates the public-sharing config for a dashboard and enables public sharing, answering with the new share's id.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the dashboard id from the path.
  ///
  /// * [O11yO11yPublicDashboardWriteIn] o11yO11yPublicDashboardWriteIn (required):
  Future<O11yO11yIdentifiableOut?> createPublicDashboard(String id, O11yO11yPublicDashboardWriteIn o11yO11yPublicDashboardWriteIn,) async {
    final response = await createPublicDashboardWithHttpInfo(id, o11yO11yPublicDashboardWriteIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yIdentifiableOut',) as O11yO11yIdentifiableOut;
    
    }
    return null;
  }

  /// Creates or regenerates a user's reset-password token: a live token is returned as it is, an expired one is replaced.
  ///
  /// Creates or regenerates a user's reset-password token: a live token is returned as it is, an expired one is replaced. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> createResetPasswordTokenWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/users/{id}/reset_password_tokens'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Creates or regenerates a user's reset-password token: a live token is returned as it is, an expired one is replaced.
  ///
  /// Creates or regenerates a user's reset-password token: a live token is returned as it is, an expired one is replaced. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<O11yO11yResetTokenOut?> createResetPasswordToken(String id,) async {
    final response = await createResetPasswordTokenWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yResetTokenOut',) as O11yO11yResetTokenOut;
    
    }
    return null;
  }

  /// Creates a custom role in the caller's org from a name, an optional description and the transaction groups it grants, answering the new role's id.
  ///
  /// Creates a custom role in the caller's org from a name, an optional description and the transaction groups it grants, answering the new role's id.  Names are lowercase letters and hyphens only, and may not start with the reserved managed-role prefix; the runtime refuses anything else.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yRoleCreateIn] o11yO11yRoleCreateIn (required):
  Future<Response> createRoleWithHttpInfo(O11yO11yRoleCreateIn o11yO11yRoleCreateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/roles';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yRoleCreateIn;

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

  /// Creates a custom role in the caller's org from a name, an optional description and the transaction groups it grants, answering the new role's id.
  ///
  /// Creates a custom role in the caller's org from a name, an optional description and the transaction groups it grants, answering the new role's id.  Names are lowercase letters and hyphens only, and may not start with the reserved managed-role prefix; the runtime refuses anything else.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yRoleCreateIn] o11yO11yRoleCreateIn (required):
  Future<O11yO11yRoleCreateOut?> createRole(O11yO11yRoleCreateIn o11yO11yRoleCreateIn,) async {
    final response = await createRoleWithHttpInfo(o11yO11yRoleCreateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRoleCreateOut',) as O11yO11yRoleCreateOut;
    
    }
    return null;
  }

  /// Creates a route policy, answering with the stored policy.
  ///
  /// Creates a route policy, answering with the stored policy. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yPostableRoutePolicy] o11yPostableRoutePolicy (required):
  Future<Response> createRoutePolicyWithHttpInfo(O11yPostableRoutePolicy o11yPostableRoutePolicy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/route_policies';

    // ignore: prefer_final_locals
    Object? postBody = o11yPostableRoutePolicy;

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

  /// Creates a route policy, answering with the stored policy.
  ///
  /// Creates a route policy, answering with the stored policy. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [O11yPostableRoutePolicy] o11yPostableRoutePolicy (required):
  Future<O11yO11yRoutePolicyOut?> createRoutePolicy(O11yPostableRoutePolicy o11yPostableRoutePolicy,) async {
    final response = await createRoutePolicyWithHttpInfo(o11yPostableRoutePolicy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRoutePolicyOut',) as O11yO11yRoutePolicyOut;
    
    }
    return null;
  }

  /// Creates a new alert rule and answers with the stored rule.
  ///
  /// Creates a new alert rule and answers with the stored rule. Editor gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> createRuleWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/rules';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Creates a new alert rule and answers with the stored rule.
  ///
  /// Creates a new alert rule and answers with the stored rule. Editor gate.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<O11yO11yRuleOut?> createRule(Object body,) async {
    final response = await createRuleWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRuleOut',) as O11yO11yRuleOut;
    
    }
    return null;
  }

  /// Creates a service account in the caller's org, answering its id.
  ///
  /// Creates a service account in the caller's org, answering its id. The name — a lowercase letter followed by lowercase letters, digits or hyphens — becomes the account's email local part.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yServiceAccountCreateIn] o11yO11yServiceAccountCreateIn (required):
  Future<Response> createServiceAccountWithHttpInfo(O11yO11yServiceAccountCreateIn o11yO11yServiceAccountCreateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/service_accounts';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yServiceAccountCreateIn;

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

  /// Creates a service account in the caller's org, answering its id.
  ///
  /// Creates a service account in the caller's org, answering its id. The name — a lowercase letter followed by lowercase letters, digits or hyphens — becomes the account's email local part.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yServiceAccountCreateIn] o11yO11yServiceAccountCreateIn (required):
  Future<O11yO11yServiceAccountCreateOut?> createServiceAccount(O11yO11yServiceAccountCreateIn o11yO11yServiceAccountCreateIn,) async {
    final response = await createServiceAccountWithHttpInfo(o11yO11yServiceAccountCreateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yServiceAccountCreateOut',) as O11yO11yServiceAccountCreateOut;
    
    }
    return null;
  }

  /// Mints an API key for a service account and answers the key's id and its secret — the one time the secret is ever shown.
  ///
  /// Mints an API key for a service account and answers the key's id and its secret — the one time the secret is ever shown.  ExpiresAt is a unix timestamp in seconds; zero means the key never expires, and a timestamp in the past is refused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yAPIKeyCreateIn] o11yO11yAPIKeyCreateIn (required):
  Future<Response> createServiceAccountKeyWithHttpInfo(String id, O11yO11yAPIKeyCreateIn o11yO11yAPIKeyCreateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/service_accounts/{id}/keys'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yAPIKeyCreateIn;

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

  /// Mints an API key for a service account and answers the key's id and its secret — the one time the secret is ever shown.
  ///
  /// Mints an API key for a service account and answers the key's id and its secret — the one time the secret is ever shown.  ExpiresAt is a unix timestamp in seconds; zero means the key never expires, and a timestamp in the past is refused.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yAPIKeyCreateIn] o11yO11yAPIKeyCreateIn (required):
  Future<O11yO11yAPIKeyCreateOut?> createServiceAccountKey(String id, O11yO11yAPIKeyCreateIn o11yO11yAPIKeyCreateIn,) async {
    final response = await createServiceAccountKeyWithHttpInfo(id, o11yO11yAPIKeyCreateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yAPIKeyCreateOut',) as O11yO11yAPIKeyCreateOut;
    
    }
    return null;
  }

  /// Assigns a role, named by its id, to a service account.
  ///
  /// Assigns a role, named by its id, to a service account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   RoleID is the id of the role to assign. Required.
  ///
  /// * [O11yO11yServiceAccountRoleGrantIn] o11yO11yServiceAccountRoleGrantIn (required):
  Future<Response> createServiceAccountRoleWithHttpInfo(String id, O11yO11yServiceAccountRoleGrantIn o11yO11yServiceAccountRoleGrantIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/service_accounts/{id}/roles'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yServiceAccountRoleGrantIn;

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

  /// Assigns a role, named by its id, to a service account.
  ///
  /// Assigns a role, named by its id, to a service account.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   RoleID is the id of the role to assign. Required.
  ///
  /// * [O11yO11yServiceAccountRoleGrantIn] o11yO11yServiceAccountRoleGrantIn (required):
  Future<void> createServiceAccountRole(String id, O11yO11yServiceAccountRoleGrantIn o11yO11yServiceAccountRoleGrantIn,) async {
    final response = await createServiceAccountRoleWithHttpInfo(id, o11yO11yServiceAccountRoleGrantIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Signs a user in with email and password and answers with the session's token pair.
  ///
  /// Signs a user in with email and password and answers with the session's token pair. Unauthenticated: this call is how authentication begins.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yEmailPasswordSessionIn] o11yO11yEmailPasswordSessionIn (required):
  Future<Response> createSessionByEmailPasswordWithHttpInfo(O11yO11yEmailPasswordSessionIn o11yO11yEmailPasswordSessionIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/sessions/email_password';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yEmailPasswordSessionIn;

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

  /// Signs a user in with email and password and answers with the session's token pair.
  ///
  /// Signs a user in with email and password and answers with the session's token pair. Unauthenticated: this call is how authentication begins.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yEmailPasswordSessionIn] o11yO11yEmailPasswordSessionIn (required):
  Future<O11yO11yTokenOut?> createSessionByEmailPassword(O11yO11yEmailPasswordSessionIn o11yO11yEmailPasswordSessionIn,) async {
    final response = await createSessionByEmailPasswordWithHttpInfo(o11yO11yEmailPasswordSessionIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yTokenOut',) as O11yO11yTokenOut;
    
    }
    return null;
  }

  /// Adds a mapper to a group: which field context it reads, the move or copy it performs, and whether it is on.
  ///
  /// Adds a mapper to a group: which field context it reads, the move or copy it performs, and whether it is on.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [O11yO11ySpanMapperCreateIn] o11yO11ySpanMapperCreateIn (required):
  Future<Response> createSpanMapperWithHttpInfo(String groupId, O11yO11ySpanMapperCreateIn o11yO11ySpanMapperCreateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/span_mapper_groups/{groupId}/span_mappers'
      .replaceAll('{groupId}', groupId);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11ySpanMapperCreateIn;

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

  /// Adds a mapper to a group: which field context it reads, the move or copy it performs, and whether it is on.
  ///
  /// Adds a mapper to a group: which field context it reads, the move or copy it performs, and whether it is on.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [O11yO11ySpanMapperCreateIn] o11yO11ySpanMapperCreateIn (required):
  Future<O11yO11ySpanMapperOut?> createSpanMapper(String groupId, O11yO11ySpanMapperCreateIn o11yO11ySpanMapperCreateIn,) async {
    final response = await createSpanMapperWithHttpInfo(groupId, o11yO11ySpanMapperCreateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySpanMapperOut',) as O11yO11ySpanMapperOut;
    
    }
    return null;
  }

  /// Creates a mapping group: the name it is known by, the span and resource attributes whose presence selects a span into it, and whether it is on.
  ///
  /// Creates a mapping group: the name it is known by, the span and resource attributes whose presence selects a span into it, and whether it is on.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yPostableSpanMapperGroup] o11yPostableSpanMapperGroup (required):
  Future<Response> createSpanMapperGroupWithHttpInfo(O11yPostableSpanMapperGroup o11yPostableSpanMapperGroup,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/span_mapper_groups';

    // ignore: prefer_final_locals
    Object? postBody = o11yPostableSpanMapperGroup;

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

  /// Creates a mapping group: the name it is known by, the span and resource attributes whose presence selects a span into it, and whether it is on.
  ///
  /// Creates a mapping group: the name it is known by, the span and resource attributes whose presence selects a span into it, and whether it is on.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yPostableSpanMapperGroup] o11yPostableSpanMapperGroup (required):
  Future<O11yO11ySpanMapperGroupOut?> createSpanMapperGroup(O11yPostableSpanMapperGroup o11yPostableSpanMapperGroup,) async {
    final response = await createSpanMapperGroupWithHttpInfo(o11yPostableSpanMapperGroup,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySpanMapperGroupOut',) as O11yO11ySpanMapperGroupOut;
    
    }
    return null;
  }

  /// Creates an empty funnel with a name, answering the funnel it created.
  ///
  /// Creates an empty funnel with a name, answering the funnel it created. Steps are added afterwards with the steps update.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yFunnelCreateIn] o11yO11yFunnelCreateIn (required):
  Future<Response> createTraceFunnelWithHttpInfo(O11yO11yFunnelCreateIn o11yO11yFunnelCreateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/trace-funnels/new';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yFunnelCreateIn;

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

  /// Creates an empty funnel with a name, answering the funnel it created.
  ///
  /// Creates an empty funnel with a name, answering the funnel it created. Steps are added afterwards with the steps update.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yFunnelCreateIn] o11yO11yFunnelCreateIn (required):
  Future<O11yO11yFunnelOut?> createTraceFunnel(O11yO11yFunnelCreateIn o11yO11yFunnelCreateIn,) async {
    final response = await createTraceFunnelWithHttpInfo(o11yO11yFunnelCreateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFunnelOut',) as O11yO11yFunnelOut;
    
    }
    return null;
  }

  /// Creates a member of the caller's org in the pending-invite state and mails them their invitation; the answer is the new user's id.
  ///
  /// Creates a member of the caller's org in the pending-invite state and mails them their invitation; the answer is the new user's id. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yPostableUser] o11yO11yPostableUser (required):
  Future<Response> createUserWithHttpInfo(O11yO11yPostableUser o11yO11yPostableUser,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/users';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yPostableUser;

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

  /// Creates a member of the caller's org in the pending-invite state and mails them their invitation; the answer is the new user's id.
  ///
  /// Creates a member of the caller's org in the pending-invite state and mails them their invitation; the answer is the new user's id. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yPostableUser] o11yO11yPostableUser (required):
  Future<O11yO11yCreatedOut?> createUser(O11yO11yPostableUser o11yO11yPostableUser,) async {
    final response = await createUserWithHttpInfo(o11yO11yPostableUser,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yCreatedOut',) as O11yO11yCreatedOut;
    
    }
    return null;
  }

  /// Releases an email domain and discards its SSO configuration, by id.
  ///
  /// Releases an email domain and discards its SSO configuration, by id. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteAuthDomainWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/domains/{id}'
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

  /// Releases an email domain and discards its SSO configuration, by id.
  ///
  /// Releases an email domain and discards its SSO configuration, by id. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteAuthDomain(String id,) async {
    final response = await deleteAuthDomainWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes a notification channel, by id.
  ///
  /// Removes a notification channel, by id. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteChannelByIDWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/channels/{id}'
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

  /// Removes a notification channel, by id.
  ///
  /// Removes a notification channel, by id. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteChannelByID(String id,) async {
    final response = await deleteChannelByIDWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes a v2-shape dashboard along with its tag relations.
  ///
  /// Deletes a v2-shape dashboard along with its tag relations. Locked dashboards are rejected.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<Response> deleteDashboardV2WithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/dashboards/{id}'
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

  /// Deletes a v2-shape dashboard along with its tag relations.
  ///
  /// Deletes a v2-shape dashboard along with its tag relations. Locked dashboards are rejected.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<void> deleteDashboardV2(String id,) async {
    final response = await deleteDashboardV2WithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes a saved view.
  ///
  /// Removes a saved view. Saved views are shared org-wide. Deleting a non-existent view refuses with the runtime's not-found.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<Response> deleteDashboardViewWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/dashboard_views/{id}'
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

  /// Removes a saved view.
  ///
  /// Removes a saved view. Saved views are shared org-wide. Deleting a non-existent view refuses with the runtime's not-found.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<void> deleteDashboardView(String id,) async {
    final response = await deleteDashboardViewWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes a planned maintenance window, by id.
  ///
  /// Removes a planned maintenance window, by id. Editor gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteDowntimeScheduleByIDWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/downtime_schedules/{id}'
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

  /// Removes a planned maintenance window, by id.
  ///
  /// Removes a planned maintenance window, by id. Editor gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteDowntimeScheduleByID(String id,) async {
    final response = await deleteDowntimeScheduleByIDWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes an ingestion key, by id.
  ///
  /// Removes an ingestion key, by id. Editor gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] keyId (required):
  Future<Response> deleteIngestionKeyWithHttpInfo(String keyId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/gateway/ingestion_keys/{keyId}'
      .replaceAll('{keyId}', keyId);

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

  /// Removes an ingestion key, by id.
  ///
  /// Removes an ingestion key, by id. Editor gate.
  ///
  /// Parameters:
  ///
  /// * [String] keyId (required):
  Future<void> deleteIngestionKey(String keyId,) async {
    final response = await deleteIngestionKeyWithHttpInfo(keyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes an ingestion key limit, by limit id.
  ///
  /// Removes an ingestion key limit, by limit id. Editor gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] limitId (required):
  Future<Response> deleteIngestionKeyLimitWithHttpInfo(String limitId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/gateway/ingestion_keys/limits/{limitId}'
      .replaceAll('{limitId}', limitId);

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

  /// Removes an ingestion key limit, by limit id.
  ///
  /// Removes an ingestion key limit, by limit id. Editor gate.
  ///
  /// Parameters:
  ///
  /// * [String] limitId (required):
  Future<void> deleteIngestionKeyLimit(String limitId,) async {
    final response = await deleteIngestionKeyLimitWithHttpInfo(limitId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Hard-deletes a pricing rule by id.
  ///
  /// Hard-deletes a pricing rule by id. If the rule was auto-synced, the next sync cycle recreates it.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteLLMPricingRuleWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/llm_pricing_rules/{id}'
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

  /// Hard-deletes a pricing rule by id.
  ///
  /// Hard-deletes a pricing rule by id. If the rule was auto-synced, the next sync cycle recreates it.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteLLMPricingRule(String id,) async {
    final response = await deleteLLMPricingRuleWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Hard-deletes a score by id.
  ///
  /// Hard-deletes a score by id.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteLLMScoreWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/llm/score/{id}'
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

  /// Hard-deletes a score by id.
  ///
  /// Hard-deletes a score by id.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteLLMScore(String id,) async {
    final response = await deleteLLMScoreWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes a volume-control rule by its id.
  ///
  /// Deletes a volume-control rule by its id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the rule's id.
  Future<Response> deleteMetricReductionRuleByIDWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/metric_reduction_rules/{id}'
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

  /// Deletes a volume-control rule by its id.
  ///
  /// Deletes a volume-control rule by its id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the rule's id.
  Future<void> deleteMetricReductionRuleByID(String id,) async {
    final response = await deleteMetricReductionRuleByIDWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes one saved explorer view by id.
  ///
  /// Deletes one saved explorer view by id.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] viewId (required):
  ///   ViewID is the view's id.
  Future<Response> deleteO11yExplorerViewsByViewidWithHttpInfo(String viewId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/explorer/views/{viewId}'
      .replaceAll('{viewId}', viewId);

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

  /// Deletes one saved explorer view by id.
  ///
  /// Deletes one saved explorer view by id.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] viewId (required):
  ///   ViewID is the view's id.
  Future<O11yO11ySavedViewDeleteOut?> deleteO11yExplorerViewsByViewid(String viewId,) async {
    final response = await deleteO11yExplorerViewsByViewidWithHttpInfo(viewId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySavedViewDeleteOut',) as O11yO11ySavedViewDeleteOut;
    
    }
    return null;
  }

  /// Removes one review queue and every item in it.
  ///
  /// Removes one review queue and every item in it. A queue id belonging to another org answers the same 404 an unknown id does, so a probe learns nothing about what exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the annotation queue to act on, from the path.
  Future<Response> deleteO11yReviewsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/reviews/{id}'
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

  /// Removes one review queue and every item in it.
  ///
  /// Removes one review queue and every item in it. A queue id belonging to another org answers the same 404 an unknown id does, so a probe learns nothing about what exists.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the annotation queue to act on, from the path.
  Future<O11yAnnQueueDeleted?> deleteO11yReviewsById(String id,) async {
    final response = await deleteO11yReviewsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yAnnQueueDeleted',) as O11yAnnQueueDeleted;
    
    }
    return null;
  }

  /// Deletes one Sentry project of the caller's org.
  ///
  /// Deletes one Sentry project of the caller's org. Its DSN stops resolving immediately, so ingest for that id fails closed exactly as an unknown project does; retained events are not touched. Answers 204.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the project id.
  Future<Response> deleteO11ySentinelProjectsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/sentinel/projects/{id}'
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

  /// Deletes one Sentry project of the caller's org.
  ///
  /// Deletes one Sentry project of the caller's org. Its DSN stops resolving immediately, so ingest for that id fails closed exactly as an unknown project does; retained events are not touched. Answers 204.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the project id.
  Future<void> deleteO11ySentinelProjectsById(String id,) async {
    final response = await deleteO11ySentinelProjectsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes the public-sharing config and disables public sharing of a dashboard.
  ///
  /// Deletes the public-sharing config and disables public sharing of a dashboard.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<Response> deletePublicDashboardWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/dashboards/{id}/public'
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

  /// Deletes the public-sharing config and disables public sharing of a dashboard.
  ///
  /// Deletes the public-sharing config and disables public sharing of a dashboard.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<void> deletePublicDashboard(String id,) async {
    final response = await deletePublicDashboardWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes a custom role.
  ///
  /// Deletes a custom role. A role that still has user or service-account assignees, or an auth-domain mapping, is refused; managed roles cannot be deleted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteRoleWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/roles/{id}'
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

  /// Deletes a custom role.
  ///
  /// Deletes a custom role. A role that still has user or service-account assignees, or an auth-domain mapping, is refused; managed roles cannot be deleted.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteRole(String id,) async {
    final response = await deleteRoleWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes a route policy, by id.
  ///
  /// Removes a route policy, by id. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteRoutePolicyByIDWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/route_policies/{id}'
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

  /// Removes a route policy, by id.
  ///
  /// Removes a route policy, by id. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteRoutePolicyByID(String id,) async {
    final response = await deleteRoutePolicyByIDWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes an alert rule, by id.
  ///
  /// Removes an alert rule, by id. Editor gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteRuleByIDWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/rules/{id}'
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

  /// Removes an alert rule, by id.
  ///
  /// Removes an alert rule, by id. Editor gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteRuleByID(String id,) async {
    final response = await deleteRuleByIDWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes a service account and revokes every key it holds.
  ///
  /// Deletes a service account and revokes every key it holds.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteServiceAccountWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/service_accounts/{id}'
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

  /// Deletes a service account and revokes every key it holds.
  ///
  /// Deletes a service account and revokes every key it holds.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteServiceAccount(String id,) async {
    final response = await deleteServiceAccountWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes a role from a service account.
  ///
  /// Removes a role from a service account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] rid (required):
  Future<Response> deleteServiceAccountRoleWithHttpInfo(String id, String rid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/service_accounts/{id}/roles/{rid}'
      .replaceAll('{id}', id)
      .replaceAll('{rid}', rid);

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

  /// Removes a role from a service account.
  ///
  /// Removes a role from a service account.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] rid (required):
  Future<void> deleteServiceAccountRole(String id, String rid,) async {
    final response = await deleteServiceAccountRoleWithHttpInfo(id, rid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Signs the calling session out, invalidating its tokens.
  ///
  /// Signs the calling session out, invalidating its tokens. The access token on the call names the session to end.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteSessionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/sessions';

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

  /// Signs the calling session out, invalidating its tokens.
  ///
  /// Signs the calling session out, invalidating its tokens. The access token on the call names the session to end.
  Future<void> deleteSession() async {
    final response = await deleteSessionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes one mapper from a group.
  ///
  /// Deletes one mapper from a group.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [String] mapperId (required):
  Future<Response> deleteSpanMapperWithHttpInfo(String groupId, String mapperId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/span_mapper_groups/{groupId}/span_mappers/{mapperId}'
      .replaceAll('{groupId}', groupId)
      .replaceAll('{mapperId}', mapperId);

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

  /// Deletes one mapper from a group.
  ///
  /// Deletes one mapper from a group.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [String] mapperId (required):
  Future<void> deleteSpanMapper(String groupId, String mapperId,) async {
    final response = await deleteSpanMapperWithHttpInfo(groupId, mapperId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes a mapping group and every mapper under it.
  ///
  /// Deletes a mapping group and every mapper under it.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  Future<Response> deleteSpanMapperGroupWithHttpInfo(String groupId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/span_mapper_groups/{groupId}'
      .replaceAll('{groupId}', groupId);

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

  /// Deletes a mapping group and every mapper under it.
  ///
  /// Deletes a mapping group and every mapper under it.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  Future<void> deleteSpanMapperGroup(String groupId,) async {
    final response = await deleteSpanMapperGroupWithHttpInfo(groupId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes a funnel.
  ///
  /// Deletes a funnel. The answer carries no data — the runtime acknowledges with the success envelope alone, which is what this Out says.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] funnelId (required):
  Future<Response> deleteTraceFunnelWithHttpInfo(String funnelId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/trace-funnels/{funnel_id}'
      .replaceAll('{funnel_id}', funnelId);

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

  /// Deletes a funnel.
  ///
  /// Deletes a funnel. The answer carries no data — the runtime acknowledges with the success envelope alone, which is what this Out says.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] funnelId (required):
  Future<O11yO11yFunnelDeleteOut?> deleteTraceFunnel(String funnelId,) async {
    final response = await deleteTraceFunnelWithHttpInfo(funnelId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFunnelDeleteOut',) as O11yO11yFunnelDeleteOut;
    
    }
    return null;
  }

  /// Removes one org member, by user id.
  ///
  /// Removes one org member, by user id. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteUserWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/users/{id}'
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

  /// Removes one org member, by user id.
  ///
  /// Removes one org member, by user id. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteUser(String id,) async {
    final response = await deleteUserWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes one org member, by user id.
  ///
  /// Removes one org member, by user id. The same operation as deleteUser on the legacy singular path. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteUserDeprecatedWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/user/{id}'
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

  /// Removes one org member, by user id.
  ///
  /// Removes one org member, by user id. The same operation as deleteUser on the legacy singular path. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteUserDeprecated(String id,) async {
    final response = await deleteUserDeprecatedWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Tears down a connected account for the given provider, by id.
  ///
  /// Tears down a connected account for the given provider, by id. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [String] id (required):
  Future<Response> disconnectAccountWithHttpInfo(String cloudProvider, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/cloud_integrations/{cloud_provider}/accounts/{id}'
      .replaceAll('{cloud_provider}', cloudProvider)
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

  /// Tears down a connected account for the given provider, by id.
  ///
  /// Tears down a connected account for the given provider, by id. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [String] id (required):
  Future<void> disconnectAccount(String cloudProvider, String id,) async {
    final response = await disconnectAccountWithHttpInfo(cloudProvider, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Starts the forgotten-password flow: the named user is mailed a reset link.
  ///
  /// Starts the forgotten-password flow: the named user is mailed a reset link. Unauthenticated by design, and deliberately quiet about whether the address exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yForgotPasswordIn] o11yO11yForgotPasswordIn (required):
  Future<Response> forgotPasswordWithHttpInfo(O11yO11yForgotPasswordIn o11yO11yForgotPasswordIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/factor_password/forgot';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yForgotPasswordIn;

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

  /// Starts the forgotten-password flow: the named user is mailed a reset link.
  ///
  /// Starts the forgotten-password flow: the named user is mailed a reset link. Unauthenticated by design, and deliberately quiet about whether the address exists.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yForgotPasswordIn] o11yO11yForgotPasswordIn (required):
  Future<void> forgotPassword(O11yO11yForgotPasswordIn o11yO11yForgotPasswordIn,) async {
    final response = await forgotPasswordWithHttpInfo(o11yO11yForgotPasswordIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns one connected account for the given provider, by id.
  ///
  /// Returns one connected account for the given provider, by id. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [String] id (required):
  Future<Response> getAccountWithHttpInfo(String cloudProvider, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/cloud_integrations/{cloud_provider}/accounts/{id}'
      .replaceAll('{cloud_provider}', cloudProvider)
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

  /// Returns one connected account for the given provider, by id.
  ///
  /// Returns one connected account for the given provider, by id. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [String] id (required):
  Future<O11yO11yAccountOut?> getAccount(String cloudProvider, String id,) async {
    final response = await getAccountWithHttpInfo(cloudProvider, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yAccountOut',) as O11yO11yAccountOut;
    
    }
    return null;
  }

  /// Returns one service and its configuration for a connected account of the given provider, by account id and service id.
  ///
  /// Returns one service and its configuration for a connected account of the given provider, by account id and service id. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [String] id (required):
  ///
  /// * [String] serviceId (required):
  Future<Response> getAccountServiceWithHttpInfo(String cloudProvider, String id, String serviceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/cloud_integrations/{cloud_provider}/accounts/{id}/services/{service_id}'
      .replaceAll('{cloud_provider}', cloudProvider)
      .replaceAll('{id}', id)
      .replaceAll('{service_id}', serviceId);

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

  /// Returns one service and its configuration for a connected account of the given provider, by account id and service id.
  ///
  /// Returns one service and its configuration for a connected account of the given provider, by account id and service id. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [String] id (required):
  ///
  /// * [String] serviceId (required):
  Future<O11yO11yServiceOut?> getAccountService(String cloudProvider, String id, String serviceId,) async {
    final response = await getAccountServiceWithHttpInfo(cloudProvider, id, serviceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yServiceOut',) as O11yO11yServiceOut;
    
    }
    return null;
  }

  /// Returns the org's current alerts.
  ///
  /// Returns the org's current alerts. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAlertsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/alerts';

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

  /// Returns the org's current alerts.
  ///
  /// Returns the org's current alerts. Viewer gate.
  Future<O11yO11yAlertsOut?> getAlerts() async {
    final response = await getAlertsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yAlertsOut',) as O11yO11yAlertsOut;
    
    }
    return null;
  }

  /// Lists the org's route policies.
  ///
  /// Lists the org's route policies. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAllRoutePoliciesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/route_policies';

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

  /// Lists the org's route policies.
  ///
  /// Lists the org's route policies. Viewer gate.
  Future<O11yO11yRoutePoliciesOut?> getAllRoutePolicies() async {
    final response = await getAllRoutePoliciesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRoutePoliciesOut',) as O11yO11yRoutePoliciesOut;
    
    }
    return null;
  }

  /// Returns one auth domain with its SSO configuration, by id.
  ///
  /// Returns one auth domain with its SSO configuration, by id. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getAuthDomainWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/domains/{id}'
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

  /// Returns one auth domain with its SSO configuration, by id.
  ///
  /// Returns one auth domain with its SSO configuration, by id. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<O11yO11yAuthDomainOut?> getAuthDomain(String id,) async {
    final response = await getAuthDomainWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yAuthDomainOut',) as O11yO11yAuthDomainOut;
    
    }
    return null;
  }

  /// Returns one notification channel, by id.
  ///
  /// Returns one notification channel, by id. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getChannelByIDWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/channels/{id}'
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

  /// Returns one notification channel, by id.
  ///
  /// Returns one notification channel, by id. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<O11yO11yChannelOut?> getChannelByID(String id,) async {
    final response = await getChannelByIDWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yChannelOut',) as O11yO11yChannelOut;
    
    }
    return null;
  }

  /// Returns the credentials the connecting agent needs to establish the cloud integration, for the given cloud provider.
  ///
  /// Returns the credentials the connecting agent needs to establish the cloud integration, for the given cloud provider. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  Future<Response> getConnectionCredentialsWithHttpInfo(String cloudProvider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/cloud_integrations/{cloud_provider}/credentials'
      .replaceAll('{cloud_provider}', cloudProvider);

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

  /// Returns the credentials the connecting agent needs to establish the cloud integration, for the given cloud provider.
  ///
  /// Returns the credentials the connecting agent needs to establish the cloud integration, for the given cloud provider. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  Future<O11yO11yCredentialsOut?> getConnectionCredentials(String cloudProvider,) async {
    final response = await getConnectionCredentialsWithHttpInfo(cloudProvider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yCredentialsOut',) as O11yO11yCredentialsOut;
    
    }
    return null;
  }

  /// Returns a v2-shape dashboard.
  ///
  /// Returns a v2-shape dashboard.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<Response> getDashboardV2WithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/dashboards/{id}'
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

  /// Returns a v2-shape dashboard.
  ///
  /// Returns a v2-shape dashboard.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<O11yO11yDashboardOut?> getDashboardV2(String id,) async {
    final response = await getDashboardV2WithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDashboardOut',) as O11yO11yDashboardOut;
    
    }
    return null;
  }

  /// Returns one planned maintenance window, by id.
  ///
  /// Returns one planned maintenance window, by id. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getDowntimeScheduleByIDWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/downtime_schedules/{id}'
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

  /// Returns one planned maintenance window, by id.
  ///
  /// Returns one planned maintenance window, by id. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<O11yO11yDowntimeScheduleOut?> getDowntimeScheduleByID(String id,) async {
    final response = await getDowntimeScheduleByIDWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDowntimeScheduleOut',) as O11yO11yDowntimeScheduleOut;
    
    }
    return null;
  }

  /// Returns the errored traces through a step transition of a funnel described inline.
  ///
  /// Returns the errored traces through a step transition of a funnel described inline.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDraftFunnelIn] o11yO11yDraftFunnelIn (required):
  Future<Response> getDraftFunnelErrorTracesWithHttpInfo(O11yO11yDraftFunnelIn o11yO11yDraftFunnelIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/trace-funnels/analytics/error-traces';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yDraftFunnelIn;

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

  /// Returns the errored traces through a step transition of a funnel described inline.
  ///
  /// Returns the errored traces through a step transition of a funnel described inline.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDraftFunnelIn] o11yO11yDraftFunnelIn (required):
  Future<O11yO11yFunnelRowsOut?> getDraftFunnelErrorTraces(O11yO11yDraftFunnelIn o11yO11yDraftFunnelIn,) async {
    final response = await getDraftFunnelErrorTracesWithHttpInfo(o11yO11yDraftFunnelIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFunnelRowsOut',) as O11yO11yFunnelRowsOut;
    
    }
    return null;
  }

  /// Returns the conversion overview of a funnel described inline.
  ///
  /// Returns the conversion overview of a funnel described inline.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDraftFunnelIn] o11yO11yDraftFunnelIn (required):
  Future<Response> getDraftFunnelOverviewWithHttpInfo(O11yO11yDraftFunnelIn o11yO11yDraftFunnelIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/trace-funnels/analytics/overview';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yDraftFunnelIn;

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

  /// Returns the conversion overview of a funnel described inline.
  ///
  /// Returns the conversion overview of a funnel described inline.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDraftFunnelIn] o11yO11yDraftFunnelIn (required):
  Future<O11yO11yFunnelRowsOut?> getDraftFunnelOverview(O11yO11yDraftFunnelIn o11yO11yDraftFunnelIn,) async {
    final response = await getDraftFunnelOverviewWithHttpInfo(o11yO11yDraftFunnelIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFunnelRowsOut',) as O11yO11yFunnelRowsOut;
    
    }
    return null;
  }

  /// Returns the slowest traces through a step transition of a funnel described inline.
  ///
  /// Returns the slowest traces through a step transition of a funnel described inline.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDraftFunnelIn] o11yO11yDraftFunnelIn (required):
  Future<Response> getDraftFunnelSlowTracesWithHttpInfo(O11yO11yDraftFunnelIn o11yO11yDraftFunnelIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/trace-funnels/analytics/slow-traces';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yDraftFunnelIn;

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

  /// Returns the slowest traces through a step transition of a funnel described inline.
  ///
  /// Returns the slowest traces through a step transition of a funnel described inline.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDraftFunnelIn] o11yO11yDraftFunnelIn (required):
  Future<O11yO11yFunnelRowsOut?> getDraftFunnelSlowTraces(O11yO11yDraftFunnelIn o11yO11yDraftFunnelIn,) async {
    final response = await getDraftFunnelSlowTracesWithHttpInfo(o11yO11yDraftFunnelIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFunnelRowsOut',) as O11yO11yFunnelRowsOut;
    
    }
    return null;
  }

  /// Returns the per-step metrics of a funnel described inline.
  ///
  /// Returns the per-step metrics of a funnel described inline.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDraftFunnelIn] o11yO11yDraftFunnelIn (required):
  Future<Response> getDraftFunnelStepMetricsWithHttpInfo(O11yO11yDraftFunnelIn o11yO11yDraftFunnelIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/trace-funnels/analytics/steps';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yDraftFunnelIn;

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

  /// Returns the per-step metrics of a funnel described inline.
  ///
  /// Returns the per-step metrics of a funnel described inline.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDraftFunnelIn] o11yO11yDraftFunnelIn (required):
  Future<O11yO11yFunnelRowsOut?> getDraftFunnelStepMetrics(O11yO11yDraftFunnelIn o11yO11yDraftFunnelIn,) async {
    final response = await getDraftFunnelStepMetricsWithHttpInfo(o11yO11yDraftFunnelIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFunnelRowsOut',) as O11yO11yFunnelRowsOut;
    
    }
    return null;
  }

  /// Returns the conversion between two steps of a funnel described inline.
  ///
  /// Returns the conversion between two steps of a funnel described inline.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDraftFunnelIn] o11yO11yDraftFunnelIn (required):
  Future<Response> getDraftFunnelStepOverviewWithHttpInfo(O11yO11yDraftFunnelIn o11yO11yDraftFunnelIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/trace-funnels/analytics/steps/overview';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yDraftFunnelIn;

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

  /// Returns the conversion between two steps of a funnel described inline.
  ///
  /// Returns the conversion between two steps of a funnel described inline.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDraftFunnelIn] o11yO11yDraftFunnelIn (required):
  Future<O11yO11yFunnelRowsOut?> getDraftFunnelStepOverview(O11yO11yDraftFunnelIn o11yO11yDraftFunnelIn,) async {
    final response = await getDraftFunnelStepOverviewWithHttpInfo(o11yO11yDraftFunnelIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFunnelRowsOut',) as O11yO11yFunnelRowsOut;
    
    }
    return null;
  }

  /// Returns a trace's flamegraph: spans bucketed by depth level, each level ordered as it is drawn, around the selected span.
  ///
  /// Returns a trace's flamegraph: spans bucketed by depth level, each level ordered as it is drawn, around the selected span.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] traceId (required):
  ///
  /// * [O11yO11yTraceFlamegraphIn] o11yO11yTraceFlamegraphIn (required):
  Future<Response> getFlamegraphWithHttpInfo(String traceId, O11yO11yTraceFlamegraphIn o11yO11yTraceFlamegraphIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/traces/{traceId}/flamegraph'
      .replaceAll('{traceId}', traceId);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yTraceFlamegraphIn;

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

  /// Returns a trace's flamegraph: spans bucketed by depth level, each level ordered as it is drawn, around the selected span.
  ///
  /// Returns a trace's flamegraph: spans bucketed by depth level, each level ordered as it is drawn, around the selected span.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] traceId (required):
  ///
  /// * [O11yO11yTraceFlamegraphIn] o11yO11yTraceFlamegraphIn (required):
  Future<O11yO11yTraceFlamegraphOut?> getFlamegraph(String traceId, O11yO11yTraceFlamegraphIn o11yO11yTraceFlamegraphIn,) async {
    final response = await getFlamegraphWithHttpInfo(traceId, o11yO11yTraceFlamegraphIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yTraceFlamegraphOut',) as O11yO11yTraceFlamegraphOut;
    
    }
    return null;
  }

  /// Returns the deployment's host info from Zeus.
  ///
  /// Returns the deployment's host info from Zeus. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getHostsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/zeus/hosts';

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

  /// Returns the deployment's host info from Zeus.
  ///
  /// Returns the deployment's host info from Zeus. Viewer gate.
  Future<O11yO11yGettableHostOut?> getHosts() async {
    final response = await getHostsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yGettableHostOut',) as O11yO11yGettableHostOut;
    
    }
    return null;
  }

  /// Lists the workspace's ingestion keys, paginated.
  ///
  /// Lists the workspace's ingestion keys, paginated. Editor gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Page is the 1-based page number.
  ///
  /// * [int] perPage:
  ///   PerPage is the page size.
  Future<Response> getIngestionKeysWithHttpInfo({ int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/gateway/ingestion_keys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
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

  /// Lists the workspace's ingestion keys, paginated.
  ///
  /// Lists the workspace's ingestion keys, paginated. Editor gate.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Page is the 1-based page number.
  ///
  /// * [int] perPage:
  ///   PerPage is the page size.
  Future<O11yO11yIngestionKeysOut?> getIngestionKeys({ int? page, int? perPage, }) async {
    final response = await getIngestionKeysWithHttpInfo( page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yIngestionKeysOut',) as O11yO11yIngestionKeysOut;
    
    }
    return null;
  }

  /// Returns one integration's full detail — its overview, configuration steps, collected data and assets — together with its installation record when the org has installed it.
  ///
  /// Returns one integration's full detail — its overview, configuration steps, collected data and assets — together with its installation record when the org has installed it. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] integrationId (required):
  Future<Response> getIntegrationWithHttpInfo(String integrationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/integrations/{integrationId}'
      .replaceAll('{integrationId}', integrationId);

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

  /// Returns one integration's full detail — its overview, configuration steps, collected data and assets — together with its installation record when the org has installed it.
  ///
  /// Returns one integration's full detail — its overview, configuration steps, collected data and assets — together with its installation record when the org has installed it. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] integrationId (required):
  Future<O11yO11yIntegrationOut?> getIntegration(String integrationId,) async {
    final response = await getIntegrationWithHttpInfo(integrationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yIntegrationOut',) as O11yO11yIntegrationOut;
    
    }
    return null;
  }

  /// Reports whether the integration's logs and metrics have been received over the lookback window, so the console can show a live connection state.
  ///
  /// Reports whether the integration's logs and metrics have been received over the lookback window, so the console can show a live connection state. An integration that is not installed answers with an empty status rather than an error. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] integrationId (required):
  ///
  /// * [int] lookbackSeconds:
  ///   LookbackSeconds is how far back to look for received telemetry, in seconds.
  Future<Response> getIntegrationConnectionStatusWithHttpInfo(String integrationId, { int? lookbackSeconds, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/integrations/{integrationId}/connection_status'
      .replaceAll('{integrationId}', integrationId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (lookbackSeconds != null) {
      queryParams.addAll(_queryParams('', 'lookback_seconds', lookbackSeconds));
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

  /// Reports whether the integration's logs and metrics have been received over the lookback window, so the console can show a live connection state.
  ///
  /// Reports whether the integration's logs and metrics have been received over the lookback window, so the console can show a live connection state. An integration that is not installed answers with an empty status rather than an error. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] integrationId (required):
  ///
  /// * [int] lookbackSeconds:
  ///   LookbackSeconds is how far back to look for received telemetry, in seconds.
  Future<O11yO11yConnectionStatusOut?> getIntegrationConnectionStatus(String integrationId, { int? lookbackSeconds, }) async {
    final response = await getIntegrationConnectionStatusWithHttpInfo(integrationId,  lookbackSeconds: lookbackSeconds, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yConnectionStatusOut',) as O11yO11yConnectionStatusOut;
    
    }
    return null;
  }

  /// Returns a single LLM pricing rule by id.
  ///
  /// Returns a single LLM pricing rule by id.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getLLMPricingRuleWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/llm_pricing_rules/{id}'
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

  /// Returns a single LLM pricing rule by id.
  ///
  /// Returns a single LLM pricing rule by id.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<O11yO11yLLMPricingRuleOut?> getLLMPricingRule(String id,) async {
    final response = await getLLMPricingRuleWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLLMPricingRuleOut',) as O11yO11yLLMPricingRuleOut;
    
    }
    return null;
  }

  /// Returns a single score by id.
  ///
  /// Returns a single score by id.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getLLMScoreWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/llm/score/{id}'
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

  /// Returns a single score by id.
  ///
  /// Returns a single score by id.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<O11yO11yLLMScoreOut?> getLLMScore(String id,) async {
    final response = await getLLMScoreWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLLMScoreOut',) as O11yO11yLLMScoreOut;
    
    }
    return null;
  }

  /// Lists the alert rules that reference a metric.
  ///
  /// Lists the alert rules that reference a metric.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] metricName (required):
  ///   MetricName is the metric's name; it may contain slashes, e.g. run.googleapis.com/request_latencies. Required.
  Future<Response> getMetricAlertsWithHttpInfo(String metricName,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/metrics/alerts';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'metricName', metricName));

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

  /// Lists the alert rules that reference a metric.
  ///
  /// Lists the alert rules that reference a metric.
  ///
  /// Parameters:
  ///
  /// * [String] metricName (required):
  ///   MetricName is the metric's name; it may contain slashes, e.g. run.googleapis.com/request_latencies. Required.
  Future<O11yO11yMetricAlertsOut?> getMetricAlerts(String metricName,) async {
    final response = await getMetricAlertsWithHttpInfo(metricName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yMetricAlertsOut',) as O11yO11yMetricAlertsOut;
    
    }
    return null;
  }

  /// Returns one metric's attribute keys, each with its unique values and their count.
  ///
  /// Returns one metric's attribute keys, each with its unique values and their count.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] metricName (required):
  ///   MetricName is the metric's name; it may contain slashes. Required.
  ///
  /// * [int] start:
  ///   Start is the start of the window as a Unix timestamp in milliseconds.
  ///
  /// * [int] end:
  ///   End is the end of the window as a Unix timestamp in milliseconds.
  Future<Response> getMetricAttributesWithHttpInfo(String metricName, { int? start, int? end, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/metrics/attributes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'metricName', metricName));
    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
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

  /// Returns one metric's attribute keys, each with its unique values and their count.
  ///
  /// Returns one metric's attribute keys, each with its unique values and their count.
  ///
  /// Parameters:
  ///
  /// * [String] metricName (required):
  ///   MetricName is the metric's name; it may contain slashes. Required.
  ///
  /// * [int] start:
  ///   Start is the start of the window as a Unix timestamp in milliseconds.
  ///
  /// * [int] end:
  ///   End is the end of the window as a Unix timestamp in milliseconds.
  Future<O11yO11yMetricAttributesOut?> getMetricAttributes(String metricName, { int? start, int? end, }) async {
    final response = await getMetricAttributesWithHttpInfo(metricName,  start: start, end: end, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yMetricAttributesOut',) as O11yO11yMetricAttributesOut;
    
    }
    return null;
  }

  /// Lists the dashboard panels that reference a metric.
  ///
  /// Lists the dashboard panels that reference a metric.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] metricName (required):
  ///   MetricName is the metric's name; it may contain slashes, e.g. run.googleapis.com/request_latencies. Required.
  Future<Response> getMetricDashboardsV2WithHttpInfo(String metricName,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/metrics/dashboards';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'metricName', metricName));

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

  /// Lists the dashboard panels that reference a metric.
  ///
  /// Lists the dashboard panels that reference a metric.
  ///
  /// Parameters:
  ///
  /// * [String] metricName (required):
  ///   MetricName is the metric's name; it may contain slashes, e.g. run.googleapis.com/request_latencies. Required.
  Future<O11yO11yMetricDashboardsOut?> getMetricDashboardsV2(String metricName,) async {
    final response = await getMetricDashboardsV2WithHttpInfo(metricName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yMetricDashboardsOut',) as O11yO11yMetricDashboardsOut;
    
    }
    return null;
  }

  /// Returns one metric's headline numbers: data points, total and active time series, and when it was last received.
  ///
  /// Returns one metric's headline numbers: data points, total and active time series, and when it was last received.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] metricName (required):
  ///   MetricName is the metric's name; it may contain slashes, e.g. run.googleapis.com/request_latencies. Required.
  Future<Response> getMetricHighlightsWithHttpInfo(String metricName,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/metrics/highlights';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'metricName', metricName));

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

  /// Returns one metric's headline numbers: data points, total and active time series, and when it was last received.
  ///
  /// Returns one metric's headline numbers: data points, total and active time series, and when it was last received.
  ///
  /// Parameters:
  ///
  /// * [String] metricName (required):
  ///   MetricName is the metric's name; it may contain slashes, e.g. run.googleapis.com/request_latencies. Required.
  Future<O11yO11yMetricHighlightsOut?> getMetricHighlights(String metricName,) async {
    final response = await getMetricHighlightsWithHttpInfo(metricName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yMetricHighlightsOut',) as O11yO11yMetricHighlightsOut;
    
    }
    return null;
  }

  /// Returns one metric's metadata: description, type, unit, temporality and monotonicity.
  ///
  /// Returns one metric's metadata: description, type, unit, temporality and monotonicity.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] metricName (required):
  ///   MetricName is the metric's name; it may contain slashes, e.g. run.googleapis.com/request_latencies. Required.
  Future<Response> getMetricMetadataWithHttpInfo(String metricName,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/metrics/metadata';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'metricName', metricName));

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

  /// Returns one metric's metadata: description, type, unit, temporality and monotonicity.
  ///
  /// Returns one metric's metadata: description, type, unit, temporality and monotonicity.
  ///
  /// Parameters:
  ///
  /// * [String] metricName (required):
  ///   MetricName is the metric's name; it may contain slashes, e.g. run.googleapis.com/request_latencies. Required.
  Future<O11yO11yMetricMetadataOut?> getMetricMetadata(String metricName,) async {
    final response = await getMetricMetadataWithHttpInfo(metricName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yMetricMetadataOut',) as O11yO11yMetricMetadataOut;
    
    }
    return null;
  }

  /// Returns one volume-control rule by its id.
  ///
  /// Returns one volume-control rule by its id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the rule's id.
  Future<Response> getMetricReductionRuleByIDWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/metric_reduction_rules/{id}'
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

  /// Returns one volume-control rule by its id.
  ///
  /// Returns one volume-control rule by its id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the rule's id.
  Future<O11yO11yReductionRuleOut?> getMetricReductionRuleByID(String id,) async {
    final response = await getMetricReductionRuleByIDWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yReductionRuleOut',) as O11yO11yReductionRuleOut;
    
    }
    return null;
  }

  /// Returns total ingested vs retained series and samples and the estimated monthly savings across all volume-control rules.
  ///
  /// Returns total ingested vs retained series and samples and the estimated monthly savings across all volume-control rules.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMetricReductionRuleStatsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/metric_reduction_rules/stats';

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

  /// Returns total ingested vs retained series and samples and the estimated monthly savings across all volume-control rules.
  ///
  /// Returns total ingested vs retained series and samples and the estimated monthly savings across all volume-control rules.
  Future<O11yO11yReductionStatsOut?> getMetricReductionRuleStats() async {
    final response = await getMetricReductionRuleStatsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yReductionStatsOut',) as O11yO11yReductionStatsOut;
    
    }
    return null;
  }

  /// Returns ingested vs retained series over time across all volume-control rules, in hourly buckets, in the query-range time-series response shape.
  ///
  /// Returns ingested vs retained series over time across all volume-control rules, in hourly buckets, in the query-range time-series response shape.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMetricReductionRuleTimeseriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/metric_reduction_rules/timeseries';

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

  /// Returns ingested vs retained series over time across all volume-control rules, in hourly buckets, in the query-range time-series response shape.
  ///
  /// Returns ingested vs retained series over time across all volume-control rules, in hourly buckets, in the query-range time-series response shape.
  Future<O11yO11yReductionSeriesOut?> getMetricReductionRuleTimeseries() async {
    final response = await getMetricReductionRuleTimeseriesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yReductionSeriesOut',) as O11yO11yReductionSeriesOut;
    
    }
    return null;
  }

  /// Reports whether any non-O11y metrics have been ingested — the lightweight check onboarding polls.
  ///
  /// Reports whether any non-O11y metrics have been ingested — the lightweight check onboarding polls.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMetricsOnboardingStatusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/metrics/onboarding';

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

  /// Reports whether any non-O11y metrics have been ingested — the lightweight check onboarding polls.
  ///
  /// Reports whether any non-O11y metrics have been ingested — the lightweight check onboarding polls.
  Future<O11yO11yMetricOnboardingOut?> getMetricsOnboardingStatus() async {
    final response = await getMetricsOnboardingStatusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yMetricOnboardingOut',) as O11yO11yMetricOnboardingOut;
    
    }
    return null;
  }

  /// Lists metrics with their sample and time-series counts for a time range — the volume view of the metrics explorer, pageable and sortable.
  ///
  /// Lists metrics with their sample and time-series counts for a time range — the volume view of the metrics explorer, pageable and sortable.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yMetricStatsIn] o11yO11yMetricStatsIn (required):
  Future<Response> getMetricsStatsWithHttpInfo(O11yO11yMetricStatsIn o11yO11yMetricStatsIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/metrics/stats';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yMetricStatsIn;

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

  /// Lists metrics with their sample and time-series counts for a time range — the volume view of the metrics explorer, pageable and sortable.
  ///
  /// Lists metrics with their sample and time-series counts for a time range — the volume view of the metrics explorer, pageable and sortable.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yMetricStatsIn] o11yO11yMetricStatsIn (required):
  Future<O11yO11yMetricStatsOut?> getMetricsStats(O11yO11yMetricStatsIn o11yO11yMetricStatsIn,) async {
    final response = await getMetricsStatsWithHttpInfo(o11yO11yMetricStatsIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yMetricStatsOut',) as O11yO11yMetricStatsOut;
    
    }
    return null;
  }

  /// Returns the proportional distribution of metrics by sample count or time-series count, as the entries of a treemap.
  ///
  /// Returns the proportional distribution of metrics by sample count or time-series count, as the entries of a treemap.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yMetricTreemapIn] o11yO11yMetricTreemapIn (required):
  Future<Response> getMetricsTreemapWithHttpInfo(O11yO11yMetricTreemapIn o11yO11yMetricTreemapIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/metrics/treemap';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yMetricTreemapIn;

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

  /// Returns the proportional distribution of metrics by sample count or time-series count, as the entries of a treemap.
  ///
  /// Returns the proportional distribution of metrics by sample count or time-series count, as the entries of a treemap.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yMetricTreemapIn] o11yO11yMetricTreemapIn (required):
  Future<O11yO11yMetricTreemapOut?> getMetricsTreemap(O11yO11yMetricTreemapIn o11yO11yMetricTreemapIn,) async {
    final response = await getMetricsTreemapWithHttpInfo(o11yO11yMetricTreemapIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yMetricTreemapOut',) as O11yO11yMetricTreemapOut;
    
    }
    return null;
  }

  /// Returns the caller's own organization.
  ///
  /// Returns the caller's own organization. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMyOrganizationWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/orgs/me';

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

  /// Returns the caller's own organization.
  ///
  /// Returns the caller's own organization. Admin gate.
  Future<O11yO11yOrganizationOut?> getMyOrganization() async {
    final response = await getMyOrganizationWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yOrganizationOut',) as O11yO11yOrganizationOut;
    
    }
    return null;
  }

  /// Returns the calling service account itself, with the roles it holds — the self-inspection read for a key-authenticated caller.
  ///
  /// Returns the calling service account itself, with the roles it holds — the self-inspection read for a key-authenticated caller.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMyServiceAccountWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/service_accounts/me';

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

  /// Returns the calling service account itself, with the roles it holds — the self-inspection read for a key-authenticated caller.
  ///
  /// Returns the calling service account itself, with the roles it holds — the self-inspection read for a key-authenticated caller.
  Future<O11yO11yServiceAccountOut?> getMyServiceAccount() async {
    final response = await getMyServiceAccountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yServiceAccountOut',) as O11yO11yServiceAccountOut;
    
    }
    return null;
  }

  /// Returns the calling user together with every role they hold.
  ///
  /// Returns the calling user together with every role they hold. Open to any authenticated caller.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMyUserWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/users/me';

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

  /// Returns the calling user together with every role they hold.
  ///
  /// Returns the calling user together with every role they hold. Open to any authenticated caller.
  Future<O11yO11yUserWithRolesOut?> getMyUser() async {
    final response = await getMyUserWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yUserWithRolesOut',) as O11yO11yUserWithRolesOut;
    
    }
    return null;
  }

  /// Returns the calling user with their single legacy role.
  ///
  /// Returns the calling user with their single legacy role. Deprecated in favor of getMyUser. Open to any authenticated caller.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMyUserDeprecatedWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/user/me';

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

  /// Returns the calling user with their single legacy role.
  ///
  /// Returns the calling user with their single legacy role. Deprecated in favor of getMyUser. Open to any authenticated caller.
  Future<O11yO11yDeprecatedUserOut?> getMyUserDeprecated() async {
    final response = await getMyUserDeprecatedWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDeprecatedUserOut',) as O11yO11yDeprecatedUserOut;
    
    }
    return null;
  }

  /// Replay the alert records this process took
  ///
  /// Answers the most recent Alertmanager deliveries THIS process received, as plain text — one greppable `ALERT-RECEIVED` line per alert, followed by the `ALERT-DELIVERED` / `ALERT-UNDELIVERED` outcome of carrying it out of the process, newest last, so piping to `tail` reads in arrival order. `(none)` when nothing has landed.  Arrival and delivery are separate lines because they are separate facts that fail independently. Alertmanager can tell you it dispatched a notification, never that anything received it; this process taking the call says nothing about whether a human was reached. Reading only the first as if it were the second is how a pager stays silent for months behind a log where everything looks fine.  The ring is PROCESS-LOCAL and bounded to the last 200 lines. Both are the point: a record that outlived the process that took the call would be a claim about something nobody observed, and an unbounded log is a memory leak with a nice name. A restart empties it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yAlertsLastWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/alerts/last';

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

  /// Replay the alert records this process took
  ///
  /// Answers the most recent Alertmanager deliveries THIS process received, as plain text — one greppable `ALERT-RECEIVED` line per alert, followed by the `ALERT-DELIVERED` / `ALERT-UNDELIVERED` outcome of carrying it out of the process, newest last, so piping to `tail` reads in arrival order. `(none)` when nothing has landed.  Arrival and delivery are separate lines because they are separate facts that fail independently. Alertmanager can tell you it dispatched a notification, never that anything received it; this process taking the call says nothing about whether a human was reached. Reading only the first as if it were the second is how a pager stays silent for months behind a log where everything looks fine.  The ring is PROCESS-LOCAL and bounded to the last 200 lines. Both are the point: a record that outlived the process that took the call would be a claim about something nobody observed, and an unbounded log is a memory leak with a nice name. A restart empties it.
  Future<void> getO11yAlertsLast() async {
    final response = await getO11yAlertsLastWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists the attributes usable as an aggregate target for the given telemetry and operator — what a filter builder offers after the aggregation is chosen.
  ///
  /// Lists the attributes usable as an aggregate target for the given telemetry and operator — what a filter builder offers after the aggregation is chosen.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the attributes come from — traces, logs, metrics or meter. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the attribute will be used under, e.g. count, avg, sum. The runtime requires it for non-metrics sources.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the attributes to those containing it.
  ///
  /// * [int] limit:
  ///   Limit caps how many attributes come back. Absent means 50.
  Future<Response> getO11yAutocompleteAggregateAttributesWithHttpInfo({ String? dataSource, String? aggregateOperator, String? searchText, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/autocomplete/aggregate_attributes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
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

  /// Lists the attributes usable as an aggregate target for the given telemetry and operator — what a filter builder offers after the aggregation is chosen.
  ///
  /// Lists the attributes usable as an aggregate target for the given telemetry and operator — what a filter builder offers after the aggregation is chosen.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the attributes come from — traces, logs, metrics or meter. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the attribute will be used under, e.g. count, avg, sum. The runtime requires it for non-metrics sources.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the attributes to those containing it.
  ///
  /// * [int] limit:
  ///   Limit caps how many attributes come back. Absent means 50.
  Future<O11yO11yAggregateAttributesOut?> getO11yAutocompleteAggregateAttributes({ String? dataSource, String? aggregateOperator, String? searchText, int? limit, }) async {
    final response = await getO11yAutocompleteAggregateAttributesWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, searchText: searchText, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yAggregateAttributesOut',) as O11yO11yAggregateAttributesOut;
    
    }
    return null;
  }

  /// Lists the attribute keys available for filtering the given telemetry, each with its data type and whether it is a materialized column.
  ///
  /// Lists the attribute keys available for filtering the given telemetry, each with its data type and whether it is a materialized column.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — traces, logs, metrics or meter. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<Response> getO11yAutocompleteAttributeKeysWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/autocomplete/attribute_keys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the attribute keys available for filtering the given telemetry, each with its data type and whether it is a materialized column.
  ///
  /// Lists the attribute keys available for filtering the given telemetry, each with its data type and whether it is a materialized column.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — traces, logs, metrics or meter. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<O11yO11yAttributeKeysOut?> getO11yAutocompleteAttributeKeys({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yAutocompleteAttributeKeysWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yAttributeKeysOut',) as O11yO11yAttributeKeysOut;
    
    }
    return null;
  }

  /// Lists the values one attribute key has taken — string, number and bool values in their own lists — for completing a filter.
  ///
  /// Lists the values one attribute key has taken — string, number and bool values in their own lists — for completing a filter.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — traces, logs or metrics. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<Response> getO11yAutocompleteAttributeValuesWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/autocomplete/attribute_values';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (attributeKey != null) {
      queryParams.addAll(_queryParams('', 'attributeKey', attributeKey));
    }
    if (filterAttributeKeyDataType != null) {
      queryParams.addAll(_queryParams('', 'filterAttributeKeyDataType', filterAttributeKeyDataType));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the values one attribute key has taken — string, number and bool values in their own lists — for completing a filter.
  ///
  /// Lists the values one attribute key has taken — string, number and bool values in their own lists — for completing a filter.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — traces, logs or metrics. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<O11yO11yAttributeValuesOut?> getO11yAutocompleteAttributeValues({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yAutocompleteAttributeValuesWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, attributeKey: attributeKey, filterAttributeKeyDataType: filterAttributeKeyDataType, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yAttributeValuesOut',) as O11yO11yAttributeValuesOut;
    
    }
    return null;
  }

  /// Reports how much of the Hanzo fleet is up — the current per-service inventory plus an up-versus-reporting trend across the window.
  ///
  /// Reports how much of the Hanzo fleet is up — the current per-service inventory plus an up-versus-reporting trend across the window. Both come from the fleet prober's own measurements: every service is asked its health URL every 30 seconds, so a service is listed as down because it did not answer, never because something failed to collect it. PLATFORM SUDO ONLY — this is the whole fleet's inventory, not tenant data, so every customer is 403. An unreachable telemetry store answers 503 rather than an empty trend, because a board of zeroes and a fleet that is down look identical.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] range:
  ///   Range is the trend window in seconds. Default 3600, capped at 604800 (7d).
  ///
  /// * [int] stepSec:
  ///   StepSec is the bucket width in seconds, clamped to [30, 3600]. Absent picks ~60 buckets across the range.
  Future<Response> getO11yAvailabilityWithHttpInfo({ int? range, int? stepSec, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/availability';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
    }
    if (stepSec != null) {
      queryParams.addAll(_queryParams('', 'stepSec', stepSec));
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

  /// Reports how much of the Hanzo fleet is up — the current per-service inventory plus an up-versus-reporting trend across the window.
  ///
  /// Reports how much of the Hanzo fleet is up — the current per-service inventory plus an up-versus-reporting trend across the window. Both come from the fleet prober's own measurements: every service is asked its health URL every 30 seconds, so a service is listed as down because it did not answer, never because something failed to collect it. PLATFORM SUDO ONLY — this is the whole fleet's inventory, not tenant data, so every customer is 403. An unreachable telemetry store answers 503 rather than an empty trend, because a board of zeroes and a fleet that is down look identical.
  ///
  /// Parameters:
  ///
  /// * [int] range:
  ///   Range is the trend window in seconds. Default 3600, capped at 604800 (7d).
  ///
  /// * [int] stepSec:
  ///   StepSec is the bucket width in seconds, clamped to [30, 3600]. Absent picks ~60 buckets across the range.
  Future<O11yAvailabilityResponse?> getO11yAvailability({ int? range, int? stepSec, }) async {
    final response = await getO11yAvailabilityWithHttpInfo( range: range, stepSec: stepSec, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yAvailabilityResponse',) as O11yAvailabilityResponse;
    
    }
    return null;
  }

  /// Lists the metric attribute keys Kubernetes clusters report, for building cluster filters.
  ///
  /// Lists the metric attribute keys Kubernetes clusters report, for building cluster filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<Response> getO11yClustersAttributeKeysWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/clusters/attribute_keys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the metric attribute keys Kubernetes clusters report, for building cluster filters.
  ///
  /// Lists the metric attribute keys Kubernetes clusters report, for building cluster filters.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<O11yO11yInfraAttributeKeysOut?> getO11yClustersAttributeKeys({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yClustersAttributeKeysWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeKeysOut',) as O11yO11yInfraAttributeKeysOut;
    
    }
    return null;
  }

  /// Lists the values one cluster attribute key has taken, for building cluster filters.
  ///
  /// Lists the values one cluster attribute key has taken, for building cluster filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<Response> getO11yClustersAttributeValuesWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/clusters/attribute_values';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (attributeKey != null) {
      queryParams.addAll(_queryParams('', 'attributeKey', attributeKey));
    }
    if (filterAttributeKeyDataType != null) {
      queryParams.addAll(_queryParams('', 'filterAttributeKeyDataType', filterAttributeKeyDataType));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the values one cluster attribute key has taken, for building cluster filters.
  ///
  /// Lists the values one cluster attribute key has taken, for building cluster filters.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<O11yO11yInfraAttributeValuesOut?> getO11yClustersAttributeValues({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yClustersAttributeValuesWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, attributeKey: attributeKey, filterAttributeKeyDataType: filterAttributeKeyDataType, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeValuesOut',) as O11yO11yInfraAttributeValuesOut;
    
    }
    return null;
  }

  /// Complete a Google sign-in
  ///
  /// The callback Google redirects a user back to after they approve the sign-in. It exchanges the authorization code, establishes the session and answers 303 to the console.  The answer is a Location header and no body, which is why it is not a typed operation — declaring a JSON response for a redirect would publish a shape that does not exist and hide the header that is the entire point.  UNAUTHENTICATED by necessity: it is how a caller GETS a principal, so requiring one would be circular. It is not an open endpoint — the code it carries is single-use and verified against the provider.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yCompleteGoogleWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/complete/google';

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

  /// Complete a Google sign-in
  ///
  /// The callback Google redirects a user back to after they approve the sign-in. It exchanges the authorization code, establishes the session and answers 303 to the console.  The answer is a Location header and no body, which is why it is not a typed operation — declaring a JSON response for a redirect would publish a shape that does not exist and hide the header that is the entire point.  UNAUTHENTICATED by necessity: it is how a caller GETS a principal, so requiring one would be circular. It is not an open endpoint — the code it carries is single-use and verified against the provider.
  Future<void> getO11yCompleteGoogle() async {
    final response = await getO11yCompleteGoogleWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Complete a generic OIDC sign-in
  ///
  /// The callback any configured OIDC provider redirects back to. Same shape and same reasoning as the Google callback: the code is exchanged, the session is established, and the answer is a 303 to the console rather than a body.  UNAUTHENTICATED by necessity — this is the act of obtaining a principal, and the provider's own code is what authenticates it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yCompleteOidcWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/complete/oidc';

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

  /// Complete a generic OIDC sign-in
  ///
  /// The callback any configured OIDC provider redirects back to. Same shape and same reasoning as the Google callback: the code is exchanged, the session is established, and the answer is a 303 to the console rather than a body.  UNAUTHENTICATED by necessity — this is the act of obtaining a principal, and the provider's own code is what authenticates it.
  Future<void> getO11yCompleteOidc() async {
    final response = await getO11yCompleteOidcWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists the metric attribute keys Kubernetes daemonsets report, for building daemonset filters.
  ///
  /// Lists the metric attribute keys Kubernetes daemonsets report, for building daemonset filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<Response> getO11yDaemonsetsAttributeKeysWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/daemonsets/attribute_keys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the metric attribute keys Kubernetes daemonsets report, for building daemonset filters.
  ///
  /// Lists the metric attribute keys Kubernetes daemonsets report, for building daemonset filters.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<O11yO11yInfraAttributeKeysOut?> getO11yDaemonsetsAttributeKeys({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yDaemonsetsAttributeKeysWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeKeysOut',) as O11yO11yInfraAttributeKeysOut;
    
    }
    return null;
  }

  /// Lists the values one daemonset attribute key has taken, for building daemonset filters.
  ///
  /// Lists the values one daemonset attribute key has taken, for building daemonset filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<Response> getO11yDaemonsetsAttributeValuesWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/daemonsets/attribute_values';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (attributeKey != null) {
      queryParams.addAll(_queryParams('', 'attributeKey', attributeKey));
    }
    if (filterAttributeKeyDataType != null) {
      queryParams.addAll(_queryParams('', 'filterAttributeKeyDataType', filterAttributeKeyDataType));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the values one daemonset attribute key has taken, for building daemonset filters.
  ///
  /// Lists the values one daemonset attribute key has taken, for building daemonset filters.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<O11yO11yInfraAttributeValuesOut?> getO11yDaemonsetsAttributeValues({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yDaemonsetsAttributeValuesWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, attributeKey: attributeKey, filterAttributeKeyDataType: filterAttributeKeyDataType, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeValuesOut',) as O11yO11yInfraAttributeValuesOut;
    
    }
    return null;
  }

  /// Lists the metric attribute keys Kubernetes deployments report, for building deployment filters.
  ///
  /// Lists the metric attribute keys Kubernetes deployments report, for building deployment filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<Response> getO11yDeploymentsAttributeKeysWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/deployments/attribute_keys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the metric attribute keys Kubernetes deployments report, for building deployment filters.
  ///
  /// Lists the metric attribute keys Kubernetes deployments report, for building deployment filters.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<O11yO11yInfraAttributeKeysOut?> getO11yDeploymentsAttributeKeys({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yDeploymentsAttributeKeysWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeKeysOut',) as O11yO11yInfraAttributeKeysOut;
    
    }
    return null;
  }

  /// Lists the values one deployment attribute key has taken, for building deployment filters.
  ///
  /// Lists the values one deployment attribute key has taken, for building deployment filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<Response> getO11yDeploymentsAttributeValuesWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/deployments/attribute_values';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (attributeKey != null) {
      queryParams.addAll(_queryParams('', 'attributeKey', attributeKey));
    }
    if (filterAttributeKeyDataType != null) {
      queryParams.addAll(_queryParams('', 'filterAttributeKeyDataType', filterAttributeKeyDataType));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the values one deployment attribute key has taken, for building deployment filters.
  ///
  /// Lists the values one deployment attribute key has taken, for building deployment filters.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<O11yO11yInfraAttributeValuesOut?> getO11yDeploymentsAttributeValues({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yDeploymentsAttributeValuesWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, attributeKey: attributeKey, filterAttributeKeyDataType: filterAttributeKeyDataType, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeValuesOut',) as O11yO11yInfraAttributeValuesOut;
    
    }
    return null;
  }

  /// Lists the storage disks the datastore reports, with their names and types.
  ///
  /// Lists the storage disks the datastore reports, with their names and types.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yDisksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/disks';

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

  /// Lists the storage disks the datastore reports, with their names and types.
  ///
  /// Lists the storage disks the datastore reports, with their names and types.  Callers need the viewer role; the runtime's own gate enforces it.
  Future<List<O11yO11yDisk>?> getO11yDisks() async {
    final response = await getO11yDisksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<O11yO11yDisk>') as List)
        .cast<O11yO11yDisk>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns one exception instance and the span it happened on, by its error id within a group at a timestamp.
  ///
  /// Returns one exception instance and the span it happened on, by its error id within a group at a timestamp.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] timestamp (required):
  ///   Timestamp is the instance's time as a nanosecond epoch spelled as a string. Required.
  ///
  /// * [String] groupID (required):
  ///   GroupID is the exception group the instance belongs to. Required.
  ///
  /// * [String] errorID:
  ///   ErrorID is the exception instance id. Required by errorFromErrorID and nextPrevErrorIDs; unused by errorFromGroupID.
  Future<Response> getO11yErrorfromerroridWithHttpInfo(String timestamp, String groupID, { String? errorID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/errorFromErrorID';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'timestamp', timestamp));
      queryParams.addAll(_queryParams('', 'groupID', groupID));
    if (errorID != null) {
      queryParams.addAll(_queryParams('', 'errorID', errorID));
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

  /// Returns one exception instance and the span it happened on, by its error id within a group at a timestamp.
  ///
  /// Returns one exception instance and the span it happened on, by its error id within a group at a timestamp.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] timestamp (required):
  ///   Timestamp is the instance's time as a nanosecond epoch spelled as a string. Required.
  ///
  /// * [String] groupID (required):
  ///   GroupID is the exception group the instance belongs to. Required.
  ///
  /// * [String] errorID:
  ///   ErrorID is the exception instance id. Required by errorFromErrorID and nextPrevErrorIDs; unused by errorFromGroupID.
  Future<O11yO11yErrorWithSpan?> getO11yErrorfromerrorid(String timestamp, String groupID, { String? errorID, }) async {
    final response = await getO11yErrorfromerroridWithHttpInfo(timestamp, groupID,  errorID: errorID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yErrorWithSpan',) as O11yO11yErrorWithSpan;
    
    }
    return null;
  }

  /// Returns the representative exception instance of a group at a timestamp, and the span it happened on.
  ///
  /// Returns the representative exception instance of a group at a timestamp, and the span it happened on.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] timestamp (required):
  ///   Timestamp is the instance's time as a nanosecond epoch spelled as a string. Required.
  ///
  /// * [String] groupID (required):
  ///   GroupID is the exception group the instance belongs to. Required.
  ///
  /// * [String] errorID:
  ///   ErrorID is the exception instance id. Required by errorFromErrorID and nextPrevErrorIDs; unused by errorFromGroupID.
  Future<Response> getO11yErrorfromgroupidWithHttpInfo(String timestamp, String groupID, { String? errorID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/errorFromGroupID';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'timestamp', timestamp));
      queryParams.addAll(_queryParams('', 'groupID', groupID));
    if (errorID != null) {
      queryParams.addAll(_queryParams('', 'errorID', errorID));
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

  /// Returns the representative exception instance of a group at a timestamp, and the span it happened on.
  ///
  /// Returns the representative exception instance of a group at a timestamp, and the span it happened on.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] timestamp (required):
  ///   Timestamp is the instance's time as a nanosecond epoch spelled as a string. Required.
  ///
  /// * [String] groupID (required):
  ///   GroupID is the exception group the instance belongs to. Required.
  ///
  /// * [String] errorID:
  ///   ErrorID is the exception instance id. Required by errorFromErrorID and nextPrevErrorIDs; unused by errorFromGroupID.
  Future<O11yO11yErrorWithSpan?> getO11yErrorfromgroupid(String timestamp, String groupID, { String? errorID, }) async {
    final response = await getO11yErrorfromgroupidWithHttpInfo(timestamp, groupID,  errorID: errorID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yErrorWithSpan',) as O11yO11yErrorWithSpan;
    
    }
    return null;
  }

  /// Lists the caller's org's grouped error issues (by fingerprint) with status, level, counts and first/last-seen.
  ///
  /// Lists the caller's org's grouped error issues (by fingerprint) with status, level, counts and first/last-seen.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status narrows to one lifecycle state: unresolved, resolved or ignored.
  ///
  /// * [String] level:
  ///   Level narrows to one severity, e.g. error, warning, info.
  ///
  /// * [String] environment:
  ///   Environment narrows to one deployment environment.
  ///
  /// * [String] serviceName:
  ///   ServiceName narrows to one reporting service.
  ///
  /// * [String] query:
  ///   Query narrows to issues whose text contains it.
  ///
  /// * [String] sort:
  ///   Sort orders the page, e.g. lastSeen, firstSeen, count.
  ///
  /// * [int] offset:
  ///   Offset is how many issues to skip. Zero starts at the first.
  ///
  /// * [int] limit:
  ///   Limit caps how many issues come back. Zero means the default.
  Future<Response> getO11yErrortrackingIssuesWithHttpInfo({ String? status, String? level, String? environment, String? serviceName, String? query, String? sort, int? offset, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/errortracking/issues';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (level != null) {
      queryParams.addAll(_queryParams('', 'level', level));
    }
    if (environment != null) {
      queryParams.addAll(_queryParams('', 'environment', environment));
    }
    if (serviceName != null) {
      queryParams.addAll(_queryParams('', 'serviceName', serviceName));
    }
    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
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

  /// Lists the caller's org's grouped error issues (by fingerprint) with status, level, counts and first/last-seen.
  ///
  /// Lists the caller's org's grouped error issues (by fingerprint) with status, level, counts and first/last-seen.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status narrows to one lifecycle state: unresolved, resolved or ignored.
  ///
  /// * [String] level:
  ///   Level narrows to one severity, e.g. error, warning, info.
  ///
  /// * [String] environment:
  ///   Environment narrows to one deployment environment.
  ///
  /// * [String] serviceName:
  ///   ServiceName narrows to one reporting service.
  ///
  /// * [String] query:
  ///   Query narrows to issues whose text contains it.
  ///
  /// * [String] sort:
  ///   Sort orders the page, e.g. lastSeen, firstSeen, count.
  ///
  /// * [int] offset:
  ///   Offset is how many issues to skip. Zero starts at the first.
  ///
  /// * [int] limit:
  ///   Limit caps how many issues come back. Zero means the default.
  Future<O11yO11yErrorIssuesOut?> getO11yErrortrackingIssues({ String? status, String? level, String? environment, String? serviceName, String? query, String? sort, int? offset, int? limit, }) async {
    final response = await getO11yErrortrackingIssuesWithHttpInfo( status: status, level: level, environment: environment, serviceName: serviceName, query: query, sort: sort, offset: offset, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yErrorIssuesOut',) as O11yO11yErrorIssuesOut;
    
    }
    return null;
  }

  /// Returns one grouped issue with its latest occurrence sample.
  ///
  /// Returns one grouped issue with its latest occurrence sample.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the issue id.
  Future<Response> getO11yErrortrackingIssuesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/errortracking/issues/{id}'
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

  /// Returns one grouped issue with its latest occurrence sample.
  ///
  /// Returns one grouped issue with its latest occurrence sample.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the issue id.
  Future<O11yO11yErrorGettableIssueOut?> getO11yErrortrackingIssuesById(String id,) async {
    final response = await getO11yErrortrackingIssuesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yErrorGettableIssueOut',) as O11yO11yErrorGettableIssueOut;
    
    }
    return null;
  }

  /// Lists the caller's org's saved explorer views, optionally narrowed to one source page, name or category.
  ///
  /// Lists the caller's org's saved explorer views, optionally narrowed to one source page, name or category.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sourcePage:
  ///   SourcePage narrows the views to one source page, e.g. traces, logs.
  ///
  /// * [String] name:
  ///   Name narrows the views to one name.
  ///
  /// * [String] category:
  ///   Category narrows the views to one category.
  Future<Response> getO11yExplorerViewsWithHttpInfo({ String? sourcePage, String? name, String? category, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/explorer/views';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sourcePage != null) {
      queryParams.addAll(_queryParams('', 'sourcePage', sourcePage));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
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

  /// Lists the caller's org's saved explorer views, optionally narrowed to one source page, name or category.
  ///
  /// Lists the caller's org's saved explorer views, optionally narrowed to one source page, name or category.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] sourcePage:
  ///   SourcePage narrows the views to one source page, e.g. traces, logs.
  ///
  /// * [String] name:
  ///   Name narrows the views to one name.
  ///
  /// * [String] category:
  ///   Category narrows the views to one category.
  Future<O11yO11ySavedViewListOut?> getO11yExplorerViews({ String? sourcePage, String? name, String? category, }) async {
    final response = await getO11yExplorerViewsWithHttpInfo( sourcePage: sourcePage, name: name, category: category, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySavedViewListOut',) as O11yO11ySavedViewListOut;
    
    }
    return null;
  }

  /// Returns one saved explorer view by id.
  ///
  /// Returns one saved explorer view by id.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] viewId (required):
  ///   ViewID is the view's id.
  Future<Response> getO11yExplorerViewsByViewidWithHttpInfo(String viewId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/explorer/views/{viewId}'
      .replaceAll('{viewId}', viewId);

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

  /// Returns one saved explorer view by id.
  ///
  /// Returns one saved explorer view by id.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] viewId (required):
  ///   ViewID is the view's id.
  Future<O11yO11ySavedViewOut?> getO11yExplorerViewsByViewid(String viewId,) async {
    final response = await getO11yExplorerViewsByViewidWithHttpInfo(viewId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySavedViewOut',) as O11yO11ySavedViewOut;
    
    }
    return null;
  }

  /// Returns the supported feature flags and their resolved values for the caller's org.
  ///
  /// Returns the supported feature flags and their resolved values for the caller's org.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yFeaturesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/features';

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

  /// Returns the supported feature flags and their resolved values for the caller's org.
  ///
  /// Returns the supported feature flags and their resolved values for the caller's org.  Callers need the viewer role; the runtime's own gate enforces it.
  Future<O11yO11yFeaturesOut?> getO11yFeatures() async {
    final response = await getO11yFeaturesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFeaturesOut',) as O11yO11yFeaturesOut;
    
    }
    return null;
  }

  /// Returns the telemetry field keys matching the selector — the signal's fields grouped by name, and whether the catalog is complete.
  ///
  /// Returns the telemetry field keys matching the selector — the signal's fields grouped by name, and whether the catalog is complete.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] signal:
  ///   Signal is the telemetry to read the fields of — traces, logs or metrics.
  ///
  /// * [String] source_:
  ///   Source narrows the fields to one source within the signal.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back.
  ///
  /// * [int] startUnixMilli:
  ///   StartUnixMilli is the window start as a unix millisecond epoch. Zero reads as unset.
  ///
  /// * [int] endUnixMilli:
  ///   EndUnixMilli is the window end as a unix millisecond epoch. Zero reads as unset.
  ///
  /// * [String] fieldContext:
  ///   FieldContext narrows the keys to one context — resource, scope, attribute, span, log or metric.
  ///
  /// * [String] fieldDataType:
  ///   FieldDataType narrows the keys to one data type.
  ///
  /// * [String] metricName:
  ///   MetricName narrows the keys to those on one metric.
  ///
  /// * [String] metricNamespace:
  ///   MetricNamespace narrows the keys to one metric namespace.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  Future<Response> getO11yFieldsKeysWithHttpInfo({ String? signal, String? source_, int? limit, int? startUnixMilli, int? endUnixMilli, String? fieldContext, String? fieldDataType, String? metricName, String? metricNamespace, String? searchText, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/fields/keys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (signal != null) {
      queryParams.addAll(_queryParams('', 'signal', signal));
    }
    if (source_ != null) {
      queryParams.addAll(_queryParams('', 'source', source_));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (startUnixMilli != null) {
      queryParams.addAll(_queryParams('', 'startUnixMilli', startUnixMilli));
    }
    if (endUnixMilli != null) {
      queryParams.addAll(_queryParams('', 'endUnixMilli', endUnixMilli));
    }
    if (fieldContext != null) {
      queryParams.addAll(_queryParams('', 'fieldContext', fieldContext));
    }
    if (fieldDataType != null) {
      queryParams.addAll(_queryParams('', 'fieldDataType', fieldDataType));
    }
    if (metricName != null) {
      queryParams.addAll(_queryParams('', 'metricName', metricName));
    }
    if (metricNamespace != null) {
      queryParams.addAll(_queryParams('', 'metricNamespace', metricNamespace));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
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

  /// Returns the telemetry field keys matching the selector — the signal's fields grouped by name, and whether the catalog is complete.
  ///
  /// Returns the telemetry field keys matching the selector — the signal's fields grouped by name, and whether the catalog is complete.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] signal:
  ///   Signal is the telemetry to read the fields of — traces, logs or metrics.
  ///
  /// * [String] source_:
  ///   Source narrows the fields to one source within the signal.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back.
  ///
  /// * [int] startUnixMilli:
  ///   StartUnixMilli is the window start as a unix millisecond epoch. Zero reads as unset.
  ///
  /// * [int] endUnixMilli:
  ///   EndUnixMilli is the window end as a unix millisecond epoch. Zero reads as unset.
  ///
  /// * [String] fieldContext:
  ///   FieldContext narrows the keys to one context — resource, scope, attribute, span, log or metric.
  ///
  /// * [String] fieldDataType:
  ///   FieldDataType narrows the keys to one data type.
  ///
  /// * [String] metricName:
  ///   MetricName narrows the keys to those on one metric.
  ///
  /// * [String] metricNamespace:
  ///   MetricNamespace narrows the keys to one metric namespace.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  Future<O11yO11yFieldKeysOut?> getO11yFieldsKeys({ String? signal, String? source_, int? limit, int? startUnixMilli, int? endUnixMilli, String? fieldContext, String? fieldDataType, String? metricName, String? metricNamespace, String? searchText, }) async {
    final response = await getO11yFieldsKeysWithHttpInfo( signal: signal, source_: source_, limit: limit, startUnixMilli: startUnixMilli, endUnixMilli: endUnixMilli, fieldContext: fieldContext, fieldDataType: fieldDataType, metricName: metricName, metricNamespace: metricNamespace, searchText: searchText, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFieldKeysOut',) as O11yO11yFieldKeysOut;
    
    }
    return null;
  }

  /// Returns the values one telemetry field has taken — string, bool, number and related values — and whether the value list is complete.
  ///
  /// Returns the values one telemetry field has taken — string, bool, number and related values — and whether the value list is complete.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] signal:
  ///   Signal is the telemetry to read the field of — traces, logs or metrics.
  ///
  /// * [String] source_:
  ///   Source narrows the field to one source within the signal.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back.
  ///
  /// * [int] startUnixMilli:
  ///   StartUnixMilli is the window start as a unix millisecond epoch. Zero reads as unset.
  ///
  /// * [int] endUnixMilli:
  ///   EndUnixMilli is the window end as a unix millisecond epoch. Zero reads as unset.
  ///
  /// * [String] fieldContext:
  ///   FieldContext narrows the field to one context.
  ///
  /// * [String] fieldDataType:
  ///   FieldDataType narrows the field to one data type.
  ///
  /// * [String] metricName:
  ///   MetricName narrows the field to one metric.
  ///
  /// * [String] metricNamespace:
  ///   MetricNamespace narrows the field to one metric namespace.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] name:
  ///   Name is the field whose values to read.
  ///
  /// * [String] existingQuery:
  ///   ExistingQuery is the query the field appears in, so related values can be suggested for it.
  Future<Response> getO11yFieldsValuesWithHttpInfo({ String? signal, String? source_, int? limit, int? startUnixMilli, int? endUnixMilli, String? fieldContext, String? fieldDataType, String? metricName, String? metricNamespace, String? searchText, String? name, String? existingQuery, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/fields/values';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (signal != null) {
      queryParams.addAll(_queryParams('', 'signal', signal));
    }
    if (source_ != null) {
      queryParams.addAll(_queryParams('', 'source', source_));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (startUnixMilli != null) {
      queryParams.addAll(_queryParams('', 'startUnixMilli', startUnixMilli));
    }
    if (endUnixMilli != null) {
      queryParams.addAll(_queryParams('', 'endUnixMilli', endUnixMilli));
    }
    if (fieldContext != null) {
      queryParams.addAll(_queryParams('', 'fieldContext', fieldContext));
    }
    if (fieldDataType != null) {
      queryParams.addAll(_queryParams('', 'fieldDataType', fieldDataType));
    }
    if (metricName != null) {
      queryParams.addAll(_queryParams('', 'metricName', metricName));
    }
    if (metricNamespace != null) {
      queryParams.addAll(_queryParams('', 'metricNamespace', metricNamespace));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (existingQuery != null) {
      queryParams.addAll(_queryParams('', 'existingQuery', existingQuery));
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

  /// Returns the values one telemetry field has taken — string, bool, number and related values — and whether the value list is complete.
  ///
  /// Returns the values one telemetry field has taken — string, bool, number and related values — and whether the value list is complete.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] signal:
  ///   Signal is the telemetry to read the field of — traces, logs or metrics.
  ///
  /// * [String] source_:
  ///   Source narrows the field to one source within the signal.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back.
  ///
  /// * [int] startUnixMilli:
  ///   StartUnixMilli is the window start as a unix millisecond epoch. Zero reads as unset.
  ///
  /// * [int] endUnixMilli:
  ///   EndUnixMilli is the window end as a unix millisecond epoch. Zero reads as unset.
  ///
  /// * [String] fieldContext:
  ///   FieldContext narrows the field to one context.
  ///
  /// * [String] fieldDataType:
  ///   FieldDataType narrows the field to one data type.
  ///
  /// * [String] metricName:
  ///   MetricName narrows the field to one metric.
  ///
  /// * [String] metricNamespace:
  ///   MetricNamespace narrows the field to one metric namespace.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] name:
  ///   Name is the field whose values to read.
  ///
  /// * [String] existingQuery:
  ///   ExistingQuery is the query the field appears in, so related values can be suggested for it.
  Future<O11yO11yFieldValuesOut?> getO11yFieldsValues({ String? signal, String? source_, int? limit, int? startUnixMilli, int? endUnixMilli, String? fieldContext, String? fieldDataType, String? metricName, String? metricNamespace, String? searchText, String? name, String? existingQuery, }) async {
    final response = await getO11yFieldsValuesWithHttpInfo( signal: signal, source_: source_, limit: limit, startUnixMilli: startUnixMilli, endUnixMilli: endUnixMilli, fieldContext: fieldContext, fieldDataType: fieldDataType, metricName: metricName, metricNamespace: metricNamespace, searchText: searchText, name: name, existingQuery: existingQuery, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFieldValuesOut',) as O11yO11yFieldValuesOut;
    
    }
    return null;
  }

  /// Suggests attribute keys and example filter queries for the query builder, seeded by what the org's own telemetry carries.
  ///
  /// Suggests attribute keys and example filter queries for the query builder, seeded by what the org's own telemetry carries. Only the logs data source is supported today.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource (required):
  ///   DataSource is the signal suggestions are drawn from; only logs is supported today. Required.
  ///
  /// * [String] searchText:
  ///   SearchText narrows attribute suggestions to keys containing it.
  ///
  /// * [String] existingFilter:
  ///   ExistingFilter is the current filter set, JSON base64url-encoded, so example queries build on it rather than repeat it.
  ///
  /// * [int] attributesLimit:
  ///   AttributesLimit caps how many attribute keys come back.
  ///
  /// * [int] examplesLimit:
  ///   ExamplesLimit caps how many example queries come back.
  Future<Response> getO11yFilterSuggestionsWithHttpInfo(String dataSource, { String? searchText, String? existingFilter, int? attributesLimit, int? examplesLimit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/filter_suggestions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (existingFilter != null) {
      queryParams.addAll(_queryParams('', 'existingFilter', existingFilter));
    }
    if (attributesLimit != null) {
      queryParams.addAll(_queryParams('', 'attributesLimit', attributesLimit));
    }
    if (examplesLimit != null) {
      queryParams.addAll(_queryParams('', 'examplesLimit', examplesLimit));
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

  /// Suggests attribute keys and example filter queries for the query builder, seeded by what the org's own telemetry carries.
  ///
  /// Suggests attribute keys and example filter queries for the query builder, seeded by what the org's own telemetry carries. Only the logs data source is supported today.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource (required):
  ///   DataSource is the signal suggestions are drawn from; only logs is supported today. Required.
  ///
  /// * [String] searchText:
  ///   SearchText narrows attribute suggestions to keys containing it.
  ///
  /// * [String] existingFilter:
  ///   ExistingFilter is the current filter set, JSON base64url-encoded, so example queries build on it rather than repeat it.
  ///
  /// * [int] attributesLimit:
  ///   AttributesLimit caps how many attribute keys come back.
  ///
  /// * [int] examplesLimit:
  ///   ExamplesLimit caps how many example queries come back.
  Future<O11yO11yFilterSuggestionsOut?> getO11yFilterSuggestions(String dataSource, { String? searchText, String? existingFilter, int? attributesLimit, int? examplesLimit, }) async {
    final response = await getO11yFilterSuggestionsWithHttpInfo(dataSource,  searchText: searchText, existingFilter: existingFilter, attributesLimit: attributesLimit, examplesLimit: examplesLimit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFilterSuggestionsOut',) as O11yO11yFilterSuggestionsOut;
    
    }
    return null;
  }

  /// Returns the deployment's global configuration: its public endpoints and which identity providers are enabled.
  ///
  /// Returns the deployment's global configuration: its public endpoints and which identity providers are enabled. Open by design — the sign-in page reads it before anyone is signed in.  Open by design; the runtime's own gate is OpenAccess.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yGlobalConfigWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/global/config';

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

  /// Returns the deployment's global configuration: its public endpoints and which identity providers are enabled.
  ///
  /// Returns the deployment's global configuration: its public endpoints and which identity providers are enabled. Open by design — the sign-in page reads it before anyone is signed in.  Open by design; the runtime's own gate is OpenAccess.
  Future<O11yO11yGlobalConfigOut?> getO11yGlobalConfig() async {
    final response = await getO11yGlobalConfigWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yGlobalConfigOut',) as O11yO11yGlobalConfigOut;
    
    }
    return null;
  }

  /// Reports service health.
  ///
  /// Reports service health. With live set, the datastore connection is checked too and an unhealthy store refuses with 503.  Open by design; the runtime's own gate is OpenAccess.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] live:
  ///   Live also checks the datastore connection; an unreachable store refuses with 503.
  Future<Response> getO11yHealthWithHttpInfo({ bool? live, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/health';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (live != null) {
      queryParams.addAll(_queryParams('', 'live', live));
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

  /// Reports service health.
  ///
  /// Reports service health. With live set, the datastore connection is checked too and an unhealthy store refuses with 503.  Open by design; the runtime's own gate is OpenAccess.
  ///
  /// Parameters:
  ///
  /// * [bool] live:
  ///   Live also checks the datastore connection; an unreachable store refuses with 503.
  Future<O11yO11yHealthOut?> getO11yHealth({ bool? live, }) async {
    final response = await getO11yHealthWithHttpInfo( live: live, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yHealthOut',) as O11yO11yHealthOut;
    
    }
    return null;
  }

  /// Health of the observability runtime's services
  ///
  /// Reports whether every service in the runtime's registry is healthy, and names them grouped by state — so a failure says WHICH component is down, not merely that something is. An unhealthy registry answers 503, not a 200 with a false flag inside, so a plain status check cannot read a sick runtime as well.  UNAUTHENTICATED by design, like the other two probes: it carries no tenant data and is reached by k8s and by external checks that hold no principal.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yHealthzWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/healthz';

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

  /// Health of the observability runtime's services
  ///
  /// Reports whether every service in the runtime's registry is healthy, and names them grouped by state — so a failure says WHICH component is down, not merely that something is. An unhealthy registry answers 503, not a 200 with a false flag inside, so a plain status check cannot read a sick runtime as well.  UNAUTHENTICATED by design, like the other two probes: it carries no tenant data and is reached by k8s and by external checks that hold no principal.
  Future<void> getO11yHealthz() async {
    final response = await getO11yHealthzWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists the metric attribute keys hosts report, for building host filters — each with its data type and whether it is a materialized column.
  ///
  /// Lists the metric attribute keys hosts report, for building host filters — each with its data type and whether it is a materialized column.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<Response> getO11yHostsAttributeKeysWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/hosts/attribute_keys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the metric attribute keys hosts report, for building host filters — each with its data type and whether it is a materialized column.
  ///
  /// Lists the metric attribute keys hosts report, for building host filters — each with its data type and whether it is a materialized column.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<O11yO11yInfraAttributeKeysOut?> getO11yHostsAttributeKeys({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yHostsAttributeKeysWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeKeysOut',) as O11yO11yInfraAttributeKeysOut;
    
    }
    return null;
  }

  /// Lists the values one host attribute key has taken, for building host filters — string, number and bool values in their own lists.
  ///
  /// Lists the values one host attribute key has taken, for building host filters — string, number and bool values in their own lists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<Response> getO11yHostsAttributeValuesWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/hosts/attribute_values';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (attributeKey != null) {
      queryParams.addAll(_queryParams('', 'attributeKey', attributeKey));
    }
    if (filterAttributeKeyDataType != null) {
      queryParams.addAll(_queryParams('', 'filterAttributeKeyDataType', filterAttributeKeyDataType));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the values one host attribute key has taken, for building host filters — string, number and bool values in their own lists.
  ///
  /// Lists the values one host attribute key has taken, for building host filters — string, number and bool values in their own lists.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<O11yO11yInfraAttributeValuesOut?> getO11yHostsAttributeValues({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yHostsAttributeValuesWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, attributeKey: attributeKey, filterAttributeKeyDataType: filterAttributeKeyDataType, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeValuesOut',) as O11yO11yInfraAttributeValuesOut;
    
    }
    return null;
  }

  /// Reports whether the metrics and attributes an infra-monitoring section needs are being received — for each collector receiver or processor involved, what is present and what is missing, with a user-facing message and a docs link per missing piece.
  ///
  /// Reports whether the metrics and attributes an infra-monitoring section needs are being received — for each collector receiver or processor involved, what is present and what is missing, with a user-facing message and a docs link per missing piece. Ready is true only when nothing is missing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   Type is the section to check — hosts, processes, pods, nodes, deployments, daemonsets, statefulsets, jobs, namespaces, clusters or volumes. Required.
  Future<Response> getO11yInfraMonitoringChecksWithHttpInfo(String type,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/infra_monitoring/checks';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'type', type));

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

  /// Reports whether the metrics and attributes an infra-monitoring section needs are being received — for each collector receiver or processor involved, what is present and what is missing, with a user-facing message and a docs link per missing piece.
  ///
  /// Reports whether the metrics and attributes an infra-monitoring section needs are being received — for each collector receiver or processor involved, what is present and what is missing, with a user-facing message and a docs link per missing piece. Ready is true only when nothing is missing.
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   Type is the section to check — hosts, processes, pods, nodes, deployments, daemonsets, statefulsets, jobs, namespaces, clusters or volumes. Required.
  Future<O11yO11yInfraChecksOut?> getO11yInfraMonitoringChecks(String type,) async {
    final response = await getO11yInfraMonitoringChecksWithHttpInfo(type,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraChecksOut',) as O11yO11yInfraChecksOut;
    
    }
    return null;
  }

  /// Reports how far Kubernetes infra onboarding has progressed: which metric families have arrived and, per pod, which required metadata labels are present.
  ///
  /// Reports how far Kubernetes infra onboarding has progressed: which metric families have arrived and, per pod, which required metadata labels are present.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yInfraOnboardingK8sStatusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/infra_onboarding/k8s/status';

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

  /// Reports how far Kubernetes infra onboarding has progressed: which metric families have arrived and, per pod, which required metadata labels are present.
  ///
  /// Reports how far Kubernetes infra onboarding has progressed: which metric families have arrived and, per pod, which required metadata labels are present.  Callers need the viewer role; the runtime's own gate enforces it.
  Future<O11yO11yOnboardingOut?> getO11yInfraOnboardingK8sStatus() async {
    final response = await getO11yInfraOnboardingK8sStatusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yOnboardingOut',) as O11yO11yOnboardingOut;
    
    }
    return null;
  }

  /// Lists the metric attribute keys Kubernetes jobs report, for building job filters.
  ///
  /// Lists the metric attribute keys Kubernetes jobs report, for building job filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<Response> getO11yJobsAttributeKeysWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/jobs/attribute_keys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the metric attribute keys Kubernetes jobs report, for building job filters.
  ///
  /// Lists the metric attribute keys Kubernetes jobs report, for building job filters.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<O11yO11yInfraAttributeKeysOut?> getO11yJobsAttributeKeys({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yJobsAttributeKeysWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeKeysOut',) as O11yO11yInfraAttributeKeysOut;
    
    }
    return null;
  }

  /// Lists the values one job attribute key has taken, for building job filters.
  ///
  /// Lists the values one job attribute key has taken, for building job filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<Response> getO11yJobsAttributeValuesWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/jobs/attribute_values';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (attributeKey != null) {
      queryParams.addAll(_queryParams('', 'attributeKey', attributeKey));
    }
    if (filterAttributeKeyDataType != null) {
      queryParams.addAll(_queryParams('', 'filterAttributeKeyDataType', filterAttributeKeyDataType));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the values one job attribute key has taken, for building job filters.
  ///
  /// Lists the values one job attribute key has taken, for building job filters.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<O11yO11yInfraAttributeValuesOut?> getO11yJobsAttributeValues({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yJobsAttributeValuesWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, attributeKey: attributeKey, filterAttributeKeyDataType: filterAttributeKeyDataType, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeValuesOut',) as O11yO11yInfraAttributeValuesOut;
    
    }
    return null;
  }

  /// Lists the org's licenses.
  ///
  /// Lists the org's licenses. This build has no enterprise edition, so the list is intentionally empty.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yLicensesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/licenses';

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

  /// Lists the org's licenses.
  ///
  /// Lists the org's licenses. This build has no enterprise edition, so the list is intentionally empty.  Callers need the viewer role; the runtime's own gate enforces it.
  Future<O11yO11yLicensesOut?> getO11yLicenses() async {
    final response = await getO11yLicensesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLicensesOut',) as O11yO11yLicensesOut;
    
    }
    return null;
  }

  /// Activates the enterprise license.
  ///
  /// Activates the enterprise license. This build has no enterprise edition, so the licensing provider refuses it as unsupported.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yLicensesActiveWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/licenses/active';

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

  /// Activates the enterprise license.
  ///
  /// Activates the enterprise license. This build has no enterprise edition, so the licensing provider refuses it as unsupported.  Callers need the viewer role; the runtime's own gate enforces it.
  Future<O11yO11yLicenseActiveOut?> getO11yLicensesActive() async {
    final response = await getO11yLicensesActiveWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLicenseActiveOut',) as O11yO11yLicenseActiveOut;
    
    }
    return null;
  }

  /// Liveness of the observability process
  ///
  /// Answers 200 unconditionally while the process is running, and asserts NOTHING about the telemetry stores behind it. That is what makes it a liveness probe: a container that answers this is worth leaving alive, and restarting on a store outage would only remove the thing reporting the outage.  UNAUTHENTICATED by design, and one of exactly three /v1/o11y paths that are. It carries no tenant data, and gating it would break the k8s probes and the external health checks without protecting anything. Use the health probe, not this one, to ask whether the runtime can actually serve.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yLivezWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/livez';

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

  /// Liveness of the observability process
  ///
  /// Answers 200 unconditionally while the process is running, and asserts NOTHING about the telemetry stores behind it. That is what makes it a liveness probe: a container that answers this is worth leaving alive, and restarting on a store outage would only remove the thing reporting the outage.  UNAUTHENTICATED by design, and one of exactly three /v1/o11y paths that are. It carries no tenant data, and gating it would break the k8s probes and the external health checks without protecting anything. Use the health probe, not this one, to ask whether the runtime can actually serve.
  Future<void> getO11yLivez() async {
    final response = await getO11yLivezWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Report why an observability sign-in did not complete
  ///
  /// Where a failed sign-in callback lands. The module builds that redirect with a path and no host, so it can only be same-origin, and its assumption is that the console lives beside the API. Here the console is a separate host, so this answers as the API it belongs to rather than redirecting onward — a hostname baked into a shared surface is how one brand's identity ends up in front of another brand's customer.  401 with the provider's own reason, carried from the query the module already populated. Unauthenticated by necessity: it exists precisely for the case where no principal was established.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yLoginWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/login';

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

  /// Report why an observability sign-in did not complete
  ///
  /// Where a failed sign-in callback lands. The module builds that redirect with a path and no host, so it can only be same-origin, and its assumption is that the console lives beside the API. Here the console is a separate host, so this answers as the API it belongs to rather than redirecting onward — a hostname baked into a shared surface is how one brand's identity ends up in front of another brand's customer.  401 with the provider's own reason, carried from the query the module already populated. Unauthenticated by necessity: it exists precisely for the case where no principal was established.
  Future<void> getO11yLogin() async {
    final response = await getO11yLoginWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the most recent log records in the query window, newest first — each record an open object carrying its nanosecond timestamp and whatever fields the record was ingested with.
  ///
  /// Returns the most recent log records in the query window, newest first — each record an open object carrying its nanosecond timestamp and whatever fields the record was ingested with.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps how many records come back. Zero means the default of 100.
  ///
  /// * [int] timestampStart:
  ///   TimestampStart is the start of the window as a nanosecond epoch. Zero means fifteen minutes before the end.
  ///
  /// * [int] timestampEnd:
  ///   TimestampEnd is the end of the window as a nanosecond epoch. Zero means now.
  Future<Response> getO11yLogsWithHttpInfo({ int? limit, int? timestampStart, int? timestampEnd, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/logs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (timestampStart != null) {
      queryParams.addAll(_queryParams('', 'timestampStart', timestampStart));
    }
    if (timestampEnd != null) {
      queryParams.addAll(_queryParams('', 'timestampEnd', timestampEnd));
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

  /// Returns the most recent log records in the query window, newest first — each record an open object carrying its nanosecond timestamp and whatever fields the record was ingested with.
  ///
  /// Returns the most recent log records in the query window, newest first — each record an open object carrying its nanosecond timestamp and whatever fields the record was ingested with.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit caps how many records come back. Zero means the default of 100.
  ///
  /// * [int] timestampStart:
  ///   TimestampStart is the start of the window as a nanosecond epoch. Zero means fifteen minutes before the end.
  ///
  /// * [int] timestampEnd:
  ///   TimestampEnd is the end of the window as a nanosecond epoch. Zero means now.
  Future<O11yO11yLogRecordsOut?> getO11yLogs({ int? limit, int? timestampStart, int? timestampEnd, }) async {
    final response = await getO11yLogsWithHttpInfo( limit: limit, timestampStart: timestampStart, timestampEnd: timestampEnd, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLogRecordsOut',) as O11yO11yLogRecordsOut;
    
    }
    return null;
  }

  /// Returns the logs aggregate buckets for the query window.
  ///
  /// Returns the logs aggregate buckets for the query window. The runtime currently answers the empty set; the shape is the contract.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yLogsAggregateWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/logs/aggregate';

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

  /// Returns the logs aggregate buckets for the query window.
  ///
  /// Returns the logs aggregate buckets for the query window. The runtime currently answers the empty set; the shape is the contract.  Callers need the viewer role; the runtime's own gate enforces it.
  Future<O11yO11yLogAggregateOut?> getO11yLogsAggregate() async {
    final response = await getO11yLogsAggregateWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLogAggregateOut',) as O11yO11yLogAggregateOut;
    
    }
    return null;
  }

  /// Returns the log field catalog: the fields already selected as indexed columns, and the interesting ones seen in the data that could be.
  ///
  /// Returns the log field catalog: the fields already selected as indexed columns, and the interesting ones seen in the data that could be.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yLogsFieldsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/logs/fields';

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

  /// Returns the log field catalog: the fields already selected as indexed columns, and the interesting ones seen in the data that could be.
  ///
  /// Returns the log field catalog: the fields already selected as indexed columns, and the interesting ones seen in the data that could be.  Callers need the viewer role; the runtime's own gate enforces it.
  Future<O11yO11yFieldCatalogOut?> getO11yLogsFields() async {
    final response = await getO11yLogsFieldsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFieldCatalogOut',) as O11yO11yFieldCatalogOut;
    
    }
    return null;
  }

  /// Follow log records as they arrive
  ///
  /// Streams matching log records continuously instead of answering once, so a console tail shows lines as they land rather than at the end of a window.  It is a STREAM, which is why it is not a typed operation: there is no single complete value to name, and a generated client that waited for one would hang on the first tail. Read the bounded window with the log read instead when you want an answer rather than a feed.  A validated, org-scoped principal is required and the feed carries that principal's own tenant only.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yLogsLivetailWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/logs/livetail';

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

  /// Follow log records as they arrive
  ///
  /// Streams matching log records continuously instead of answering once, so a console tail shows lines as they land rather than at the end of a window.  It is a STREAM, which is why it is not a typed operation: there is no single complete value to name, and a generated client that waited for one would hang on the first tail. Read the bounded window with the log read instead when you want an answer rather than a feed.  A validated, org-scoped principal is required and the feed carries that principal's own tenant only.
  Future<void> getO11yLogsLivetail() async {
    final response = await getO11yLogsLivetailWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the caller's org's log parsing pipelines at one config version — \"latest\" for the newest — along with that version's deployment record and the recent version history.
  ///
  /// Returns the caller's org's log parsing pipelines at one config version — \"latest\" for the newest — along with that version's deployment record and the recent version history.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   Version is the config version to read — a positive number, or \"latest\".
  Future<Response> getO11yLogsPipelinesByVersionWithHttpInfo(String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/logs/pipelines/{version}'
      .replaceAll('{version}', version);

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

  /// Returns the caller's org's log parsing pipelines at one config version — \"latest\" for the newest — along with that version's deployment record and the recent version history.
  ///
  /// Returns the caller's org's log parsing pipelines at one config version — \"latest\" for the newest — along with that version's deployment record and the recent version history.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   Version is the config version to read — a positive number, or \"latest\".
  Future<O11yO11yLogPipelinesOut?> getO11yLogsPipelinesByVersion(String version,) async {
    final response = await getO11yLogsPipelinesByVersionWithHttpInfo(version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLogPipelinesOut',) as O11yO11yLogPipelinesOut;
    
    }
    return null;
  }

  /// Lists the log body paths already promoted or indexed, with the indexes each carries.
  ///
  /// Lists the log body paths already promoted or indexed, with the indexes each carries.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yLogsPromotePathsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/logs/promote_paths';

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

  /// Lists the log body paths already promoted or indexed, with the indexes each carries.
  ///
  /// Lists the log body paths already promoted or indexed, with the indexes each carries.  Callers need the viewer role; the runtime's own gate enforces it.
  Future<O11yO11yLogPromotedOut?> getO11yLogsPromotePaths() async {
    final response = await getO11yLogsPromotePathsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLogPromotedOut',) as O11yO11yLogPromotedOut;
    
    }
    return null;
  }

  /// Serves the OLDER /metric/metric_metadata route.
  ///
  /// Serves the OLDER /metric/metric_metadata route. It is NOT the same op as metrics.go's metricMetadata (/metrics/metadata): different path, different input (this one also scopes by service). Two slices named one Go function for two routes; the route is the identity, so the name follows it. Renamed rather than merged — collapsing them would silently drop the service scope this one accepts. It returns one metric's metadata — its type, unit, description, temporality, monotonicity and histogram buckets — optionally scoped to the metric as one service reports it.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] metricName:
  ///   MetricName is the metric to read.
  ///
  /// * [String] serviceName:
  ///   ServiceName scopes the metadata to the metric as one service reports it.
  Future<Response> getO11yMetricMetricMetadataWithHttpInfo({ String? metricName, String? serviceName, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/metric/metric_metadata';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (metricName != null) {
      queryParams.addAll(_queryParams('', 'metricName', metricName));
    }
    if (serviceName != null) {
      queryParams.addAll(_queryParams('', 'serviceName', serviceName));
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

  /// Serves the OLDER /metric/metric_metadata route.
  ///
  /// Serves the OLDER /metric/metric_metadata route. It is NOT the same op as metrics.go's metricMetadata (/metrics/metadata): different path, different input (this one also scopes by service). Two slices named one Go function for two routes; the route is the identity, so the name follows it. Renamed rather than merged — collapsing them would silently drop the service scope this one accepts. It returns one metric's metadata — its type, unit, description, temporality, monotonicity and histogram buckets — optionally scoped to the metric as one service reports it.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] metricName:
  ///   MetricName is the metric to read.
  ///
  /// * [String] serviceName:
  ///   ServiceName scopes the metadata to the metric as one service reports it.
  Future<O11yO11yMetricMetadataOut?> getO11yMetricMetricMetadata({ String? metricName, String? serviceName, }) async {
    final response = await getO11yMetricMetricMetadataWithHttpInfo( metricName: metricName, serviceName: serviceName, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yMetricMetadataOut',) as O11yO11yMetricMetadataOut;
    
    }
    return null;
  }

  /// Lists the metric attribute keys Kubernetes namespaces report, for building namespace filters.
  ///
  /// Lists the metric attribute keys Kubernetes namespaces report, for building namespace filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<Response> getO11yNamespacesAttributeKeysWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/namespaces/attribute_keys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the metric attribute keys Kubernetes namespaces report, for building namespace filters.
  ///
  /// Lists the metric attribute keys Kubernetes namespaces report, for building namespace filters.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<O11yO11yInfraAttributeKeysOut?> getO11yNamespacesAttributeKeys({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yNamespacesAttributeKeysWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeKeysOut',) as O11yO11yInfraAttributeKeysOut;
    
    }
    return null;
  }

  /// Lists the values one namespace attribute key has taken, for building namespace filters.
  ///
  /// Lists the values one namespace attribute key has taken, for building namespace filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<Response> getO11yNamespacesAttributeValuesWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/namespaces/attribute_values';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (attributeKey != null) {
      queryParams.addAll(_queryParams('', 'attributeKey', attributeKey));
    }
    if (filterAttributeKeyDataType != null) {
      queryParams.addAll(_queryParams('', 'filterAttributeKeyDataType', filterAttributeKeyDataType));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the values one namespace attribute key has taken, for building namespace filters.
  ///
  /// Lists the values one namespace attribute key has taken, for building namespace filters.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<O11yO11yInfraAttributeValuesOut?> getO11yNamespacesAttributeValues({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yNamespacesAttributeValuesWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, attributeKey: attributeKey, filterAttributeKeyDataType: filterAttributeKeyDataType, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeValuesOut',) as O11yO11yInfraAttributeValuesOut;
    
    }
    return null;
  }

  /// Returns the ids of the exception instances immediately after and before a given one within its group — the paging cursor the error detail view walks.
  ///
  /// Returns the ids of the exception instances immediately after and before a given one within its group — the paging cursor the error detail view walks.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] timestamp (required):
  ///   Timestamp is the instance's time as a nanosecond epoch spelled as a string. Required.
  ///
  /// * [String] groupID (required):
  ///   GroupID is the exception group the instance belongs to. Required.
  ///
  /// * [String] errorID:
  ///   ErrorID is the exception instance id. Required by errorFromErrorID and nextPrevErrorIDs; unused by errorFromGroupID.
  Future<Response> getO11yNextpreverroridsWithHttpInfo(String timestamp, String groupID, { String? errorID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/nextPrevErrorIDs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'timestamp', timestamp));
      queryParams.addAll(_queryParams('', 'groupID', groupID));
    if (errorID != null) {
      queryParams.addAll(_queryParams('', 'errorID', errorID));
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

  /// Returns the ids of the exception instances immediately after and before a given one within its group — the paging cursor the error detail view walks.
  ///
  /// Returns the ids of the exception instances immediately after and before a given one within its group — the paging cursor the error detail view walks.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] timestamp (required):
  ///   Timestamp is the instance's time as a nanosecond epoch spelled as a string. Required.
  ///
  /// * [String] groupID (required):
  ///   GroupID is the exception group the instance belongs to. Required.
  ///
  /// * [String] errorID:
  ///   ErrorID is the exception instance id. Required by errorFromErrorID and nextPrevErrorIDs; unused by errorFromGroupID.
  Future<O11yO11yNextPrevErrorIDs?> getO11yNextpreverrorids(String timestamp, String groupID, { String? errorID, }) async {
    final response = await getO11yNextpreverroridsWithHttpInfo(timestamp, groupID,  errorID: errorID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yNextPrevErrorIDs',) as O11yO11yNextPrevErrorIDs;
    
    }
    return null;
  }

  /// Lists the metric attribute keys Kubernetes nodes report, for building node filters.
  ///
  /// Lists the metric attribute keys Kubernetes nodes report, for building node filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<Response> getO11yNodesAttributeKeysWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/nodes/attribute_keys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the metric attribute keys Kubernetes nodes report, for building node filters.
  ///
  /// Lists the metric attribute keys Kubernetes nodes report, for building node filters.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<O11yO11yInfraAttributeKeysOut?> getO11yNodesAttributeKeys({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yNodesAttributeKeysWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeKeysOut',) as O11yO11yInfraAttributeKeysOut;
    
    }
    return null;
  }

  /// Lists the values one node attribute key has taken, for building node filters.
  ///
  /// Lists the values one node attribute key has taken, for building node filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<Response> getO11yNodesAttributeValuesWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/nodes/attribute_values';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (attributeKey != null) {
      queryParams.addAll(_queryParams('', 'attributeKey', attributeKey));
    }
    if (filterAttributeKeyDataType != null) {
      queryParams.addAll(_queryParams('', 'filterAttributeKeyDataType', filterAttributeKeyDataType));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the values one node attribute key has taken, for building node filters.
  ///
  /// Lists the values one node attribute key has taken, for building node filters.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<O11yO11yInfraAttributeValuesOut?> getO11yNodesAttributeValues({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yNodesAttributeValuesWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, attributeKey: attributeKey, filterAttributeKeyDataType: filterAttributeKeyDataType, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeValuesOut',) as O11yO11yInfraAttributeValuesOut;
    
    }
    return null;
  }

  /// Lists the metric attribute keys Kubernetes pods report, for building pod filters.
  ///
  /// Lists the metric attribute keys Kubernetes pods report, for building pod filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<Response> getO11yPodsAttributeKeysWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/pods/attribute_keys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the metric attribute keys Kubernetes pods report, for building pod filters.
  ///
  /// Lists the metric attribute keys Kubernetes pods report, for building pod filters.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<O11yO11yInfraAttributeKeysOut?> getO11yPodsAttributeKeys({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yPodsAttributeKeysWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeKeysOut',) as O11yO11yInfraAttributeKeysOut;
    
    }
    return null;
  }

  /// Lists the values one pod attribute key has taken, for building pod filters.
  ///
  /// Lists the values one pod attribute key has taken, for building pod filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<Response> getO11yPodsAttributeValuesWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/pods/attribute_values';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (attributeKey != null) {
      queryParams.addAll(_queryParams('', 'attributeKey', attributeKey));
    }
    if (filterAttributeKeyDataType != null) {
      queryParams.addAll(_queryParams('', 'filterAttributeKeyDataType', filterAttributeKeyDataType));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the values one pod attribute key has taken, for building pod filters.
  ///
  /// Lists the values one pod attribute key has taken, for building pod filters.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<O11yO11yInfraAttributeValuesOut?> getO11yPodsAttributeValues({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yPodsAttributeValuesWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, attributeKey: attributeKey, filterAttributeKeyDataType: filterAttributeKeyDataType, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeValuesOut',) as O11yO11yInfraAttributeValuesOut;
    
    }
    return null;
  }

  /// Lists the metric attribute keys processes report, for building process filters.
  ///
  /// Lists the metric attribute keys processes report, for building process filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<Response> getO11yProcessesAttributeKeysWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/processes/attribute_keys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the metric attribute keys processes report, for building process filters.
  ///
  /// Lists the metric attribute keys processes report, for building process filters.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<O11yO11yInfraAttributeKeysOut?> getO11yProcessesAttributeKeys({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yProcessesAttributeKeysWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeKeysOut',) as O11yO11yInfraAttributeKeysOut;
    
    }
    return null;
  }

  /// Lists the values one process attribute key has taken, for building process filters.
  ///
  /// Lists the values one process attribute key has taken, for building process filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<Response> getO11yProcessesAttributeValuesWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/processes/attribute_values';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (attributeKey != null) {
      queryParams.addAll(_queryParams('', 'attributeKey', attributeKey));
    }
    if (filterAttributeKeyDataType != null) {
      queryParams.addAll(_queryParams('', 'filterAttributeKeyDataType', filterAttributeKeyDataType));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the values one process attribute key has taken, for building process filters.
  ///
  /// Lists the values one process attribute key has taken, for building process filters.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<O11yO11yInfraAttributeValuesOut?> getO11yProcessesAttributeValues({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yProcessesAttributeValuesWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, attributeKey: attributeKey, filterAttributeKeyDataType: filterAttributeKeyDataType, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeValuesOut',) as O11yO11yInfraAttributeValuesOut;
    
    }
    return null;
  }

  /// Returns one product's RED series — request rate, errors, p50 and p95 latency — for the caller's org, plus that org's LLM usage rollup over the same window.
  ///
  /// Returns one product's RED series — request rate, errors, p50 and p95 latency — for the caller's org, plus that org's LLM usage rollup over the same window. The series come from org-tagged request spans, so a tenant only ever aggregates its own traffic; a validated platform SuperAdmin sees the whole product's RED, while usage stays the caller's own org either way. A well-formed product with no backing workload answers empty series; a malformed slug is a 400.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] product:
  ///   Product is the console product slug to read, e.g. \"kms\". Required.
  ///
  /// * [int] range:
  ///   Range is the window in seconds. Default 3600, capped at 604800 (7d).
  ///
  /// * [int] stepSec:
  ///   StepSec is the bucket width in seconds, clamped to [30, 3600]. Absent picks ~60 buckets across the range.
  Future<Response> getO11yProductMetricsWithHttpInfo({ String? product, int? range, int? stepSec, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/product/metrics';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (product != null) {
      queryParams.addAll(_queryParams('', 'product', product));
    }
    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
    }
    if (stepSec != null) {
      queryParams.addAll(_queryParams('', 'stepSec', stepSec));
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

  /// Returns one product's RED series — request rate, errors, p50 and p95 latency — for the caller's org, plus that org's LLM usage rollup over the same window.
  ///
  /// Returns one product's RED series — request rate, errors, p50 and p95 latency — for the caller's org, plus that org's LLM usage rollup over the same window. The series come from org-tagged request spans, so a tenant only ever aggregates its own traffic; a validated platform SuperAdmin sees the whole product's RED, while usage stays the caller's own org either way. A well-formed product with no backing workload answers empty series; a malformed slug is a 400.
  ///
  /// Parameters:
  ///
  /// * [String] product:
  ///   Product is the console product slug to read, e.g. \"kms\". Required.
  ///
  /// * [int] range:
  ///   Range is the window in seconds. Default 3600, capped at 604800 (7d).
  ///
  /// * [int] stepSec:
  ///   StepSec is the bucket width in seconds, clamped to [30, 3600]. Absent picks ~60 buckets across the range.
  Future<O11yMetricsResponse?> getO11yProductMetrics({ String? product, int? range, int? stepSec, }) async {
    final response = await getO11yProductMetricsWithHttpInfo( product: product, range: range, stepSec: stepSec, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yMetricsResponse',) as O11yMetricsResponse;
    
    }
    return null;
  }

  /// Lists the metric attribute keys persistent volume claims report, for building volume filters.
  ///
  /// Lists the metric attribute keys persistent volume claims report, for building volume filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<Response> getO11yPvcsAttributeKeysWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/pvcs/attribute_keys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the metric attribute keys persistent volume claims report, for building volume filters.
  ///
  /// Lists the metric attribute keys persistent volume claims report, for building volume filters.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<O11yO11yInfraAttributeKeysOut?> getO11yPvcsAttributeKeys({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yPvcsAttributeKeysWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeKeysOut',) as O11yO11yInfraAttributeKeysOut;
    
    }
    return null;
  }

  /// Lists the values one persistent-volume-claim attribute key has taken, for building volume filters.
  ///
  /// Lists the values one persistent-volume-claim attribute key has taken, for building volume filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<Response> getO11yPvcsAttributeValuesWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/pvcs/attribute_values';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (attributeKey != null) {
      queryParams.addAll(_queryParams('', 'attributeKey', attributeKey));
    }
    if (filterAttributeKeyDataType != null) {
      queryParams.addAll(_queryParams('', 'filterAttributeKeyDataType', filterAttributeKeyDataType));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the values one persistent-volume-claim attribute key has taken, for building volume filters.
  ///
  /// Lists the values one persistent-volume-claim attribute key has taken, for building volume filters.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<O11yO11yInfraAttributeValuesOut?> getO11yPvcsAttributeValues({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yPvcsAttributeValuesWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, attributeKey: attributeKey, filterAttributeKeyDataType: filterAttributeKeyDataType, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeValuesOut',) as O11yO11yInfraAttributeValuesOut;
    
    }
    return null;
  }

  /// Evaluates one instant PromQL query against the org's metrics and returns the result at a single point in time.
  ///
  /// Evaluates one instant PromQL query against the org's metrics and returns the result at a single point in time.  The result is polymorphic by PromQL's own contract — a matrix, vector, scalar or string, discriminated by resultType — so it is carried verbatim rather than forced into one of its shapes.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   Query is the PromQL expression to evaluate. Required.
  ///
  /// * [String] time:
  ///   Time is the evaluation timestamp — epoch seconds or RFC3339. Empty evaluates at now.
  ///
  /// * [String] stats:
  ///   Stats set to any non-empty value includes query statistics in the answer.
  ///
  /// * [String] timeout:
  ///   Timeout caps evaluation time, as a duration in seconds.
  Future<Response> getO11yQueryWithHttpInfo(String query, { String? time, String? stats, String? timeout, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/query';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'query', query));
    if (time != null) {
      queryParams.addAll(_queryParams('', 'time', time));
    }
    if (stats != null) {
      queryParams.addAll(_queryParams('', 'stats', stats));
    }
    if (timeout != null) {
      queryParams.addAll(_queryParams('', 'timeout', timeout));
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

  /// Evaluates one instant PromQL query against the org's metrics and returns the result at a single point in time.
  ///
  /// Evaluates one instant PromQL query against the org's metrics and returns the result at a single point in time.  The result is polymorphic by PromQL's own contract — a matrix, vector, scalar or string, discriminated by resultType — so it is carried verbatim rather than forced into one of its shapes.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   Query is the PromQL expression to evaluate. Required.
  ///
  /// * [String] time:
  ///   Time is the evaluation timestamp — epoch seconds or RFC3339. Empty evaluates at now.
  ///
  /// * [String] stats:
  ///   Stats set to any non-empty value includes query statistics in the answer.
  ///
  /// * [String] timeout:
  ///   Timeout caps evaluation time, as a duration in seconds.
  Future<O11yO11yPromQueryOut?> getO11yQuery(String query, { String? time, String? stats, String? timeout, }) async {
    final response = await getO11yQueryWithHttpInfo(query,  time: time, stats: stats, timeout: timeout, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yPromQueryOut',) as O11yO11yPromQueryOut;
    
    }
    return null;
  }

  /// Watch one running query's progress
  ///
  /// Reports how far a submitted query has got — rows scanned, bytes read, elapsed — and HOLDS the connection until the next update rather than answering immediately.  ONE ADDRESS, TWO PROTOCOLS. Send an Upgrade and this is a websocket carrying the same progress; send an ordinary GET and it is a long poll. The Upgrade is a property of the request, not of the address, so the read that used to answer at /ws/query_progress answers here.  The long poll is the whole point, and the reason this cannot be a typed operation: an answer that arrived only when the query finished would report progress on nothing, and an upgraded connection has no JSON response to declare.  A validated, org-scoped principal is required; a query id belonging to another tenant is simply not found.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yQueryProgressWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/query_progress';

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

  /// Watch one running query's progress
  ///
  /// Reports how far a submitted query has got — rows scanned, bytes read, elapsed — and HOLDS the connection until the next update rather than answering immediately.  ONE ADDRESS, TWO PROTOCOLS. Send an Upgrade and this is a websocket carrying the same progress; send an ordinary GET and it is a long poll. The Upgrade is a property of the request, not of the address, so the read that used to answer at /ws/query_progress answers here.  The long poll is the whole point, and the reason this cannot be a typed operation: an answer that arrived only when the query finished would report progress on nothing, and an upgraded connection has no JSON response to declare.  A validated, org-scoped principal is required; a query id belonging to another tenant is simply not found.
  Future<void> getO11yQueryProgress() async {
    final response = await getO11yQueryProgressWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Runs a Prometheus-style range query over metrics — the legacy read that predates the v5 querier — and returns the matrix, vector or scalar the query resolved to.
  ///
  /// Runs a Prometheus-style range query over metrics — the legacy read that predates the v5 querier — and returns the matrix, vector or scalar the query resolved to.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] start (required):
  ///   Start is the window start — a unix timestamp (seconds, with optional fraction) or an RFC 3339 time. Required.
  ///
  /// * [String] end (required):
  ///   End is the window end, in the same form as Start, and not before it. Required.
  ///
  /// * [String] step (required):
  ///   Step is the query resolution, e.g. 60s, 1m, 1h — a positive duration. Required.
  ///
  /// * [String] query (required):
  ///   Query is the PromQL expression to evaluate. Required.
  ///
  /// * [String] stats:
  ///   Stats, when \"all\", asks for query statistics alongside the result.
  ///
  /// * [String] timeout:
  ///   Timeout caps how long the query may run, e.g. 30s, 1m — a positive duration. Absent means the server default.
  Future<Response> getO11yQueryRangeWithHttpInfo(String start, String end, String step, String query, { String? stats, String? timeout, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/query_range';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'end', end));
      queryParams.addAll(_queryParams('', 'step', step));
      queryParams.addAll(_queryParams('', 'query', query));
    if (stats != null) {
      queryParams.addAll(_queryParams('', 'stats', stats));
    }
    if (timeout != null) {
      queryParams.addAll(_queryParams('', 'timeout', timeout));
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

  /// Runs a Prometheus-style range query over metrics — the legacy read that predates the v5 querier — and returns the matrix, vector or scalar the query resolved to.
  ///
  /// Runs a Prometheus-style range query over metrics — the legacy read that predates the v5 querier — and returns the matrix, vector or scalar the query resolved to.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] start (required):
  ///   Start is the window start — a unix timestamp (seconds, with optional fraction) or an RFC 3339 time. Required.
  ///
  /// * [String] end (required):
  ///   End is the window end, in the same form as Start, and not before it. Required.
  ///
  /// * [String] step (required):
  ///   Step is the query resolution, e.g. 60s, 1m, 1h — a positive duration. Required.
  ///
  /// * [String] query (required):
  ///   Query is the PromQL expression to evaluate. Required.
  ///
  /// * [String] stats:
  ///   Stats, when \"all\", asks for query statistics alongside the result.
  ///
  /// * [String] timeout:
  ///   Timeout caps how long the query may run, e.g. 30s, 1m — a positive duration. Absent means the server default.
  Future<O11yO11yMetricsQueryRangeOut?> getO11yQueryRange(String start, String end, String step, String query, { String? stats, String? timeout, }) async {
    final response = await getO11yQueryRangeWithHttpInfo(start, end, step, query,  stats: stats, timeout: timeout, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yMetricsQueryRangeOut',) as O11yO11yMetricsQueryRangeOut;
    
    }
    return null;
  }

  /// Readiness of the observability runtime to serve
  ///
  /// Reports whether the runtime's registered services are healthy enough to take traffic, and answers 503 when they are not — which is what takes a booting or degraded replica out of the load balancer instead of letting it serve errors.  UNAUTHENTICATED by design, like the other two probes. It reads the same service registry the health probe reads, so the two agree by construction; readiness is the question a router asks and health is the question an operator asks.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yReadyzWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/readyz';

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

  /// Readiness of the observability runtime to serve
  ///
  /// Reports whether the runtime's registered services are healthy enough to take traffic, and answers 503 when they are not — which is what takes a booting or degraded replica out of the load balancer instead of letting it serve errors.  UNAUTHENTICATED by design, like the other two probes. It reads the same service registry the health probe reads, so the two agree by construction; readiness is the question a router asks and health is the question an operator asks.
  Future<void> getO11yReadyz() async {
    final response = await getO11yReadyzWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns a page of the caller org's human-review queues, newest first, narrowed to the caller's project.
  ///
  /// Returns a page of the caller org's human-review queues, newest first, narrowed to the caller's project. Another org's queues are never visible.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Page is the 1-based page to read. Default 1.
  ///
  /// * [int] limit:
  ///   Limit is how many rows to return. Default 20, capped at 100.
  Future<Response> getO11yReviewsWithHttpInfo({ int? page, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/reviews';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
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

  /// Returns a page of the caller org's human-review queues, newest first, narrowed to the caller's project.
  ///
  /// Returns a page of the caller org's human-review queues, newest first, narrowed to the caller's project. Another org's queues are never visible.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Page is the 1-based page to read. Default 1.
  ///
  /// * [int] limit:
  ///   Limit is how many rows to return. Default 20, capped at 100.
  Future<O11yAnnQueueList?> getO11yReviews({ int? page, int? limit, }) async {
    final response = await getO11yReviewsWithHttpInfo( page: page, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yAnnQueueList',) as O11yAnnQueueList;
    
    }
    return null;
  }

  /// Returns one review queue with its pending and completed counts and its first page of items.
  ///
  /// Returns one review queue with its pending and completed counts and its first page of items. A queue id belonging to another org is a 404, never a cross-tenant read.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the annotation queue to act on, from the path.
  Future<Response> getO11yReviewsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/reviews/{id}'
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

  /// Returns one review queue with its pending and completed counts and its first page of items.
  ///
  /// Returns one review queue with its pending and completed counts and its first page of items. A queue id belonging to another org is a 404, never a cross-tenant read.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the annotation queue to act on, from the path.
  Future<O11yAnnQueueDetailView?> getO11yReviewsById(String id,) async {
    final response = await getO11yReviewsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yAnnQueueDetailView',) as O11yAnnQueueDetailView;
    
    }
    return null;
  }

  /// Returns a page of one review queue's items, newest first, optionally filtered to PENDING or COMPLETED.
  ///
  /// Returns a page of one review queue's items, newest first, optionally filtered to PENDING or COMPLETED. A queue id belonging to another org is a 404, never a cross-tenant list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the annotation queue whose items to list, from the path.
  ///
  /// * [String] status:
  ///   Status filters to PENDING or COMPLETED items. Absent returns both.
  ///
  /// * [int] page:
  ///   Page is the 1-based page to read. Default 1.
  ///
  /// * [int] limit:
  ///   Limit is how many rows to return. Default 20, capped at 100.
  Future<Response> getO11yReviewsByIdItemsWithHttpInfo(String id, { String? status, int? page, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/reviews/{id}/items'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
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

  /// Returns a page of one review queue's items, newest first, optionally filtered to PENDING or COMPLETED.
  ///
  /// Returns a page of one review queue's items, newest first, optionally filtered to PENDING or COMPLETED. A queue id belonging to another org is a 404, never a cross-tenant list.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the annotation queue whose items to list, from the path.
  ///
  /// * [String] status:
  ///   Status filters to PENDING or COMPLETED items. Absent returns both.
  ///
  /// * [int] page:
  ///   Page is the 1-based page to read. Default 1.
  ///
  /// * [int] limit:
  ///   Limit is how many rows to return. Default 20, capped at 100.
  Future<O11yAnnItemList?> getO11yReviewsByIdItems(String id, { String? status, int? page, int? limit, }) async {
    final response = await getO11yReviewsByIdItemsWithHttpInfo(id,  status: status, page: page, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yAnnItemList',) as O11yAnnItemList;
    
    }
    return null;
  }

  /// Returns one captured error event of a project, by its id.
  ///
  /// Returns one captured error event of a project, by its id.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the event id.
  ///
  /// * [String] project (required):
  ///   Project is the project the event belongs to, by its id. Required.
  Future<Response> getO11ySentinelEventsByIdWithHttpInfo(String id, String project,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/sentinel/events/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'project', project));

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

  /// Returns one captured error event of a project, by its id.
  ///
  /// Returns one captured error event of a project, by its id.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the event id.
  ///
  /// * [String] project (required):
  ///   Project is the project the event belongs to, by its id. Required.
  Future<O11yO11ySentryEventOut?> getO11ySentinelEventsById(String id, String project,) async {
    final response = await getO11ySentinelEventsByIdWithHttpInfo(id, project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySentryEventOut',) as O11yO11ySentryEventOut;
    
    }
    return null;
  }

  /// Lists the caller's org's grouped error issues, optionally narrowed to one project and one time window, and filtered by status, level, environment, service, a free-text query and a sort.
  ///
  /// Lists the caller's org's grouped error issues, optionally narrowed to one project and one time window, and filtered by status, level, environment, service, a free-text query and a sort.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status narrows to one lifecycle state: unresolved, resolved or ignored.
  ///
  /// * [String] level:
  ///   Level narrows to one severity, e.g. error, warning, info.
  ///
  /// * [String] environment:
  ///   Environment narrows to one deployment environment.
  ///
  /// * [String] serviceName:
  ///   ServiceName narrows to one reporting service.
  ///
  /// * [String] query:
  ///   Query narrows to issues whose text contains it.
  ///
  /// * [String] sort:
  ///   Sort orders the page, e.g. lastSeen, firstSeen, count.
  ///
  /// * [int] offset:
  ///   Offset is how many issues to skip. Zero starts at the first.
  ///
  /// * [int] limit:
  ///   Limit caps how many issues come back. Zero means the default.
  ///
  /// * [String] project:
  ///   Project narrows the org's issues to one project, by its id.
  ///
  /// * [String] period:
  ///   Period is the window to read, relative to now — 1h, 24h, 7d, 14d, 30d.
  Future<Response> getO11ySentinelIssuesWithHttpInfo({ String? status, String? level, String? environment, String? serviceName, String? query, String? sort, int? offset, int? limit, String? project, String? period, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/sentinel/issues';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (level != null) {
      queryParams.addAll(_queryParams('', 'level', level));
    }
    if (environment != null) {
      queryParams.addAll(_queryParams('', 'environment', environment));
    }
    if (serviceName != null) {
      queryParams.addAll(_queryParams('', 'serviceName', serviceName));
    }
    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (project != null) {
      queryParams.addAll(_queryParams('', 'project', project));
    }
    if (period != null) {
      queryParams.addAll(_queryParams('', 'period', period));
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

  /// Lists the caller's org's grouped error issues, optionally narrowed to one project and one time window, and filtered by status, level, environment, service, a free-text query and a sort.
  ///
  /// Lists the caller's org's grouped error issues, optionally narrowed to one project and one time window, and filtered by status, level, environment, service, a free-text query and a sort.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] status:
  ///   Status narrows to one lifecycle state: unresolved, resolved or ignored.
  ///
  /// * [String] level:
  ///   Level narrows to one severity, e.g. error, warning, info.
  ///
  /// * [String] environment:
  ///   Environment narrows to one deployment environment.
  ///
  /// * [String] serviceName:
  ///   ServiceName narrows to one reporting service.
  ///
  /// * [String] query:
  ///   Query narrows to issues whose text contains it.
  ///
  /// * [String] sort:
  ///   Sort orders the page, e.g. lastSeen, firstSeen, count.
  ///
  /// * [int] offset:
  ///   Offset is how many issues to skip. Zero starts at the first.
  ///
  /// * [int] limit:
  ///   Limit caps how many issues come back. Zero means the default.
  ///
  /// * [String] project:
  ///   Project narrows the org's issues to one project, by its id.
  ///
  /// * [String] period:
  ///   Period is the window to read, relative to now — 1h, 24h, 7d, 14d, 30d.
  Future<O11yO11yErrorIssuesOut?> getO11ySentinelIssues({ String? status, String? level, String? environment, String? serviceName, String? query, String? sort, int? offset, int? limit, String? project, String? period, }) async {
    final response = await getO11ySentinelIssuesWithHttpInfo( status: status, level: level, environment: environment, serviceName: serviceName, query: query, sort: sort, offset: offset, limit: limit, project: project, period: period, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yErrorIssuesOut',) as O11yO11yErrorIssuesOut;
    
    }
    return null;
  }

  /// Returns one grouped issue of the caller's org with its latest occurrence sample.
  ///
  /// Returns one grouped issue of the caller's org with its latest occurrence sample.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the issue id.
  Future<Response> getO11ySentinelIssuesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/sentinel/issues/{id}'
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

  /// Returns one grouped issue of the caller's org with its latest occurrence sample.
  ///
  /// Returns one grouped issue of the caller's org with its latest occurrence sample.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the issue id.
  Future<O11yO11yErrorGettableIssueOut?> getO11ySentinelIssuesById(String id,) async {
    final response = await getO11ySentinelIssuesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yErrorGettableIssueOut',) as O11yO11yErrorGettableIssueOut;
    
    }
    return null;
  }

  /// Lists one issue's captured occurrences, scoped to a project — a project is an isolation unit, so the caller declares which project's occurrences to read.
  ///
  /// Lists one issue's captured occurrences, scoped to a project — a project is an isolation unit, so the caller declares which project's occurrences to read.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the issue id.
  ///
  /// * [String] project (required):
  ///   Project is the project whose occurrences to read, by its id. Required.
  ///
  /// * [int] limit:
  ///   Limit caps how many occurrences come back. Zero means the default.
  Future<Response> getO11ySentinelIssuesByIdEventsWithHttpInfo(String id, String project, { int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/sentinel/issues/{id}/events'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'project', project));
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

  /// Lists one issue's captured occurrences, scoped to a project — a project is an isolation unit, so the caller declares which project's occurrences to read.
  ///
  /// Lists one issue's captured occurrences, scoped to a project — a project is an isolation unit, so the caller declares which project's occurrences to read.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the issue id.
  ///
  /// * [String] project (required):
  ///   Project is the project whose occurrences to read, by its id. Required.
  ///
  /// * [int] limit:
  ///   Limit caps how many occurrences come back. Zero means the default.
  Future<O11yO11ySentryIssueEventsOut?> getO11ySentinelIssuesByIdEvents(String id, String project, { int? limit, }) async {
    final response = await getO11ySentinelIssuesByIdEventsWithHttpInfo(id, project,  limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySentryIssueEventsOut',) as O11yO11ySentryIssueEventsOut;
    
    }
    return null;
  }

  /// Lists a project's captured error events, newest first, optionally narrowed to those whose message or exception text contains a search string.
  ///
  /// Lists a project's captured error events, newest first, optionally narrowed to those whose message or exception text contains a search string.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project to read, as its id. Required.
  ///
  /// * [String] query:
  ///   Query narrows the page to events whose text contains it.
  ///
  /// * [String] period:
  ///   Period is the window to read, relative to now — 1h, 24h, 7d, 14d, 30d.
  ///
  /// * [int] limit:
  ///   Limit caps how many events come back.
  Future<Response> getO11ySentinelLogsWithHttpInfo(String project, { String? query, String? period, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/sentinel/logs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'project', project));
    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (period != null) {
      queryParams.addAll(_queryParams('', 'period', period));
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

  /// Lists a project's captured error events, newest first, optionally narrowed to those whose message or exception text contains a search string.
  ///
  /// Lists a project's captured error events, newest first, optionally narrowed to those whose message or exception text contains a search string.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project to read, as its id. Required.
  ///
  /// * [String] query:
  ///   Query narrows the page to events whose text contains it.
  ///
  /// * [String] period:
  ///   Period is the window to read, relative to now — 1h, 24h, 7d, 14d, 30d.
  ///
  /// * [int] limit:
  ///   Limit caps how many events come back.
  Future<O11yO11yLogsOut?> getO11ySentinelLogs(String project, { String? query, String? period, int? limit, }) async {
    final response = await getO11ySentinelLogsWithHttpInfo(project,  query: query, period: period, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLogsOut',) as O11yO11yLogsOut;
    
    }
    return null;
  }

  /// Lists the caller's org's Sentry projects, each with its freshly-derived DSN.
  ///
  /// Lists the caller's org's Sentry projects, each with its freshly-derived DSN.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11ySentinelProjectsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/sentinel/projects';

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

  /// Lists the caller's org's Sentry projects, each with its freshly-derived DSN.
  ///
  /// Lists the caller's org's Sentry projects, each with its freshly-derived DSN.  Callers need the viewer role; the runtime's own gate enforces it.
  Future<O11yO11ySentryProjectsOut?> getO11ySentinelProjects() async {
    final response = await getO11ySentinelProjectsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySentryProjectsOut',) as O11yO11ySentryProjectsOut;
    
    }
    return null;
  }

  /// Returns one Sentry project of the caller's org, DSN included.
  ///
  /// Returns one Sentry project of the caller's org, DSN included.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the project id.
  Future<Response> getO11ySentinelProjectsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/sentinel/projects/{id}'
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

  /// Returns one Sentry project of the caller's org, DSN included.
  ///
  /// Returns one Sentry project of the caller's org, DSN included.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the project id.
  Future<O11yO11ySentryProjectOut?> getO11ySentinelProjectsById(String id,) async {
    final response = await getO11ySentinelProjectsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySentryProjectOut',) as O11yO11ySentryProjectOut;
    
    }
    return null;
  }

  /// Returns a project's event-rate timeseries: one bucket per interval over the requested period, counting the events in it.
  ///
  /// Returns a project's event-rate timeseries: one bucket per interval over the requested period, counting the events in it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project to read, as its id. Required.
  ///
  /// * [String] field:
  ///   Field is the dimension to count over. Empty counts all events.
  ///
  /// * [String] period:
  ///   Period is the window to read, relative to now — 1h, 24h, 7d, 14d, 30d.
  Future<Response> getO11ySentinelStatsWithHttpInfo(String project, { String? field, String? period, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/sentinel/stats';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'project', project));
    if (field != null) {
      queryParams.addAll(_queryParams('', 'field', field));
    }
    if (period != null) {
      queryParams.addAll(_queryParams('', 'period', period));
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

  /// Returns a project's event-rate timeseries: one bucket per interval over the requested period, counting the events in it.
  ///
  /// Returns a project's event-rate timeseries: one bucket per interval over the requested period, counting the events in it.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project to read, as its id. Required.
  ///
  /// * [String] field:
  ///   Field is the dimension to count over. Empty counts all events.
  ///
  /// * [String] period:
  ///   Period is the window to read, relative to now — 1h, 24h, 7d, 14d, 30d.
  Future<O11yO11yStatsOut?> getO11ySentinelStats(String project, { String? field, String? period, }) async {
    final response = await getO11ySentinelStatsWithHttpInfo(project,  field: field, period: period, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yStatsOut',) as O11yO11yStatsOut;
    
    }
    return null;
  }

  /// Lists the traces a project's captured errors reference, each with how many errors landed on it, when they started and stopped, and the latest message seen — the entry point for \"which requests are failing\".
  ///
  /// Lists the traces a project's captured errors reference, each with how many errors landed on it, when they started and stopped, and the latest message seen — the entry point for \"which requests are failing\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project to read, as its id. Required.
  ///
  /// * [String] period:
  ///   Period is the window to read, relative to now — 1h, 24h, 7d, 14d, 30d.
  ///
  /// * [int] limit:
  ///   Limit caps how many traces come back.
  Future<Response> getO11ySentinelTracesWithHttpInfo(String project, { String? period, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/sentinel/traces';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'project', project));
    if (period != null) {
      queryParams.addAll(_queryParams('', 'period', period));
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

  /// Lists the traces a project's captured errors reference, each with how many errors landed on it, when they started and stopped, and the latest message seen — the entry point for \"which requests are failing\".
  ///
  /// Lists the traces a project's captured errors reference, each with how many errors landed on it, when they started and stopped, and the latest message seen — the entry point for \"which requests are failing\".
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   Project is the project to read, as its id. Required.
  ///
  /// * [String] period:
  ///   Period is the window to read, relative to now — 1h, 24h, 7d, 14d, 30d.
  ///
  /// * [int] limit:
  ///   Limit caps how many traces come back.
  Future<O11yO11yTracesOut?> getO11ySentinelTraces(String project, { String? period, int? limit, }) async {
    final response = await getO11ySentinelTracesWithHttpInfo(project,  period: period, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yTracesOut',) as O11yO11yTracesOut;
    
    }
    return null;
  }

  /// Returns one trace's captured errors for a project — every error event that carried the trace id, in the order the events plane holds them.
  ///
  /// Returns one trace's captured errors for a project — every error event that carried the trace id, in the order the events plane holds them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the trace id.
  ///
  /// * [String] project (required):
  ///   Project is the project the trace's errors belong to. Required.
  Future<Response> getO11ySentinelTracesByIdWithHttpInfo(String id, String project,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/sentinel/traces/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'project', project));

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

  /// Returns one trace's captured errors for a project — every error event that carried the trace id, in the order the events plane holds them.
  ///
  /// Returns one trace's captured errors for a project — every error event that carried the trace id, in the order the events plane holds them.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the trace id.
  ///
  /// * [String] project (required):
  ///   Project is the project the trace's errors belong to. Required.
  Future<O11yO11yTraceOut?> getO11ySentinelTracesById(String id, String project,) async {
    final response = await getO11ySentinelTracesByIdWithHttpInfo(id, project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yTraceOut',) as O11yO11yTraceOut;
    
    }
    return null;
  }

  /// Lists the name of every service the trace store holds, with no window applied — the complete catalog, for pickers and autocomplete.
  ///
  /// Lists the name of every service the trace store holds, with no window applied — the complete catalog, for pickers and autocomplete.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yServicesListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/services/list';

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

  /// Lists the name of every service the trace store holds, with no window applied — the complete catalog, for pickers and autocomplete.
  ///
  /// Lists the name of every service the trace store holds, with no window applied — the complete catalog, for pickers and autocomplete.
  Future<List<String>?> getO11yServicesList() async {
    final response = await getO11yServicesListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List)
        .cast<String>()
        .toList(growable: false);

    }
    return null;
  }

  /// List the caller org's LLM sessions
  ///
  /// Answers the caller org's LLM-observability sessions — traces grouped by session id on the gen_ai span plane — paged by limit and offset, in the runtime's own envelope, passed through unchanged.  An org-less caller is refused HERE, at the cloud boundary, before the request reaches the runtime, and the org the runtime then scopes on is that SAME validated tenant. The two cannot disagree: the tenant is minted from the principal's own claim at ingress and a client copy never survives it.  There is deliberately no session-detail route to pair with this. The runtime serves the list only; detail is composed client-side from this list plus the traces filtered by session, so a caller looking for one is looking for something that was never served rather than something that broke.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11ySessionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/sessions';

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

  /// List the caller org's LLM sessions
  ///
  /// Answers the caller org's LLM-observability sessions — traces grouped by session id on the gen_ai span plane — paged by limit and offset, in the runtime's own envelope, passed through unchanged.  An org-less caller is refused HERE, at the cloud boundary, before the request reaches the runtime, and the org the runtime then scopes on is that SAME validated tenant. The two cannot disagree: the tenant is minted from the principal's own claim at ingress and a client copy never survives it.  There is deliberately no session-detail route to pair with this. The runtime serves the list only; detail is composed client-side from this list plus the traces filtered by session, so a caller looking for one is looking for something that was never served rather than something that broke.
  Future<void> getO11ySessions() async {
    final response = await getO11ySessionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns apdex settings for the named services.
  ///
  /// Returns apdex settings for the named services.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] services:
  ///   Services are the service names, comma separated.
  Future<Response> getO11ySettingsApdexWithHttpInfo({ String? services, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/settings/apdex';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (services != null) {
      queryParams.addAll(_queryParams('', 'services', services));
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

  /// Returns apdex settings for the named services.
  ///
  /// Returns apdex settings for the named services.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] services:
  ///   Services are the service names, comma separated.
  Future<O11yO11yApdexOut?> getO11ySettingsApdex({ String? services, }) async {
    final response = await getO11ySettingsApdexWithHttpInfo( services: services, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yApdexOut',) as O11yO11yApdexOut;
    
    }
    return null;
  }

  /// Returns the org's current retention policy: default TTL, custom per-label rules, and cold-storage settings where configured.
  ///
  /// Returns the org's current retention policy: default TTL, custom per-label rules, and cold-storage settings where configured.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11ySettingsTtlWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/settings/ttl';

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

  /// Returns the org's current retention policy: default TTL, custom per-label rules, and cold-storage settings where configured.
  ///
  /// Returns the org's current retention policy: default TTL, custom per-label rules, and cold-storage settings where configured.  Callers need the viewer role; the runtime's own gate enforces it.
  Future<O11yO11yRetentionOut?> getO11ySettingsTtl() async {
    final response = await getO11ySettingsTtlWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRetentionOut',) as O11yO11yRetentionOut;
    
    }
    return null;
  }

  /// Lists the metric attribute keys Kubernetes statefulsets report, for building statefulset filters.
  ///
  /// Lists the metric attribute keys Kubernetes statefulsets report, for building statefulset filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<Response> getO11yStatefulsetsAttributeKeysWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/statefulsets/attribute_keys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the metric attribute keys Kubernetes statefulsets report, for building statefulset filters.
  ///
  /// Lists the metric attribute keys Kubernetes statefulsets report, for building statefulset filters.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the keys come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the keys will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the keys must appear on.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the keys to one kind — tag or resource. Empty means all; an invalid value reads as empty.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50.
  Future<O11yO11yInfraAttributeKeysOut?> getO11yStatefulsetsAttributeKeys({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yStatefulsetsAttributeKeysWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeKeysOut',) as O11yO11yInfraAttributeKeysOut;
    
    }
    return null;
  }

  /// Lists the values one statefulset attribute key has taken, for building statefulset filters.
  ///
  /// Lists the values one statefulset attribute key has taken, for building statefulset filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<Response> getO11yStatefulsetsAttributeValuesWithHttpInfo({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/statefulsets/attribute_values';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataSource != null) {
      queryParams.addAll(_queryParams('', 'dataSource', dataSource));
    }
    if (aggregateOperator != null) {
      queryParams.addAll(_queryParams('', 'aggregateOperator', aggregateOperator));
    }
    if (aggregateAttribute != null) {
      queryParams.addAll(_queryParams('', 'aggregateAttribute', aggregateAttribute));
    }
    if (attributeKey != null) {
      queryParams.addAll(_queryParams('', 'attributeKey', attributeKey));
    }
    if (filterAttributeKeyDataType != null) {
      queryParams.addAll(_queryParams('', 'filterAttributeKeyDataType', filterAttributeKeyDataType));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (tagType != null) {
      queryParams.addAll(_queryParams('', 'tagType', tagType));
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

  /// Lists the values one statefulset attribute key has taken, for building statefulset filters.
  ///
  /// Lists the values one statefulset attribute key has taken, for building statefulset filters.
  ///
  /// Parameters:
  ///
  /// * [String] dataSource:
  ///   DataSource is the telemetry the values come from — metrics for the infra faces. The runtime requires it.
  ///
  /// * [String] aggregateOperator:
  ///   AggregateOperator is the aggregation the values will be used under, e.g. noop, count, avg. The runtime requires it for non-metrics sources.
  ///
  /// * [String] aggregateAttribute:
  ///   AggregateAttribute is the metric the values must appear on.
  ///
  /// * [String] attributeKey:
  ///   AttributeKey is the key whose values to list.
  ///
  /// * [String] filterAttributeKeyDataType:
  ///   FilterAttributeKeyDataType is the key's data type — string, int64, float64 or bool. Empty means unspecified.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the values to those containing it.
  ///
  /// * [String] tagType:
  ///   TagType narrows the search to one kind of key — tag or resource.
  ///
  /// * [int] limit:
  ///   Limit caps how many values come back. Absent means 50.
  Future<O11yO11yInfraAttributeValuesOut?> getO11yStatefulsetsAttributeValues({ String? dataSource, String? aggregateOperator, String? aggregateAttribute, String? attributeKey, String? filterAttributeKeyDataType, String? searchText, String? tagType, int? limit, }) async {
    final response = await getO11yStatefulsetsAttributeValuesWithHttpInfo( dataSource: dataSource, aggregateOperator: aggregateOperator, aggregateAttribute: aggregateAttribute, attributeKey: attributeKey, filterAttributeKeyDataType: filterAttributeKeyDataType, searchText: searchText, tagType: tagType, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraAttributeValuesOut',) as O11yO11yInfraAttributeValuesOut;
    
    }
    return null;
  }

  /// Returns the collected usage statistics for the caller's org, as the stats reporter aggregates them — a map whose keys are the reporter's own counter names.
  ///
  /// Returns the collected usage statistics for the caller's org, as the stats reporter aggregates them — a map whose keys are the reporter's own counter names.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yStatsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/stats';

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

  /// Returns the collected usage statistics for the caller's org, as the stats reporter aggregates them — a map whose keys are the reporter's own counter names.
  ///
  /// Returns the collected usage statistics for the caller's org, as the stats reporter aggregates them — a map whose keys are the reporter's own counter names.  Callers need the viewer role; the runtime's own gate enforces it.
  Future<O11yO11yOrgStatsOut?> getO11yStats() async {
    final response = await getO11yStatsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yOrgStatsOut',) as O11yO11yOrgStatsOut;
    
    }
    return null;
  }

  /// Reports whether a product's service is live: an in-cluster health probe with its measured latency, fused with the per-replica up inventory.
  ///
  /// Reports whether a product's service is live: an in-cluster health probe with its measured latency, fused with the per-replica up inventory. Infra health is not tenant-partitioned — a service is up or down for everyone — so any validated caller is served, but an unvalidated one is refused. A product with no backing workload answers down/unknown-service without probing anything; a malformed slug is a 400.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] product:
  ///   Product is the console product slug to probe, e.g. \"kms\". Required.
  Future<Response> getO11yStatusWithHttpInfo({ String? product, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/status';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (product != null) {
      queryParams.addAll(_queryParams('', 'product', product));
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

  /// Reports whether a product's service is live: an in-cluster health probe with its measured latency, fused with the per-replica up inventory.
  ///
  /// Reports whether a product's service is live: an in-cluster health probe with its measured latency, fused with the per-replica up inventory. Infra health is not tenant-partitioned — a service is up or down for everyone — so any validated caller is served, but an unvalidated one is refused. A product with no backing workload answers down/unknown-service without probing anything; a malformed slug is a 400.
  ///
  /// Parameters:
  ///
  /// * [String] product:
  ///   Product is the console product slug to probe, e.g. \"kms\". Required.
  Future<O11yStatusResult?> getO11yStatus({ String? product, }) async {
    final response = await getO11yStatusWithHttpInfo( product: product, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yStatusResult',) as O11yStatusResult;
    
    }
    return null;
  }

  /// Reports whether the platform is up.
  ///
  /// Reports whether the platform is up. It returns the public status document: the incidents currently open against Hanzo's own services, derived from the fleet health probes, plus the address of the human status page. No authentication is required and no tenant data is involved — the answer is the same for every caller.  A service that fails its health probe becomes one incident naming that service. When the availability source itself cannot be read the endpoint answers 503 rather than an empty incident list, because \"we cannot tell\" and \"everything is fine\" are different answers and only one of them is true.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11ySummaryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/summary';

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

  /// Reports whether the platform is up.
  ///
  /// Reports whether the platform is up. It returns the public status document: the incidents currently open against Hanzo's own services, derived from the fleet health probes, plus the address of the human status page. No authentication is required and no tenant data is involved — the answer is the same for every caller.  A service that fails its health probe becomes one incident naming that service. When the availability source itself cannot be read the endpoint answers 503 rather than an empty incident list, because \"we cannot tell\" and \"everything is fine\" are different answers and only one of them is true.
  Future<O11yStatusSummary?> getO11ySummary() async {
    final response = await getO11ySummaryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yStatusSummary',) as O11yStatusSummary;
    
    }
    return null;
  }

  /// Lists the caller org's recent traces — one row per trace with its span count and wall-clock duration, most recently active first.
  ///
  /// Lists the caller org's recent traces — one row per trace with its span count and wall-clock duration, most recently active first. This is the trace SEARCH: it is where a trace id comes from, and the spans behind any row are then read from GET /v1/o11y/traces/{traceId}. Every row belongs to the caller's own org — the tenant is the validated principal, never an input, and there is no administrator widening, because a trace list is a tenant's records rather than a rollup over them. An unreachable telemetry store answers 503 rather than an empty page, because \"no traces\" and \"cannot see the traces\" are different facts and only one of them is about the caller's system.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] range:
  ///   Range is the window in seconds, counted back from now over each trace's last activity. Default 3600, capped at 604800 (7d).
  ///
  /// * [int] limit:
  ///   Limit is how many traces to return. Default 50, capped at 500.
  ///
  /// * [int] minDurationMs:
  ///   MinDurationMs keeps only traces that lasted at least this many milliseconds. Zero or absent keeps every trace in the window.
  Future<Response> getO11yTracesWithHttpInfo({ int? range, int? limit, int? minDurationMs, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/traces';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (range != null) {
      queryParams.addAll(_queryParams('', 'range', range));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (minDurationMs != null) {
      queryParams.addAll(_queryParams('', 'minDurationMs', minDurationMs));
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

  /// Lists the caller org's recent traces — one row per trace with its span count and wall-clock duration, most recently active first.
  ///
  /// Lists the caller org's recent traces — one row per trace with its span count and wall-clock duration, most recently active first. This is the trace SEARCH: it is where a trace id comes from, and the spans behind any row are then read from GET /v1/o11y/traces/{traceId}. Every row belongs to the caller's own org — the tenant is the validated principal, never an input, and there is no administrator widening, because a trace list is a tenant's records rather than a rollup over them. An unreachable telemetry store answers 503 rather than an empty page, because \"no traces\" and \"cannot see the traces\" are different facts and only one of them is about the caller's system.
  ///
  /// Parameters:
  ///
  /// * [int] range:
  ///   Range is the window in seconds, counted back from now over each trace's last activity. Default 3600, capped at 604800 (7d).
  ///
  /// * [int] limit:
  ///   Limit is how many traces to return. Default 50, capped at 500.
  ///
  /// * [int] minDurationMs:
  ///   MinDurationMs keeps only traces that lasted at least this many milliseconds. Zero or absent keeps every trace in the window.
  Future<O11yTracesOut?> getO11yTraces({ int? range, int? limit, int? minDurationMs, }) async {
    final response = await getO11yTracesWithHttpInfo( range: range, limit: limit, minDurationMs: minDurationMs, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yTracesOut',) as O11yTracesOut;
    
    }
    return null;
  }

  /// Returns ingestion usage counts bucketed over the requested window, optionally narrowed to one service.
  ///
  /// Returns ingestion usage counts bucketed over the requested window, optionally narrowed to one service.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] start (required):
  ///   Start is the window start, as epoch nanoseconds. Required.
  ///
  /// * [String] end (required):
  ///   End is the window end, as epoch nanoseconds. Required.
  ///
  /// * [int] step:
  ///   Step is the bucket width in seconds. The runtime requires it.
  ///
  /// * [String] service:
  ///   Service narrows usage to one service. Empty covers all.
  Future<Response> getO11yUsageWithHttpInfo(String start, String end, { int? step, String? service, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/usage';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'end', end));
    if (step != null) {
      queryParams.addAll(_queryParams('', 'step', step));
    }
    if (service != null) {
      queryParams.addAll(_queryParams('', 'service', service));
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

  /// Returns ingestion usage counts bucketed over the requested window, optionally narrowed to one service.
  ///
  /// Returns ingestion usage counts bucketed over the requested window, optionally narrowed to one service.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] start (required):
  ///   Start is the window start, as epoch nanoseconds. Required.
  ///
  /// * [String] end (required):
  ///   End is the window end, as epoch nanoseconds. Required.
  ///
  /// * [int] step:
  ///   Step is the bucket width in seconds. The runtime requires it.
  ///
  /// * [String] service:
  ///   Service narrows usage to one service. Empty covers all.
  Future<List<O11yO11yUsageItem>?> getO11yUsage(String start, String end, { int? step, String? service, }) async {
    final response = await getO11yUsageWithHttpInfo(start, end,  step: step, service: service, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<O11yO11yUsageItem>') as List)
        .cast<O11yO11yUsageItem>()
        .toList(growable: false);

    }
    return null;
  }

  /// Reports the running build: its version, whether an enterprise edition is present (\"N\" in this build), and whether first-user setup has completed.
  ///
  /// Reports the running build: its version, whether an enterprise edition is present (\"N\" in this build), and whether first-user setup has completed.  Open by design; the runtime's own gate is OpenAccess.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getO11yVersionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/version';

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

  /// Reports the running build: its version, whether an enterprise edition is present (\"N\" in this build), and whether first-user setup has completed.
  ///
  /// Reports the running build: its version, whether an enterprise edition is present (\"N\" in this build), and whether first-user setup has completed.  Open by design; the runtime's own gate is OpenAccess.
  Future<O11yO11yVersionOut?> getO11yVersion() async {
    final response = await getO11yVersionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yVersionOut',) as O11yO11yVersionOut;
    
    }
    return null;
  }

  /// Returns one org-scoped preference, by name.
  ///
  /// Returns one org-scoped preference, by name. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Response> getOrgPreferenceWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/org/preferences/{name}'
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

  /// Returns one org-scoped preference, by name.
  ///
  /// Returns one org-scoped preference, by name. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<O11yO11yPreferenceOut?> getOrgPreference(String name,) async {
    final response = await getOrgPreferenceWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yPreferenceOut',) as O11yO11yPreferenceOut;
    
    }
    return null;
  }

  /// Returns the overall firing/inactive windows for a rule, for the posted query range.
  ///
  /// Returns the overall firing/inactive windows for a rule, for the posted query range. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yRuleHistoryQueryIn] o11yO11yRuleHistoryQueryIn (required):
  Future<Response> getOverallStateTransitionsWithHttpInfo(String id, O11yO11yRuleHistoryQueryIn o11yO11yRuleHistoryQueryIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/rules/{id}/history/overall_status'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yRuleHistoryQueryIn;

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

  /// Returns the overall firing/inactive windows for a rule, for the posted query range.
  ///
  /// Returns the overall firing/inactive windows for a rule, for the posted query range. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yRuleHistoryQueryIn] o11yO11yRuleHistoryQueryIn (required):
  Future<O11yO11yOverallStateTransitionsOut?> getOverallStateTransitions(String id, O11yO11yRuleHistoryQueryIn o11yO11yRuleHistoryQueryIn,) async {
    final response = await getOverallStateTransitionsWithHttpInfo(id, o11yO11yRuleHistoryQueryIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yOverallStateTransitionsOut',) as O11yO11yOverallStateTransitionsOut;
    
    }
    return null;
  }

  /// Returns the public-sharing config for a dashboard.
  ///
  /// Returns the public-sharing config for a dashboard.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<Response> getPublicDashboardWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/dashboards/{id}/public'
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

  /// Returns the public-sharing config for a dashboard.
  ///
  /// Returns the public-sharing config for a dashboard.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<O11yO11yPublicDashboardOut?> getPublicDashboard(String id,) async {
    final response = await getPublicDashboardWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yPublicDashboardOut',) as O11yO11yPublicDashboardOut;
    
    }
    return null;
  }

  /// Returns the sanitized dashboard data for public access — the read a shared dashboard's public page makes.
  ///
  /// Returns the sanitized dashboard data for public access — the read a shared dashboard's public page makes.  Anonymous, scoped to the public dashboard's read scope; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<Response> getPublicDashboardDataWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/public/dashboards/{id}'
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

  /// Returns the sanitized dashboard data for public access — the read a shared dashboard's public page makes.
  ///
  /// Returns the sanitized dashboard data for public access — the read a shared dashboard's public page makes.  Anonymous, scoped to the public dashboard's read scope; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<O11yO11yPublicDashboardDataOut?> getPublicDashboardData(String id,) async {
    final response = await getPublicDashboardDataWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yPublicDashboardDataOut',) as O11yO11yPublicDashboardDataOut;
    
    }
    return null;
  }

  /// Returns the query-range result for one widget of a public dashboard.
  ///
  /// Returns the query-range result for one widget of a public dashboard. When the share fixes its own time range the caller's startTime/endTime are ignored; otherwise they bound the window as millisecond epochs.  Anonymous, scoped to the public dashboard's read scope; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the public dashboard id from the path.
  ///
  /// * [String] idx (required):
  ///   Idx is the widget's index from the path.
  ///
  /// * [String] startTime:
  ///   StartTime is the window start as a millisecond epoch. Used only when the share enables a caller-chosen time range.
  ///
  /// * [String] endTime:
  ///   EndTime is the window end as a millisecond epoch. Used only when the share enables a caller-chosen time range.
  Future<Response> getPublicDashboardWidgetQueryRangeWithHttpInfo(String id, String idx, { String? startTime, String? endTime, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/public/dashboards/{id}/widgets/{idx}/query_range'
      .replaceAll('{id}', id)
      .replaceAll('{idx}', idx);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startTime != null) {
      queryParams.addAll(_queryParams('', 'startTime', startTime));
    }
    if (endTime != null) {
      queryParams.addAll(_queryParams('', 'endTime', endTime));
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

  /// Returns the query-range result for one widget of a public dashboard.
  ///
  /// Returns the query-range result for one widget of a public dashboard. When the share fixes its own time range the caller's startTime/endTime are ignored; otherwise they bound the window as millisecond epochs.  Anonymous, scoped to the public dashboard's read scope; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the public dashboard id from the path.
  ///
  /// * [String] idx (required):
  ///   Idx is the widget's index from the path.
  ///
  /// * [String] startTime:
  ///   StartTime is the window start as a millisecond epoch. Used only when the share enables a caller-chosen time range.
  ///
  /// * [String] endTime:
  ///   EndTime is the window end as a millisecond epoch. Used only when the share enables a caller-chosen time range.
  Future<O11yO11yWidgetQueryRangeOut?> getPublicDashboardWidgetQueryRange(String id, String idx, { String? startTime, String? endTime, }) async {
    final response = await getPublicDashboardWidgetQueryRangeWithHttpInfo(id, idx,  startTime: startTime, endTime: endTime, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yWidgetQueryRangeOut',) as O11yO11yWidgetQueryRangeOut;
    
    }
    return null;
  }

  /// Returns the org's quick filters for every signal — the attribute shortlists its explorers offer as one-click filters.
  ///
  /// Returns the org's quick filters for every signal — the attribute shortlists its explorers offer as one-click filters. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getQuickFiltersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/orgs/me/filters';

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

  /// Returns the org's quick filters for every signal — the attribute shortlists its explorers offer as one-click filters.
  ///
  /// Returns the org's quick filters for every signal — the attribute shortlists its explorers offer as one-click filters. Viewer gate.
  Future<O11yO11yQuickFiltersOut?> getQuickFilters() async {
    final response = await getQuickFiltersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yQuickFiltersOut',) as O11yO11yQuickFiltersOut;
    
    }
    return null;
  }

  /// Returns the reset-password token a user already has; absent one, the answer is a not-found rather than a fresh token.
  ///
  /// Returns the reset-password token a user already has; absent one, the answer is a not-found rather than a fresh token. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getResetPasswordTokenWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/users/{id}/reset_password_tokens'
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

  /// Returns the reset-password token a user already has; absent one, the answer is a not-found rather than a fresh token.
  ///
  /// Returns the reset-password token a user already has; absent one, the answer is a not-found rather than a fresh token. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<O11yO11yResetTokenOut?> getResetPasswordToken(String id,) async {
    final response = await getResetPasswordTokenWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yResetTokenOut',) as O11yO11yResetTokenOut;
    
    }
    return null;
  }

  /// Returns a user's password-reset token, creating one if none is live.
  ///
  /// Returns a user's password-reset token, creating one if none is live. Deprecated in favor of the reset_password_tokens pair, which separates reading from minting. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getResetPasswordTokenDeprecatedWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/getResetPasswordToken/{id}'
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

  /// Returns a user's password-reset token, creating one if none is live.
  ///
  /// Returns a user's password-reset token, creating one if none is live. Deprecated in favor of the reset_password_tokens pair, which separates reading from minting. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<O11yO11yResetTokenOut?> getResetPasswordTokenDeprecated(String id,) async {
    final response = await getResetPasswordTokenDeprecatedWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yResetTokenOut',) as O11yO11yResetTokenOut;
    
    }
    return null;
  }

  /// Returns one role with the transaction groups it grants.
  ///
  /// Returns one role with the transaction groups it grants.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getRoleWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/roles/{id}'
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

  /// Returns one role with the transaction groups it grants.
  ///
  /// Returns one role with the transaction groups it grants.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<O11yO11yRoleOut?> getRole(String id,) async {
    final response = await getRoleWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRoleOut',) as O11yO11yRoleOut;
    
    }
    return null;
  }

  /// Returns every role one org member holds, by user id.
  ///
  /// Returns every role one org member holds, by user id. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getRolesByUserIDWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/users/{id}/roles'
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

  /// Returns every role one org member holds, by user id.
  ///
  /// Returns every role one org member holds, by user id. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<O11yO11yRolesOut?> getRolesByUserID(String id,) async {
    final response = await getRolesByUserIDWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRolesOut',) as O11yO11yRolesOut;
    
    }
    return null;
  }

  /// Returns one route policy, by id.
  ///
  /// Returns one route policy, by id. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getRoutePolicyByIDWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/route_policies/{id}'
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

  /// Returns one route policy, by id.
  ///
  /// Returns one route policy, by id. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<O11yO11yRoutePolicyOut?> getRoutePolicyByID(String id,) async {
    final response = await getRoutePolicyByIDWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRoutePolicyOut',) as O11yO11yRoutePolicyOut;
    
    }
    return null;
  }

  /// Returns one alert rule with its evaluation state, by id.
  ///
  /// Returns one alert rule with its evaluation state, by id. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getRuleByIDWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/rules/{id}'
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

  /// Returns one alert rule with its evaluation state, by id.
  ///
  /// Returns one alert rule with its evaluation state, by id. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<O11yO11yRuleOut?> getRuleByID(String id,) async {
    final response = await getRuleByIDWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRuleOut',) as O11yO11yRuleOut;
    
    }
    return null;
  }

  /// Returns the distinct label keys present in a rule's history entries over the selected range, for building history filters.
  ///
  /// Returns the distinct label keys present in a rule's history entries over the selected range, for building history filters. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] startUnixMilli:
  ///   StartUnixMilli is the window start, unix milliseconds.
  ///
  /// * [int] endUnixMilli:
  ///   EndUnixMilli is the window end, unix milliseconds.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50, capped at 200.
  Future<Response> getRuleHistoryFilterKeysWithHttpInfo(String id, { int? startUnixMilli, int? endUnixMilli, String? searchText, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/rules/{id}/history/filter_keys'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startUnixMilli != null) {
      queryParams.addAll(_queryParams('', 'startUnixMilli', startUnixMilli));
    }
    if (endUnixMilli != null) {
      queryParams.addAll(_queryParams('', 'endUnixMilli', endUnixMilli));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
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

  /// Returns the distinct label keys present in a rule's history entries over the selected range, for building history filters.
  ///
  /// Returns the distinct label keys present in a rule's history entries over the selected range, for building history filters. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] startUnixMilli:
  ///   StartUnixMilli is the window start, unix milliseconds.
  ///
  /// * [int] endUnixMilli:
  ///   EndUnixMilli is the window end, unix milliseconds.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the keys to those containing it.
  ///
  /// * [int] limit:
  ///   Limit caps how many keys come back. Absent means 50, capped at 200.
  Future<O11yO11yRuleHistoryFilterKeysOut?> getRuleHistoryFilterKeys(String id, { int? startUnixMilli, int? endUnixMilli, String? searchText, int? limit, }) async {
    final response = await getRuleHistoryFilterKeysWithHttpInfo(id,  startUnixMilli: startUnixMilli, endUnixMilli: endUnixMilli, searchText: searchText, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRuleHistoryFilterKeysOut',) as O11yO11yRuleHistoryFilterKeysOut;
    
    }
    return null;
  }

  /// Returns the distinct values a given label key has taken across a rule's history entries.
  ///
  /// Returns the distinct values a given label key has taken across a rule's history entries. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] name (required):
  ///   Name is the label key whose values to list. Required.
  ///
  /// * [int] startUnixMilli:
  ///
  /// * [int] endUnixMilli:
  ///
  /// * [String] searchText:
  ///
  /// * [int] limit:
  ///
  /// * [String] existingQuery:
  ///   ExistingQuery is a filter expression scoping which values appear.
  Future<Response> getRuleHistoryFilterValuesWithHttpInfo(String id, String name, { int? startUnixMilli, int? endUnixMilli, String? searchText, int? limit, String? existingQuery, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/rules/{id}/history/filter_values'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startUnixMilli != null) {
      queryParams.addAll(_queryParams('', 'startUnixMilli', startUnixMilli));
    }
    if (endUnixMilli != null) {
      queryParams.addAll(_queryParams('', 'endUnixMilli', endUnixMilli));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
      queryParams.addAll(_queryParams('', 'name', name));
    if (existingQuery != null) {
      queryParams.addAll(_queryParams('', 'existingQuery', existingQuery));
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

  /// Returns the distinct values a given label key has taken across a rule's history entries.
  ///
  /// Returns the distinct values a given label key has taken across a rule's history entries. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] name (required):
  ///   Name is the label key whose values to list. Required.
  ///
  /// * [int] startUnixMilli:
  ///
  /// * [int] endUnixMilli:
  ///
  /// * [String] searchText:
  ///
  /// * [int] limit:
  ///
  /// * [String] existingQuery:
  ///   ExistingQuery is a filter expression scoping which values appear.
  Future<O11yO11yRuleHistoryFilterValuesOut?> getRuleHistoryFilterValues(String id, String name, { int? startUnixMilli, int? endUnixMilli, String? searchText, int? limit, String? existingQuery, }) async {
    final response = await getRuleHistoryFilterValuesWithHttpInfo(id, name,  startUnixMilli: startUnixMilli, endUnixMilli: endUnixMilli, searchText: searchText, limit: limit, existingQuery: existingQuery, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRuleHistoryFilterValuesOut',) as O11yO11yRuleHistoryFilterValuesOut;
    
    }
    return null;
  }

  /// Returns the overall firing/inactive intervals for a rule over the selected range.
  ///
  /// Returns the overall firing/inactive intervals for a rule over the selected range. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] start:
  ///   Start is the window start, unix milliseconds. Required by the runtime.
  ///
  /// * [int] end:
  ///   End is the window end, unix milliseconds. Required by the runtime.
  Future<Response> getRuleHistoryOverallStatusWithHttpInfo(String id, { int? start, int? end, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/rules/{id}/history/overall_status'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
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

  /// Returns the overall firing/inactive intervals for a rule over the selected range.
  ///
  /// Returns the overall firing/inactive intervals for a rule over the selected range. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] start:
  ///   Start is the window start, unix milliseconds. Required by the runtime.
  ///
  /// * [int] end:
  ///   End is the window end, unix milliseconds. Required by the runtime.
  Future<O11yO11yRuleHistoryOverallStatusOut?> getRuleHistoryOverallStatus(String id, { int? start, int? end, }) async {
    final response = await getRuleHistoryOverallStatusWithHttpInfo(id,  start: start, end: end, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRuleHistoryOverallStatusOut',) as O11yO11yRuleHistoryOverallStatusOut;
    
    }
    return null;
  }

  /// Returns trigger and resolution statistics for a rule over the selected time range, current window against the prior one.
  ///
  /// Returns trigger and resolution statistics for a rule over the selected time range, current window against the prior one. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] start:
  ///   Start is the window start, unix milliseconds. Required by the runtime.
  ///
  /// * [int] end:
  ///   End is the window end, unix milliseconds. Required by the runtime.
  Future<Response> getRuleHistoryStatsWithHttpInfo(String id, { int? start, int? end, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/rules/{id}/history/stats'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
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

  /// Returns trigger and resolution statistics for a rule over the selected time range, current window against the prior one.
  ///
  /// Returns trigger and resolution statistics for a rule over the selected time range, current window against the prior one. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] start:
  ///   Start is the window start, unix milliseconds. Required by the runtime.
  ///
  /// * [int] end:
  ///   End is the window end, unix milliseconds. Required by the runtime.
  Future<O11yO11yRuleHistoryStatsOut?> getRuleHistoryStats(String id, { int? start, int? end, }) async {
    final response = await getRuleHistoryStatsWithHttpInfo(id,  start: start, end: end, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRuleHistoryStatsOut',) as O11yO11yRuleHistoryStatsOut;
    
    }
    return null;
  }

  /// Returns paginated timeline entries for a rule's state transitions, filterable by state and a label expression, cursor-paginated.
  ///
  /// Returns paginated timeline entries for a rule's state transitions, filterable by state and a label expression, cursor-paginated. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] start:
  ///   Start is the window start, unix milliseconds. Required by the runtime.
  ///
  /// * [int] end:
  ///   End is the window end, unix milliseconds. Required by the runtime.
  ///
  /// * [String] state:
  ///   State keeps only entries in one alert state, e.g. firing or normal.
  ///
  /// * [String] filterExpression:
  ///   FilterExpression narrows entries to those whose labels match it.
  ///
  /// * [int] limit:
  ///   Limit caps how many entries come back. Absent means 50.
  ///
  /// * [String] order:
  ///   Order sorts by time, asc or desc.
  ///
  /// * [String] cursor:
  ///   Cursor resumes a previous page; opaque, returned as nextCursor.
  Future<Response> getRuleHistoryTimelineWithHttpInfo(String id, { int? start, int? end, String? state, String? filterExpression, int? limit, String? order, String? cursor, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/rules/{id}/history/timeline'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
    }
    if (state != null) {
      queryParams.addAll(_queryParams('', 'state', state));
    }
    if (filterExpression != null) {
      queryParams.addAll(_queryParams('', 'filterExpression', filterExpression));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (order != null) {
      queryParams.addAll(_queryParams('', 'order', order));
    }
    if (cursor != null) {
      queryParams.addAll(_queryParams('', 'cursor', cursor));
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

  /// Returns paginated timeline entries for a rule's state transitions, filterable by state and a label expression, cursor-paginated.
  ///
  /// Returns paginated timeline entries for a rule's state transitions, filterable by state and a label expression, cursor-paginated. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] start:
  ///   Start is the window start, unix milliseconds. Required by the runtime.
  ///
  /// * [int] end:
  ///   End is the window end, unix milliseconds. Required by the runtime.
  ///
  /// * [String] state:
  ///   State keeps only entries in one alert state, e.g. firing or normal.
  ///
  /// * [String] filterExpression:
  ///   FilterExpression narrows entries to those whose labels match it.
  ///
  /// * [int] limit:
  ///   Limit caps how many entries come back. Absent means 50.
  ///
  /// * [String] order:
  ///   Order sorts by time, asc or desc.
  ///
  /// * [String] cursor:
  ///   Cursor resumes a previous page; opaque, returned as nextCursor.
  Future<O11yO11yRuleHistoryTimelineOut?> getRuleHistoryTimeline(String id, { int? start, int? end, String? state, String? filterExpression, int? limit, String? order, String? cursor, }) async {
    final response = await getRuleHistoryTimelineWithHttpInfo(id,  start: start, end: end, state: state, filterExpression: filterExpression, limit: limit, order: order, cursor: cursor, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRuleHistoryTimelineOut',) as O11yO11yRuleHistoryTimelineOut;
    
    }
    return null;
  }

  /// Returns the label combinations that contributed most to a rule firing over the selected range.
  ///
  /// Returns the label combinations that contributed most to a rule firing over the selected range. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] start:
  ///   Start is the window start, unix milliseconds. Required by the runtime.
  ///
  /// * [int] end:
  ///   End is the window end, unix milliseconds. Required by the runtime.
  Future<Response> getRuleHistoryTopContributorsWithHttpInfo(String id, { int? start, int? end, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/rules/{id}/history/top_contributors'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
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

  /// Returns the label combinations that contributed most to a rule firing over the selected range.
  ///
  /// Returns the label combinations that contributed most to a rule firing over the selected range. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] start:
  ///   Start is the window start, unix milliseconds. Required by the runtime.
  ///
  /// * [int] end:
  ///   End is the window end, unix milliseconds. Required by the runtime.
  Future<O11yO11yRuleHistoryContributorsOut?> getRuleHistoryTopContributors(String id, { int? start, int? end, }) async {
    final response = await getRuleHistoryTopContributorsWithHttpInfo(id,  start: start, end: end, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRuleHistoryContributorsOut',) as O11yO11yRuleHistoryContributorsOut;
    
    }
    return null;
  }

  /// Returns a rule's state-transition timeline for the posted query range, each entry carrying its related-logs or related-traces link.
  ///
  /// Returns a rule's state-transition timeline for the posted query range, each entry carrying its related-logs or related-traces link. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yRuleHistoryQueryIn] o11yO11yRuleHistoryQueryIn (required):
  Future<Response> getRuleStateHistoryWithHttpInfo(String id, O11yO11yRuleHistoryQueryIn o11yO11yRuleHistoryQueryIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/rules/{id}/history/timeline'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yRuleHistoryQueryIn;

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

  /// Returns a rule's state-transition timeline for the posted query range, each entry carrying its related-logs or related-traces link.
  ///
  /// Returns a rule's state-transition timeline for the posted query range, each entry carrying its related-logs or related-traces link. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yRuleHistoryQueryIn] o11yO11yRuleHistoryQueryIn (required):
  Future<O11yO11yRuleStateTimelineOut?> getRuleStateHistory(String id, O11yO11yRuleHistoryQueryIn o11yO11yRuleHistoryQueryIn,) async {
    final response = await getRuleStateHistoryWithHttpInfo(id, o11yO11yRuleHistoryQueryIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRuleStateTimelineOut',) as O11yO11yRuleStateTimelineOut;
    
    }
    return null;
  }

  /// Returns the label combinations that contributed most to a rule firing, for the posted query range.
  ///
  /// Returns the label combinations that contributed most to a rule firing, for the posted query range. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yRuleHistoryQueryIn] o11yO11yRuleHistoryQueryIn (required):
  Future<Response> getRuleStateHistoryTopContributorsWithHttpInfo(String id, O11yO11yRuleHistoryQueryIn o11yO11yRuleHistoryQueryIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/rules/{id}/history/top_contributors'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yRuleHistoryQueryIn;

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

  /// Returns the label combinations that contributed most to a rule firing, for the posted query range.
  ///
  /// Returns the label combinations that contributed most to a rule firing, for the posted query range. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yRuleHistoryQueryIn] o11yO11yRuleHistoryQueryIn (required):
  Future<O11yO11yRuleStateContributorsOut?> getRuleStateHistoryTopContributors(String id, O11yO11yRuleHistoryQueryIn o11yO11yRuleHistoryQueryIn,) async {
    final response = await getRuleStateHistoryTopContributorsWithHttpInfo(id, o11yO11yRuleHistoryQueryIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRuleStateContributorsOut',) as O11yO11yRuleStateContributorsOut;
    
    }
    return null;
  }

  /// Returns trigger and resolution statistics for a rule, current window against the prior one, for the posted query range.
  ///
  /// Returns trigger and resolution statistics for a rule, current window against the prior one, for the posted query range. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yRuleHistoryQueryIn] o11yO11yRuleHistoryQueryIn (required):
  Future<Response> getRuleStatsWithHttpInfo(String id, O11yO11yRuleHistoryQueryIn o11yO11yRuleHistoryQueryIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/rules/{id}/history/stats'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yRuleHistoryQueryIn;

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

  /// Returns trigger and resolution statistics for a rule, current window against the prior one, for the posted query range.
  ///
  /// Returns trigger and resolution statistics for a rule, current window against the prior one, for the posted query range. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yRuleHistoryQueryIn] o11yO11yRuleHistoryQueryIn (required):
  Future<O11yO11yRuleStatsOut?> getRuleStats(String id, O11yO11yRuleHistoryQueryIn o11yO11yRuleHistoryQueryIn,) async {
    final response = await getRuleStatsWithHttpInfo(id, o11yO11yRuleHistoryQueryIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRuleStatsOut',) as O11yO11yRuleStatsOut;
    
    }
    return null;
  }

  /// Returns one service the given provider can collect from, by service id, optionally scoped to one cloud integration.
  ///
  /// Returns one service the given provider can collect from, by service id, optionally scoped to one cloud integration. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [String] serviceId (required):
  ///
  /// * [String] cloudIntegrationId:
  ///   CloudIntegrationID, when set, scopes the service to one cloud integration.
  Future<Response> getServiceWithHttpInfo(String cloudProvider, String serviceId, { String? cloudIntegrationId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/cloud_integrations/{cloud_provider}/services/{service_id}'
      .replaceAll('{cloud_provider}', cloudProvider)
      .replaceAll('{service_id}', serviceId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (cloudIntegrationId != null) {
      queryParams.addAll(_queryParams('', 'cloud_integration_id', cloudIntegrationId));
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

  /// Returns one service the given provider can collect from, by service id, optionally scoped to one cloud integration.
  ///
  /// Returns one service the given provider can collect from, by service id, optionally scoped to one cloud integration. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [String] serviceId (required):
  ///
  /// * [String] cloudIntegrationId:
  ///   CloudIntegrationID, when set, scopes the service to one cloud integration.
  Future<O11yO11yServiceOut?> getService(String cloudProvider, String serviceId, { String? cloudIntegrationId, }) async {
    final response = await getServiceWithHttpInfo(cloudProvider, serviceId,  cloudIntegrationId: cloudIntegrationId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yServiceOut',) as O11yO11yServiceOut;
    
    }
    return null;
  }

  /// Returns one service account with the roles it holds.
  ///
  /// Returns one service account with the roles it holds.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getServiceAccountWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/service_accounts/{id}'
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

  /// Returns one service account with the roles it holds.
  ///
  /// Returns one service account with the roles it holds.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<O11yO11yServiceAccountOut?> getServiceAccount(String id,) async {
    final response = await getServiceAccountWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yServiceAccountOut',) as O11yO11yServiceAccountOut;
    
    }
    return null;
  }

  /// Lists the roles a service account holds.
  ///
  /// Lists the roles a service account holds.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getServiceAccountRolesWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/service_accounts/{id}/roles'
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

  /// Lists the roles a service account holds.
  ///
  /// Lists the roles a service account holds.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<O11yO11yServiceAccountRolesOut?> getServiceAccountRoles(String id,) async {
    final response = await getServiceAccountRolesWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yServiceAccountRolesOut',) as O11yO11yServiceAccountRolesOut;
    
    }
    return null;
  }

  /// Tells a sign-in page what an email address can do: which orgs the address belongs to and, per org, which password and SSO routes are open to it.
  ///
  /// Tells a sign-in page what an email address can do: which orgs the address belongs to and, per org, which password and SSO routes are open to it. Unauthenticated: it runs before any session exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] email:
  ///   Email is the address about to sign in. Required.
  ///
  /// * [String] ref:
  ///   Ref is the page the sign-in started from, carried into SSO redirects.
  Future<Response> getSessionContextWithHttpInfo({ String? email, String? ref, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/sessions/context';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
    }
    if (ref != null) {
      queryParams.addAll(_queryParams('', 'ref', ref));
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

  /// Tells a sign-in page what an email address can do: which orgs the address belongs to and, per org, which password and SSO routes are open to it.
  ///
  /// Tells a sign-in page what an email address can do: which orgs the address belongs to and, per org, which password and SSO routes are open to it. Unauthenticated: it runs before any session exists.
  ///
  /// Parameters:
  ///
  /// * [String] email:
  ///   Email is the address about to sign in. Required.
  ///
  /// * [String] ref:
  ///   Ref is the page the sign-in started from, carried into SSO redirects.
  Future<O11yO11ySessionContextOut?> getSessionContext({ String? email, String? ref, }) async {
    final response = await getSessionContextWithHttpInfo( email: email, ref: ref, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySessionContextOut',) as O11yO11ySessionContextOut;
    
    }
    return null;
  }

  /// Returns the org's quick filters for one signal — traces, logs, metrics, exceptions or api_monitoring.
  ///
  /// Returns the org's quick filters for one signal — traces, logs, metrics, exceptions or api_monitoring. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] signal (required):
  Future<Response> getSignalFiltersWithHttpInfo(String signal,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/orgs/me/filters/{signal}'
      .replaceAll('{signal}', signal);

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

  /// Returns the org's quick filters for one signal — traces, logs, metrics, exceptions or api_monitoring.
  ///
  /// Returns the org's quick filters for one signal — traces, logs, metrics, exceptions or api_monitoring. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] signal (required):
  Future<O11yO11ySignalFiltersOut?> getSignalFilters(String signal,) async {
    final response = await getSignalFiltersWithHttpInfo(signal,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySignalFiltersOut',) as O11yO11ySignalFiltersOut;
    
    }
    return null;
  }

  /// Computes span aggregations over one trace — span count, duration or share of execution time — grouped by the resource field each aggregation names.
  ///
  /// Computes span aggregations over one trace — span count, duration or share of execution time — grouped by the resource field each aggregation names.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] traceId (required):
  ///
  /// * [O11yO11yTraceAggregationsIn] o11yO11yTraceAggregationsIn (required):
  Future<Response> getTraceAggregationsWithHttpInfo(String traceId, O11yO11yTraceAggregationsIn o11yO11yTraceAggregationsIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/traces/{traceId}/aggregations'
      .replaceAll('{traceId}', traceId);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yTraceAggregationsIn;

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

  /// Computes span aggregations over one trace — span count, duration or share of execution time — grouped by the resource field each aggregation names.
  ///
  /// Computes span aggregations over one trace — span count, duration or share of execution time — grouped by the resource field each aggregation names.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] traceId (required):
  ///
  /// * [O11yO11yTraceAggregationsIn] o11yO11yTraceAggregationsIn (required):
  Future<O11yO11yTraceAggregationsOut?> getTraceAggregations(String traceId, O11yO11yTraceAggregationsIn o11yO11yTraceAggregationsIn,) async {
    final response = await getTraceAggregationsWithHttpInfo(traceId, o11yO11yTraceAggregationsIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yTraceAggregationsOut',) as O11yO11yTraceAggregationsOut;
    
    }
    return null;
  }

  /// Returns the trace field catalog: the span fields already selected as indexed columns, and the interesting ones seen in the data that could be.
  ///
  /// Returns the trace field catalog: the span fields already selected as indexed columns, and the interesting ones seen in the data that could be.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTraceFieldsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/traces/fields';

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

  /// Returns the trace field catalog: the span fields already selected as indexed columns, and the interesting ones seen in the data that could be.
  ///
  /// Returns the trace field catalog: the span fields already selected as indexed columns, and the interesting ones seen in the data that could be.  Callers need the viewer role; the runtime's own gate enforces it.
  Future<O11yO11yFieldCatalogOut?> getTraceFields() async {
    final response = await getTraceFieldsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFieldCatalogOut',) as O11yO11yFieldCatalogOut;
    
    }
    return null;
  }

  /// Returns one funnel with its steps.
  ///
  /// Returns one funnel with its steps.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] funnelId (required):
  Future<Response> getTraceFunnelWithHttpInfo(String funnelId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/trace-funnels/{funnel_id}'
      .replaceAll('{funnel_id}', funnelId);

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

  /// Returns one funnel with its steps.
  ///
  /// Returns one funnel with its steps.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] funnelId (required):
  Future<O11yO11yFunnelOut?> getTraceFunnel(String funnelId,) async {
    final response = await getTraceFunnelWithHttpInfo(funnelId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFunnelOut',) as O11yO11yFunnelOut;
    
    }
    return null;
  }

  /// Returns the errored traces through a step transition of a saved funnel — the entry point for \"why is this step failing\".
  ///
  /// Returns the errored traces through a step transition of a saved funnel — the entry point for \"why is this step failing\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] funnelId (required):
  ///
  /// * [O11yO11yFunnelStepWindowIn] o11yO11yFunnelStepWindowIn (required):
  Future<Response> getTraceFunnelErrorTracesWithHttpInfo(String funnelId, O11yO11yFunnelStepWindowIn o11yO11yFunnelStepWindowIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/trace-funnels/{funnel_id}/analytics/error-traces'
      .replaceAll('{funnel_id}', funnelId);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yFunnelStepWindowIn;

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

  /// Returns the errored traces through a step transition of a saved funnel — the entry point for \"why is this step failing\".
  ///
  /// Returns the errored traces through a step transition of a saved funnel — the entry point for \"why is this step failing\".
  ///
  /// Parameters:
  ///
  /// * [String] funnelId (required):
  ///
  /// * [O11yO11yFunnelStepWindowIn] o11yO11yFunnelStepWindowIn (required):
  Future<O11yO11yFunnelRowsOut?> getTraceFunnelErrorTraces(String funnelId, O11yO11yFunnelStepWindowIn o11yO11yFunnelStepWindowIn,) async {
    final response = await getTraceFunnelErrorTracesWithHttpInfo(funnelId, o11yO11yFunnelStepWindowIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFunnelRowsOut',) as O11yO11yFunnelRowsOut;
    
    }
    return null;
  }

  /// Returns a saved funnel's conversion overview over a window: how many entered, how many converted, the rate and the latency.
  ///
  /// Returns a saved funnel's conversion overview over a window: how many entered, how many converted, the rate and the latency.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] funnelId (required):
  ///
  /// * [O11yO11yFunnelStepWindowIn] o11yO11yFunnelStepWindowIn (required):
  Future<Response> getTraceFunnelOverviewWithHttpInfo(String funnelId, O11yO11yFunnelStepWindowIn o11yO11yFunnelStepWindowIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/trace-funnels/{funnel_id}/analytics/overview'
      .replaceAll('{funnel_id}', funnelId);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yFunnelStepWindowIn;

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

  /// Returns a saved funnel's conversion overview over a window: how many entered, how many converted, the rate and the latency.
  ///
  /// Returns a saved funnel's conversion overview over a window: how many entered, how many converted, the rate and the latency.
  ///
  /// Parameters:
  ///
  /// * [String] funnelId (required):
  ///
  /// * [O11yO11yFunnelStepWindowIn] o11yO11yFunnelStepWindowIn (required):
  Future<O11yO11yFunnelRowsOut?> getTraceFunnelOverview(String funnelId, O11yO11yFunnelStepWindowIn o11yO11yFunnelStepWindowIn,) async {
    final response = await getTraceFunnelOverviewWithHttpInfo(funnelId, o11yO11yFunnelStepWindowIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFunnelRowsOut',) as O11yO11yFunnelRowsOut;
    
    }
    return null;
  }

  /// Returns the slowest traces through a step transition of a saved funnel — the entry point for \"why is this step slow\".
  ///
  /// Returns the slowest traces through a step transition of a saved funnel — the entry point for \"why is this step slow\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] funnelId (required):
  ///
  /// * [O11yO11yFunnelStepWindowIn] o11yO11yFunnelStepWindowIn (required):
  Future<Response> getTraceFunnelSlowTracesWithHttpInfo(String funnelId, O11yO11yFunnelStepWindowIn o11yO11yFunnelStepWindowIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/trace-funnels/{funnel_id}/analytics/slow-traces'
      .replaceAll('{funnel_id}', funnelId);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yFunnelStepWindowIn;

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

  /// Returns the slowest traces through a step transition of a saved funnel — the entry point for \"why is this step slow\".
  ///
  /// Returns the slowest traces through a step transition of a saved funnel — the entry point for \"why is this step slow\".
  ///
  /// Parameters:
  ///
  /// * [String] funnelId (required):
  ///
  /// * [O11yO11yFunnelStepWindowIn] o11yO11yFunnelStepWindowIn (required):
  Future<O11yO11yFunnelRowsOut?> getTraceFunnelSlowTraces(String funnelId, O11yO11yFunnelStepWindowIn o11yO11yFunnelStepWindowIn,) async {
    final response = await getTraceFunnelSlowTracesWithHttpInfo(funnelId, o11yO11yFunnelStepWindowIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFunnelRowsOut',) as O11yO11yFunnelRowsOut;
    
    }
    return null;
  }

  /// Returns a saved funnel's per-step metrics over a window — the counts and latencies at each step, in step order.
  ///
  /// Returns a saved funnel's per-step metrics over a window — the counts and latencies at each step, in step order.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] funnelId (required):
  ///
  /// * [O11yO11yFunnelWindowIn] o11yO11yFunnelWindowIn (required):
  Future<Response> getTraceFunnelStepMetricsWithHttpInfo(String funnelId, O11yO11yFunnelWindowIn o11yO11yFunnelWindowIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/trace-funnels/{funnel_id}/analytics/steps'
      .replaceAll('{funnel_id}', funnelId);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yFunnelWindowIn;

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

  /// Returns a saved funnel's per-step metrics over a window — the counts and latencies at each step, in step order.
  ///
  /// Returns a saved funnel's per-step metrics over a window — the counts and latencies at each step, in step order.
  ///
  /// Parameters:
  ///
  /// * [String] funnelId (required):
  ///
  /// * [O11yO11yFunnelWindowIn] o11yO11yFunnelWindowIn (required):
  Future<O11yO11yFunnelRowsOut?> getTraceFunnelStepMetrics(String funnelId, O11yO11yFunnelWindowIn o11yO11yFunnelWindowIn,) async {
    final response = await getTraceFunnelStepMetricsWithHttpInfo(funnelId, o11yO11yFunnelWindowIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFunnelRowsOut',) as O11yO11yFunnelRowsOut;
    
    }
    return null;
  }

  /// Returns the conversion between two named steps of a saved funnel — the step-to-step drill-down behind the overview.
  ///
  /// Returns the conversion between two named steps of a saved funnel — the step-to-step drill-down behind the overview.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] funnelId (required):
  ///
  /// * [O11yO11yFunnelStepWindowIn] o11yO11yFunnelStepWindowIn (required):
  Future<Response> getTraceFunnelStepOverviewWithHttpInfo(String funnelId, O11yO11yFunnelStepWindowIn o11yO11yFunnelStepWindowIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/trace-funnels/{funnel_id}/analytics/steps/overview'
      .replaceAll('{funnel_id}', funnelId);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yFunnelStepWindowIn;

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

  /// Returns the conversion between two named steps of a saved funnel — the step-to-step drill-down behind the overview.
  ///
  /// Returns the conversion between two named steps of a saved funnel — the step-to-step drill-down behind the overview.
  ///
  /// Parameters:
  ///
  /// * [String] funnelId (required):
  ///
  /// * [O11yO11yFunnelStepWindowIn] o11yO11yFunnelStepWindowIn (required):
  Future<O11yO11yFunnelRowsOut?> getTraceFunnelStepOverview(String funnelId, O11yO11yFunnelStepWindowIn o11yO11yFunnelStepWindowIn,) async {
    final response = await getTraceFunnelStepOverviewWithHttpInfo(funnelId, o11yO11yFunnelStepWindowIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFunnelRowsOut',) as O11yO11yFunnelRowsOut;
    
    }
    return null;
  }

  /// Returns one org member together with every role they hold, by user id.
  ///
  /// Returns one org member together with every role they hold, by user id. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getUserWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/users/{id}'
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

  /// Returns one org member together with every role they hold, by user id.
  ///
  /// Returns one org member together with every role they hold, by user id. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<O11yO11yUserWithRolesOut?> getUser(String id,) async {
    final response = await getUserWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yUserWithRolesOut',) as O11yO11yUserWithRolesOut;
    
    }
    return null;
  }

  /// Returns one org member with their single legacy role, by user id.
  ///
  /// Returns one org member with their single legacy role, by user id. Admins may read anyone; a non-admin only themselves (the runtime's self-access gate).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getUserDeprecatedWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/user/{id}'
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

  /// Returns one org member with their single legacy role, by user id.
  ///
  /// Returns one org member with their single legacy role, by user id. Admins may read anyone; a non-admin only themselves (the runtime's self-access gate).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<O11yO11yDeprecatedUserOut?> getUserDeprecated(String id,) async {
    final response = await getUserDeprecatedWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDeprecatedUserOut',) as O11yO11yDeprecatedUserOut;
    
    }
    return null;
  }

  /// Returns one preference of the calling user, by name.
  ///
  /// Returns one preference of the calling user, by name. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Response> getUserPreferenceWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/user/preferences/{name}'
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

  /// Returns one preference of the calling user, by name.
  ///
  /// Returns one preference of the calling user, by name. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<O11yO11yPreferenceOut?> getUserPreference(String name,) async {
    final response = await getUserPreferenceWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yPreferenceOut',) as O11yO11yPreferenceOut;
    
    }
    return null;
  }

  /// Returns every org member holding a role, by role id.
  ///
  /// Returns every org member holding a role, by role id. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getUsersByRoleIDWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/roles/{id}/users'
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

  /// Returns every org member holding a role, by role id.
  ///
  /// Returns every org member holding a role, by role id. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<O11yO11yUsersOut?> getUsersByRoleID(String id,) async {
    final response = await getUsersByRoleIDWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yUsersOut',) as O11yO11yUsersOut;
    
    }
    return null;
  }

  /// Returns a trace's waterfall: every span when the trace is small enough, a capped window around the selected span when it is not, with the uncollapsed subtrees the caller asked to keep open.
  ///
  /// Returns a trace's waterfall: every span when the trace is small enough, a capped window around the selected span when it is not, with the uncollapsed subtrees the caller asked to keep open.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] traceId (required):
  ///
  /// * [O11yO11yTraceWaterfallIn] o11yO11yTraceWaterfallIn (required):
  Future<Response> getWaterfallV4WithHttpInfo(String traceId, O11yO11yTraceWaterfallIn o11yO11yTraceWaterfallIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/traces/{traceId}/waterfall'
      .replaceAll('{traceId}', traceId);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yTraceWaterfallIn;

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

  /// Returns a trace's waterfall: every span when the trace is small enough, a capped window around the selected span when it is not, with the uncollapsed subtrees the caller asked to keep open.
  ///
  /// Returns a trace's waterfall: every span when the trace is small enough, a capped window around the selected span when it is not, with the uncollapsed subtrees the caller asked to keep open.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] traceId (required):
  ///
  /// * [O11yO11yTraceWaterfallIn] o11yO11yTraceWaterfallIn (required):
  Future<O11yO11yTraceWaterfallOut?> getWaterfallV4(String traceId, O11yO11yTraceWaterfallIn o11yO11yTraceWaterfallIn,) async {
    final response = await getWaterfallV4WithHttpInfo(traceId, o11yO11yTraceWaterfallIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yTraceWaterfallOut',) as O11yO11yTraceWaterfallOut;
    
    }
    return null;
  }

  /// Returns one metric's raw time series over a window of at most thirty minutes — each series with its labels and timestamp/value pairs.
  ///
  /// Returns one metric's raw time series over a window of at most thirty minutes — each series with its labels and timestamp/value pairs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yMetricInspectIn] o11yO11yMetricInspectIn (required):
  Future<Response> inspectMetricsWithHttpInfo(O11yO11yMetricInspectIn o11yO11yMetricInspectIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/metrics/inspect';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yMetricInspectIn;

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

  /// Returns one metric's raw time series over a window of at most thirty minutes — each series with its labels and timestamp/value pairs.
  ///
  /// Returns one metric's raw time series over a window of at most thirty minutes — each series with its labels and timestamp/value pairs.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yMetricInspectIn] o11yO11yMetricInspectIn (required):
  Future<O11yO11yMetricInspectOut?> inspectMetrics(O11yO11yMetricInspectIn o11yO11yMetricInspectIn,) async {
    final response = await inspectMetricsWithHttpInfo(o11yO11yMetricInspectIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yMetricInspectOut',) as O11yO11yMetricInspectOut;
    
    }
    return null;
  }

  /// Installs an integration into the caller's org from its id and configuration, answering with the installed catalog item.
  ///
  /// Installs an integration into the caller's org from its id and configuration, answering with the installed catalog item. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yInstallIntegrationRequest] o11yInstallIntegrationRequest (required):
  Future<Response> installIntegrationWithHttpInfo(O11yInstallIntegrationRequest o11yInstallIntegrationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/integrations/install';

    // ignore: prefer_final_locals
    Object? postBody = o11yInstallIntegrationRequest;

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

  /// Installs an integration into the caller's org from its id and configuration, answering with the installed catalog item.
  ///
  /// Installs an integration into the caller's org from its id and configuration, answering with the installed catalog item. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [O11yInstallIntegrationRequest] o11yInstallIntegrationRequest (required):
  Future<O11yO11yInstallOut?> installIntegration(O11yInstallIntegrationRequest o11yInstallIntegrationRequest,) async {
    final response = await installIntegrationWithHttpInfo(o11yInstallIntegrationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInstallOut',) as O11yO11yInstallOut;
    
    }
    return null;
  }

  /// Lists the services metadata for one connected account of the given provider, by account id.
  ///
  /// Lists the services metadata for one connected account of the given provider, by account id. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [String] id (required):
  Future<Response> listAccountServicesMetadataWithHttpInfo(String cloudProvider, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/cloud_integrations/{cloud_provider}/accounts/{id}/services'
      .replaceAll('{cloud_provider}', cloudProvider)
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

  /// Lists the services metadata for one connected account of the given provider, by account id.
  ///
  /// Lists the services metadata for one connected account of the given provider, by account id. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [String] id (required):
  Future<O11yO11yServicesMetadataOut?> listAccountServicesMetadata(String cloudProvider, String id,) async {
    final response = await listAccountServicesMetadataWithHttpInfo(cloudProvider, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yServicesMetadataOut',) as O11yO11yServicesMetadataOut;
    
    }
    return null;
  }

  /// Lists the cloud-integration accounts connected for the given provider.
  ///
  /// Lists the cloud-integration accounts connected for the given provider. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  Future<Response> listAccountsWithHttpInfo(String cloudProvider,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/cloud_integrations/{cloud_provider}/accounts'
      .replaceAll('{cloud_provider}', cloudProvider);

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

  /// Lists the cloud-integration accounts connected for the given provider.
  ///
  /// Lists the cloud-integration accounts connected for the given provider. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  Future<O11yO11yAccountsOut?> listAccounts(String cloudProvider,) async {
    final response = await listAccountsWithHttpInfo(cloudProvider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yAccountsOut',) as O11yO11yAccountsOut;
    
    }
    return null;
  }

  /// Lists the org's auth domains — the email domains whose SSO configuration this org owns.
  ///
  /// Lists the org's auth domains — the email domains whose SSO configuration this org owns. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listAuthDomainsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/domains';

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

  /// Lists the org's auth domains — the email domains whose SSO configuration this org owns.
  ///
  /// Lists the org's auth domains — the email domains whose SSO configuration this org owns. Admin gate.
  Future<O11yO11yAuthDomainsOut?> listAuthDomains() async {
    final response = await listAuthDomainsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yAuthDomainsOut',) as O11yO11yAuthDomainsOut;
    
    }
    return null;
  }

  /// Lists the org's notification channels.
  ///
  /// Lists the org's notification channels. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listChannelsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/channels';

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

  /// Lists the org's notification channels.
  ///
  /// Lists the org's notification channels. Viewer gate.
  Future<O11yO11yChannelsOut?> listChannels() async {
    final response = await listChannelsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yChannelsOut',) as O11yO11yChannelsOut;
    
    }
    return null;
  }

  /// Returns every saved view in the calling user's org.
  ///
  /// Returns every saved view in the calling user's org. Saved views are shared org-wide.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listDashboardViewsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/dashboard_views';

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

  /// Returns every saved view in the calling user's org.
  ///
  /// Returns every saved view in the calling user's org. Saved views are shared org-wide.  Callers need the viewer role; the runtime's own gate enforces it.
  Future<O11yO11yDashboardViewListOut?> listDashboardViews() async {
    final response = await listDashboardViewsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDashboardViewListOut',) as O11yO11yDashboardViewListOut;
    
    }
    return null;
  }

  /// Is dashboardListV2 personalized for the calling user: each dashboard carries the caller's pinned state, and pinned dashboards float to the top of the requested ordering.
  ///
  /// Is dashboardListV2 personalized for the calling user: each dashboard carries the caller's pinned state, and pinned dashboards float to the top of the requested ordering. Supports the same filter DSL, sort, order and pagination.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   Query is the filter DSL over dashboard columns and tags, e.g. `name:cpu source:user`. Empty lists everything.
  ///
  /// * [String] sort:
  ///   Sort is the sort field: updated_at, created_at or name. Empty sorts by updated_at.
  ///
  /// * [String] order:
  ///   Order is the sort direction: asc or desc. Empty orders desc.
  ///
  /// * [int] limit:
  ///   Limit caps how many dashboards come back. Zero means the default of 20; the runtime caps it at 200.
  ///
  /// * [int] offset:
  ///   Offset is how many dashboards to skip for pagination.
  Future<Response> listDashboardsForUserV2WithHttpInfo({ String? query, String? sort, String? order, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/users/me/dashboards';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (order != null) {
      queryParams.addAll(_queryParams('', 'order', order));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
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

  /// Is dashboardListV2 personalized for the calling user: each dashboard carries the caller's pinned state, and pinned dashboards float to the top of the requested ordering.
  ///
  /// Is dashboardListV2 personalized for the calling user: each dashboard carries the caller's pinned state, and pinned dashboards float to the top of the requested ordering. Supports the same filter DSL, sort, order and pagination.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   Query is the filter DSL over dashboard columns and tags, e.g. `name:cpu source:user`. Empty lists everything.
  ///
  /// * [String] sort:
  ///   Sort is the sort field: updated_at, created_at or name. Empty sorts by updated_at.
  ///
  /// * [String] order:
  ///   Order is the sort direction: asc or desc. Empty orders desc.
  ///
  /// * [int] limit:
  ///   Limit caps how many dashboards come back. Zero means the default of 20; the runtime caps it at 200.
  ///
  /// * [int] offset:
  ///   Offset is how many dashboards to skip for pagination.
  Future<O11yO11yDashboardListForUserOut?> listDashboardsForUserV2({ String? query, String? sort, String? order, int? limit, int? offset, }) async {
    final response = await listDashboardsForUserV2WithHttpInfo( query: query, sort: sort, order: order, limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDashboardListForUserOut',) as O11yO11yDashboardListForUserOut;
    
    }
    return null;
  }

  /// Returns a page of v2-shape dashboards for the org.
  ///
  /// Returns a page of v2-shape dashboards for the org. This is the pure, user-independent list — it carries no pin state; use dashboardListForUserV2 for the personalized, pin-aware list. Supports a filter DSL (query), sort (updated_at/created_at/name), order (asc/desc), and offset-based pagination (limit/offset).  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   Query is the filter DSL over dashboard columns and tags, e.g. `name:cpu source:user`. Empty lists everything.
  ///
  /// * [String] sort:
  ///   Sort is the sort field: updated_at, created_at or name. Empty sorts by updated_at.
  ///
  /// * [String] order:
  ///   Order is the sort direction: asc or desc. Empty orders desc.
  ///
  /// * [int] limit:
  ///   Limit caps how many dashboards come back. Zero means the default of 20; the runtime caps it at 200.
  ///
  /// * [int] offset:
  ///   Offset is how many dashboards to skip for pagination.
  Future<Response> listDashboardsV2WithHttpInfo({ String? query, String? sort, String? order, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/dashboards';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (order != null) {
      queryParams.addAll(_queryParams('', 'order', order));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
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

  /// Returns a page of v2-shape dashboards for the org.
  ///
  /// Returns a page of v2-shape dashboards for the org. This is the pure, user-independent list — it carries no pin state; use dashboardListForUserV2 for the personalized, pin-aware list. Supports a filter DSL (query), sort (updated_at/created_at/name), order (asc/desc), and offset-based pagination (limit/offset).  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   Query is the filter DSL over dashboard columns and tags, e.g. `name:cpu source:user`. Empty lists everything.
  ///
  /// * [String] sort:
  ///   Sort is the sort field: updated_at, created_at or name. Empty sorts by updated_at.
  ///
  /// * [String] order:
  ///   Order is the sort direction: asc or desc. Empty orders desc.
  ///
  /// * [int] limit:
  ///   Limit caps how many dashboards come back. Zero means the default of 20; the runtime caps it at 200.
  ///
  /// * [int] offset:
  ///   Offset is how many dashboards to skip for pagination.
  Future<O11yO11yDashboardListOut?> listDashboardsV2({ String? query, String? sort, String? order, int? limit, int? offset, }) async {
    final response = await listDashboardsV2WithHttpInfo( query: query, sort: sort, order: order, limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDashboardListOut',) as O11yO11yDashboardListOut;
    
    }
    return null;
  }

  /// Lists all planned maintenance windows, optionally narrowed to the active ones or the recurring ones.
  ///
  /// Lists all planned maintenance windows, optionally narrowed to the active ones or the recurring ones. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] active:
  ///   Active, when \"true\" or \"false\", keeps only the active or inactive windows. Absent lists all.
  ///
  /// * [String] recurring:
  ///   Recurring, when \"true\" or \"false\", keeps only the recurring or one-off windows. Absent lists all.
  Future<Response> listDowntimeSchedulesWithHttpInfo({ String? active, String? recurring, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/downtime_schedules';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (recurring != null) {
      queryParams.addAll(_queryParams('', 'recurring', recurring));
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

  /// Lists all planned maintenance windows, optionally narrowed to the active ones or the recurring ones.
  ///
  /// Lists all planned maintenance windows, optionally narrowed to the active ones or the recurring ones. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] active:
  ///   Active, when \"true\" or \"false\", keeps only the active or inactive windows. Absent lists all.
  ///
  /// * [String] recurring:
  ///   Recurring, when \"true\" or \"false\", keeps only the recurring or one-off windows. Absent lists all.
  Future<O11yO11yDowntimeSchedulesOut?> listDowntimeSchedules({ String? active, String? recurring, }) async {
    final response = await listDowntimeSchedulesWithHttpInfo( active: active, recurring: recurring, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDowntimeSchedulesOut',) as O11yO11yDowntimeSchedulesOut;
    
    }
    return null;
  }

  /// Lists the available integrations and whether each is installed in the caller's org, optionally narrowed to installed or not-installed.
  ///
  /// Lists the available integrations and whether each is installed in the caller's org, optionally narrowed to installed or not-installed. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] isInstalled:
  ///   IsInstalled, when \"true\" or \"false\", keeps only integrations in that installed state; empty lists them all.
  Future<Response> listIntegrationsWithHttpInfo({ String? isInstalled, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/integrations';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (isInstalled != null) {
      queryParams.addAll(_queryParams('', 'is_installed', isInstalled));
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

  /// Lists the available integrations and whether each is installed in the caller's org, optionally narrowed to installed or not-installed.
  ///
  /// Lists the available integrations and whether each is installed in the caller's org, optionally narrowed to installed or not-installed. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] isInstalled:
  ///   IsInstalled, when \"true\" or \"false\", keeps only integrations in that installed state; empty lists them all.
  Future<O11yO11yIntegrationsListOut?> listIntegrations({ String? isInstalled, }) async {
    final response = await listIntegrationsWithHttpInfo( isInstalled: isInstalled, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yIntegrationsListOut',) as O11yO11yIntegrationsListOut;
    
    }
    return null;
  }

  /// Lists human annotations on traces and observations, optionally scoped to one review queue.
  ///
  /// Lists human annotations on traces and observations, optionally scoped to one review queue.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] traceId:
  ///   TraceID narrows to annotations on one trace.
  ///
  /// * [String] queue:
  ///   Queue narrows to one review queue.
  ///
  /// * [String] status:
  ///   Status narrows to one review status, e.g. PENDING.
  ///
  /// * [int] offset:
  ///   Offset is how many rows to skip, for paging.
  ///
  /// * [int] limit:
  ///   Limit caps how many rows come back.
  Future<Response> listLLMAnnotationsWithHttpInfo({ String? traceId, String? queue, String? status, int? offset, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/llm/annotation';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (traceId != null) {
      queryParams.addAll(_queryParams('', 'traceId', traceId));
    }
    if (queue != null) {
      queryParams.addAll(_queryParams('', 'queue', queue));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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

  /// Lists human annotations on traces and observations, optionally scoped to one review queue.
  ///
  /// Lists human annotations on traces and observations, optionally scoped to one review queue.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] traceId:
  ///   TraceID narrows to annotations on one trace.
  ///
  /// * [String] queue:
  ///   Queue narrows to one review queue.
  ///
  /// * [String] status:
  ///   Status narrows to one review status, e.g. PENDING.
  ///
  /// * [int] offset:
  ///   Offset is how many rows to skip, for paging.
  ///
  /// * [int] limit:
  ///   Limit caps how many rows come back.
  Future<O11yO11yLLMAnnotationsOut?> listLLMAnnotations({ String? traceId, String? queue, String? status, int? offset, int? limit, }) async {
    final response = await listLLMAnnotationsWithHttpInfo( traceId: traceId, queue: queue, status: status, offset: offset, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLLMAnnotationsOut',) as O11yO11yLLMAnnotationsOut;
    
    }
    return null;
  }

  /// Lists gen_ai spans as LLM observations — each an LLM call with its model, token counts, cost and latency projected from gen_ai.* attributes, newest first, over the query window.
  ///
  /// Lists gen_ai spans as LLM observations — each an LLM call with its model, token counts, cost and latency projected from gen_ai.* attributes, newest first, over the query window.  Callers need the viewer role; the runtime's own gate enforces it, and scopes the read to the caller's validated tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] start:
  ///   Start is the start of the window as a unix-millisecond epoch. Zero means 24h before the end.
  ///
  /// * [int] end:
  ///   End is the end of the window as a unix-millisecond epoch. Zero means now.
  ///
  /// * [String] traceId:
  ///   TraceID narrows the view to one trace.
  ///
  /// * [String] sessionId:
  ///   SessionID narrows the view to one conversation.
  ///
  /// * [String] userId:
  ///   UserID narrows the view to one end user.
  ///
  /// * [String] name:
  ///   Name narrows the view to observations of one name.
  ///
  /// * [String] model:
  ///   Model narrows the view to one model.
  ///
  /// * [int] offset:
  ///   Offset is how many rows to skip, for paging.
  ///
  /// * [int] limit:
  ///   Limit caps how many rows come back.
  Future<Response> listLLMObservationsWithHttpInfo({ int? start, int? end, String? traceId, String? sessionId, String? userId, String? name, String? model, int? offset, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/llm/observations';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
    }
    if (traceId != null) {
      queryParams.addAll(_queryParams('', 'traceId', traceId));
    }
    if (sessionId != null) {
      queryParams.addAll(_queryParams('', 'sessionId', sessionId));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'userId', userId));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (model != null) {
      queryParams.addAll(_queryParams('', 'model', model));
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

  /// Lists gen_ai spans as LLM observations — each an LLM call with its model, token counts, cost and latency projected from gen_ai.* attributes, newest first, over the query window.
  ///
  /// Lists gen_ai spans as LLM observations — each an LLM call with its model, token counts, cost and latency projected from gen_ai.* attributes, newest first, over the query window.  Callers need the viewer role; the runtime's own gate enforces it, and scopes the read to the caller's validated tenant.
  ///
  /// Parameters:
  ///
  /// * [int] start:
  ///   Start is the start of the window as a unix-millisecond epoch. Zero means 24h before the end.
  ///
  /// * [int] end:
  ///   End is the end of the window as a unix-millisecond epoch. Zero means now.
  ///
  /// * [String] traceId:
  ///   TraceID narrows the view to one trace.
  ///
  /// * [String] sessionId:
  ///   SessionID narrows the view to one conversation.
  ///
  /// * [String] userId:
  ///   UserID narrows the view to one end user.
  ///
  /// * [String] name:
  ///   Name narrows the view to observations of one name.
  ///
  /// * [String] model:
  ///   Model narrows the view to one model.
  ///
  /// * [int] offset:
  ///   Offset is how many rows to skip, for paging.
  ///
  /// * [int] limit:
  ///   Limit caps how many rows come back.
  Future<O11yO11yLLMObservationsOut?> listLLMObservations({ int? start, int? end, String? traceId, String? sessionId, String? userId, String? name, String? model, int? offset, int? limit, }) async {
    final response = await listLLMObservationsWithHttpInfo( start: start, end: end, traceId: traceId, sessionId: sessionId, userId: userId, name: name, model: model, offset: offset, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLLMObservationsOut',) as O11yO11yLLMObservationsOut;
    
    }
    return null;
  }

  /// Returns the LLM pricing rules for the caller's org, with pagination and an optional search and override filter.
  ///
  /// Returns the LLM pricing rules for the caller's org, with pagination and an optional search and override filter.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q:
  ///   Search matches rules by model or provider.
  ///
  /// * [String] isOverride:
  ///   IsOverride, when \"true\" or \"false\", narrows to user-pinned rules or to synced ones; empty returns both. It is a string because a query param is a string on the wire, and the runtime reads absent as \"no filter\".
  ///
  /// * [int] offset:
  ///   Offset is how many rows to skip, for paging.
  ///
  /// * [int] limit:
  ///   Limit caps how many rows come back.
  Future<Response> listLLMPricingRulesWithHttpInfo({ String? q, String? isOverride, int? offset, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/llm_pricing_rules';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (isOverride != null) {
      queryParams.addAll(_queryParams('', 'isOverride', isOverride));
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

  /// Returns the LLM pricing rules for the caller's org, with pagination and an optional search and override filter.
  ///
  /// Returns the LLM pricing rules for the caller's org, with pagination and an optional search and override filter.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] q:
  ///   Search matches rules by model or provider.
  ///
  /// * [String] isOverride:
  ///   IsOverride, when \"true\" or \"false\", narrows to user-pinned rules or to synced ones; empty returns both. It is a string because a query param is a string on the wire, and the runtime reads absent as \"no filter\".
  ///
  /// * [int] offset:
  ///   Offset is how many rows to skip, for paging.
  ///
  /// * [int] limit:
  ///   Limit caps how many rows come back.
  Future<O11yO11yLLMPricingRulesOut?> listLLMPricingRules({ String? q, String? isOverride, int? offset, int? limit, }) async {
    final response = await listLLMPricingRulesWithHttpInfo( q: q, isOverride: isOverride, offset: offset, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLLMPricingRulesOut',) as O11yO11yLLMPricingRulesOut;
    
    }
    return null;
  }

  /// Lists eval scores and human-feedback signals attached to traces and observations, newest first.
  ///
  /// Lists eval scores and human-feedback signals attached to traces and observations, newest first.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] traceId:
  ///   TraceID narrows to scores on one trace.
  ///
  /// * [String] observationId:
  ///   ObservationID narrows to scores on one observation.
  ///
  /// * [String] name:
  ///   Name narrows to scores of one name.
  ///
  /// * [String] source_:
  ///   Source narrows to scores from one source, e.g. API, EVAL.
  ///
  /// * [int] offset:
  ///   Offset is how many rows to skip, for paging.
  ///
  /// * [int] limit:
  ///   Limit caps how many rows come back.
  Future<Response> listLLMScoresWithHttpInfo({ String? traceId, String? observationId, String? name, String? source_, int? offset, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/llm/scores';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (traceId != null) {
      queryParams.addAll(_queryParams('', 'traceId', traceId));
    }
    if (observationId != null) {
      queryParams.addAll(_queryParams('', 'observationId', observationId));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (source_ != null) {
      queryParams.addAll(_queryParams('', 'source', source_));
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

  /// Lists eval scores and human-feedback signals attached to traces and observations, newest first.
  ///
  /// Lists eval scores and human-feedback signals attached to traces and observations, newest first.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] traceId:
  ///   TraceID narrows to scores on one trace.
  ///
  /// * [String] observationId:
  ///   ObservationID narrows to scores on one observation.
  ///
  /// * [String] name:
  ///   Name narrows to scores of one name.
  ///
  /// * [String] source_:
  ///   Source narrows to scores from one source, e.g. API, EVAL.
  ///
  /// * [int] offset:
  ///   Offset is how many rows to skip, for paging.
  ///
  /// * [int] limit:
  ///   Limit caps how many rows come back.
  Future<O11yO11yLLMScoresOut?> listLLMScores({ String? traceId, String? observationId, String? name, String? source_, int? offset, int? limit, }) async {
    final response = await listLLMScoresWithHttpInfo( traceId: traceId, observationId: observationId, name: name, source_: source_, offset: offset, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLLMScoresOut',) as O11yO11yLLMScoresOut;
    
    }
    return null;
  }

  /// Lists conversations — gen_ai spans grouped by session.id, with their trace and observation counts, tokens and cost.
  ///
  /// Lists conversations — gen_ai spans grouped by session.id, with their trace and observation counts, tokens and cost.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] start:
  ///   Start is the start of the window as a unix-millisecond epoch. Zero means 24h before the end.
  ///
  /// * [int] end:
  ///   End is the end of the window as a unix-millisecond epoch. Zero means now.
  ///
  /// * [String] traceId:
  ///   TraceID narrows the view to one trace.
  ///
  /// * [String] sessionId:
  ///   SessionID narrows the view to one conversation.
  ///
  /// * [String] userId:
  ///   UserID narrows the view to one end user.
  ///
  /// * [String] name:
  ///   Name narrows the view to observations of one name.
  ///
  /// * [String] model:
  ///   Model narrows the view to one model.
  ///
  /// * [int] offset:
  ///   Offset is how many rows to skip, for paging.
  ///
  /// * [int] limit:
  ///   Limit caps how many rows come back.
  Future<Response> listLLMSessionsWithHttpInfo({ int? start, int? end, String? traceId, String? sessionId, String? userId, String? name, String? model, int? offset, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/llm/sessions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
    }
    if (traceId != null) {
      queryParams.addAll(_queryParams('', 'traceId', traceId));
    }
    if (sessionId != null) {
      queryParams.addAll(_queryParams('', 'sessionId', sessionId));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'userId', userId));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (model != null) {
      queryParams.addAll(_queryParams('', 'model', model));
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

  /// Lists conversations — gen_ai spans grouped by session.id, with their trace and observation counts, tokens and cost.
  ///
  /// Lists conversations — gen_ai spans grouped by session.id, with their trace and observation counts, tokens and cost.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [int] start:
  ///   Start is the start of the window as a unix-millisecond epoch. Zero means 24h before the end.
  ///
  /// * [int] end:
  ///   End is the end of the window as a unix-millisecond epoch. Zero means now.
  ///
  /// * [String] traceId:
  ///   TraceID narrows the view to one trace.
  ///
  /// * [String] sessionId:
  ///   SessionID narrows the view to one conversation.
  ///
  /// * [String] userId:
  ///   UserID narrows the view to one end user.
  ///
  /// * [String] name:
  ///   Name narrows the view to observations of one name.
  ///
  /// * [String] model:
  ///   Model narrows the view to one model.
  ///
  /// * [int] offset:
  ///   Offset is how many rows to skip, for paging.
  ///
  /// * [int] limit:
  ///   Limit caps how many rows come back.
  Future<O11yO11yLLMSessionsOut?> listLLMSessions({ int? start, int? end, String? traceId, String? sessionId, String? userId, String? name, String? model, int? offset, int? limit, }) async {
    final response = await listLLMSessionsWithHttpInfo( start: start, end: end, traceId: traceId, sessionId: sessionId, userId: userId, name: name, model: model, offset: offset, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLLMSessionsOut',) as O11yO11yLLMSessionsOut;
    
    }
    return null;
  }

  /// Lists LLM traces — gen_ai spans grouped by trace_id, with cost, tokens and latency rolled up across each trace.
  ///
  /// Lists LLM traces — gen_ai spans grouped by trace_id, with cost, tokens and latency rolled up across each trace.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] start:
  ///   Start is the start of the window as a unix-millisecond epoch. Zero means 24h before the end.
  ///
  /// * [int] end:
  ///   End is the end of the window as a unix-millisecond epoch. Zero means now.
  ///
  /// * [String] traceId:
  ///   TraceID narrows the view to one trace.
  ///
  /// * [String] sessionId:
  ///   SessionID narrows the view to one conversation.
  ///
  /// * [String] userId:
  ///   UserID narrows the view to one end user.
  ///
  /// * [String] name:
  ///   Name narrows the view to observations of one name.
  ///
  /// * [String] model:
  ///   Model narrows the view to one model.
  ///
  /// * [int] offset:
  ///   Offset is how many rows to skip, for paging.
  ///
  /// * [int] limit:
  ///   Limit caps how many rows come back.
  Future<Response> listLLMTracesWithHttpInfo({ int? start, int? end, String? traceId, String? sessionId, String? userId, String? name, String? model, int? offset, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/llm/traces';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
    }
    if (traceId != null) {
      queryParams.addAll(_queryParams('', 'traceId', traceId));
    }
    if (sessionId != null) {
      queryParams.addAll(_queryParams('', 'sessionId', sessionId));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'userId', userId));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (model != null) {
      queryParams.addAll(_queryParams('', 'model', model));
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

  /// Lists LLM traces — gen_ai spans grouped by trace_id, with cost, tokens and latency rolled up across each trace.
  ///
  /// Lists LLM traces — gen_ai spans grouped by trace_id, with cost, tokens and latency rolled up across each trace.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [int] start:
  ///   Start is the start of the window as a unix-millisecond epoch. Zero means 24h before the end.
  ///
  /// * [int] end:
  ///   End is the end of the window as a unix-millisecond epoch. Zero means now.
  ///
  /// * [String] traceId:
  ///   TraceID narrows the view to one trace.
  ///
  /// * [String] sessionId:
  ///   SessionID narrows the view to one conversation.
  ///
  /// * [String] userId:
  ///   UserID narrows the view to one end user.
  ///
  /// * [String] name:
  ///   Name narrows the view to observations of one name.
  ///
  /// * [String] model:
  ///   Model narrows the view to one model.
  ///
  /// * [int] offset:
  ///   Offset is how many rows to skip, for paging.
  ///
  /// * [int] limit:
  ///   Limit caps how many rows come back.
  Future<O11yO11yLLMTracesOut?> listLLMTraces({ int? start, int? end, String? traceId, String? sessionId, String? userId, String? name, String? model, int? offset, int? limit, }) async {
    final response = await listLLMTracesWithHttpInfo( start: start, end: end, traceId: traceId, sessionId: sessionId, userId: userId, name: name, model: model, offset: offset, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLLMTracesOut',) as O11yO11yLLMTracesOut;
    
    }
    return null;
  }

  /// Lists end users — gen_ai spans grouped by user.id, with their session, trace and observation counts, tokens and cost.
  ///
  /// Lists end users — gen_ai spans grouped by user.id, with their session, trace and observation counts, tokens and cost.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] start:
  ///   Start is the start of the window as a unix-millisecond epoch. Zero means 24h before the end.
  ///
  /// * [int] end:
  ///   End is the end of the window as a unix-millisecond epoch. Zero means now.
  ///
  /// * [String] traceId:
  ///   TraceID narrows the view to one trace.
  ///
  /// * [String] sessionId:
  ///   SessionID narrows the view to one conversation.
  ///
  /// * [String] userId:
  ///   UserID narrows the view to one end user.
  ///
  /// * [String] name:
  ///   Name narrows the view to observations of one name.
  ///
  /// * [String] model:
  ///   Model narrows the view to one model.
  ///
  /// * [int] offset:
  ///   Offset is how many rows to skip, for paging.
  ///
  /// * [int] limit:
  ///   Limit caps how many rows come back.
  Future<Response> listLLMUsersWithHttpInfo({ int? start, int? end, String? traceId, String? sessionId, String? userId, String? name, String? model, int? offset, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/llm/users';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
    }
    if (traceId != null) {
      queryParams.addAll(_queryParams('', 'traceId', traceId));
    }
    if (sessionId != null) {
      queryParams.addAll(_queryParams('', 'sessionId', sessionId));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'userId', userId));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (model != null) {
      queryParams.addAll(_queryParams('', 'model', model));
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

  /// Lists end users — gen_ai spans grouped by user.id, with their session, trace and observation counts, tokens and cost.
  ///
  /// Lists end users — gen_ai spans grouped by user.id, with their session, trace and observation counts, tokens and cost.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [int] start:
  ///   Start is the start of the window as a unix-millisecond epoch. Zero means 24h before the end.
  ///
  /// * [int] end:
  ///   End is the end of the window as a unix-millisecond epoch. Zero means now.
  ///
  /// * [String] traceId:
  ///   TraceID narrows the view to one trace.
  ///
  /// * [String] sessionId:
  ///   SessionID narrows the view to one conversation.
  ///
  /// * [String] userId:
  ///   UserID narrows the view to one end user.
  ///
  /// * [String] name:
  ///   Name narrows the view to observations of one name.
  ///
  /// * [String] model:
  ///   Model narrows the view to one model.
  ///
  /// * [int] offset:
  ///   Offset is how many rows to skip, for paging.
  ///
  /// * [int] limit:
  ///   Limit caps how many rows come back.
  Future<O11yO11yLLMUsersOut?> listLLMUsers({ int? start, int? end, String? traceId, String? sessionId, String? userId, String? name, String? model, int? offset, int? limit, }) async {
    final response = await listLLMUsersWithHttpInfo( start: start, end: end, traceId: traceId, sessionId: sessionId, userId: userId, name: name, model: model, offset: offset, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLLMUsersOut',) as O11yO11yLLMUsersOut;
    
    }
    return null;
  }

  /// Lists the org's metric volume-control (label reduction) rules, pageable and sortable by name, volume or recency.
  ///
  /// Lists the org's metric volume-control (label reduction) rules, pageable and sortable by name, volume or recency.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderBy:
  ///   OrderBy sorts the page: metric, ingested_volume, reduced_volume or last_updated. Unset means ingested_volume.
  ///
  /// * [String] order:
  ///   Order is asc or desc. Unset means desc.
  ///
  /// * [String] search:
  ///   Search narrows the page to rules whose metric name contains it.
  ///
  /// * [String] metricName:
  ///   MetricName narrows the page to one metric's rule.
  ///
  /// * [int] offset:
  ///   Offset is how many rules to skip, for paging.
  ///
  /// * [int] limit:
  ///   Limit caps how many rules come back, at most 1000. Unset means 10.
  Future<Response> listMetricReductionRulesWithHttpInfo({ String? orderBy, String? order, String? search, String? metricName, int? offset, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/metric_reduction_rules';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (orderBy != null) {
      queryParams.addAll(_queryParams('', 'orderBy', orderBy));
    }
    if (order != null) {
      queryParams.addAll(_queryParams('', 'order', order));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (metricName != null) {
      queryParams.addAll(_queryParams('', 'metricName', metricName));
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

  /// Lists the org's metric volume-control (label reduction) rules, pageable and sortable by name, volume or recency.
  ///
  /// Lists the org's metric volume-control (label reduction) rules, pageable and sortable by name, volume or recency.
  ///
  /// Parameters:
  ///
  /// * [String] orderBy:
  ///   OrderBy sorts the page: metric, ingested_volume, reduced_volume or last_updated. Unset means ingested_volume.
  ///
  /// * [String] order:
  ///   Order is asc or desc. Unset means desc.
  ///
  /// * [String] search:
  ///   Search narrows the page to rules whose metric name contains it.
  ///
  /// * [String] metricName:
  ///   MetricName narrows the page to one metric's rule.
  ///
  /// * [int] offset:
  ///   Offset is how many rules to skip, for paging.
  ///
  /// * [int] limit:
  ///   Limit caps how many rules come back, at most 1000. Unset means 10.
  Future<O11yO11yReductionRuleListOut?> listMetricReductionRules({ String? orderBy, String? order, String? search, String? metricName, int? offset, int? limit, }) async {
    final response = await listMetricReductionRulesWithHttpInfo( orderBy: orderBy, order: order, search: search, metricName: metricName, offset: offset, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yReductionRuleListOut',) as O11yO11yReductionRuleListOut;
    
    }
    return null;
  }

  /// Lists the distinct metric names seen in a time range, each with its description, type, unit, temporality and monotonicity.
  ///
  /// Lists the distinct metric names seen in a time range, each with its description, type, unit, temporality and monotonicity.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] start:
  ///   Start is the start of the window as a Unix timestamp in milliseconds.
  ///
  /// * [int] end:
  ///   End is the end of the window as a Unix timestamp in milliseconds.
  ///
  /// * [int] limit:
  ///   Limit caps how many metrics come back; unset means 100, at most 5000.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the page to metric names containing it.
  ///
  /// * [String] source_:
  ///   Source narrows the page by ingestion source.
  Future<Response> listMetricsWithHttpInfo({ int? start, int? end, int? limit, String? searchText, String? source_, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/metrics';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (searchText != null) {
      queryParams.addAll(_queryParams('', 'searchText', searchText));
    }
    if (source_ != null) {
      queryParams.addAll(_queryParams('', 'source', source_));
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

  /// Lists the distinct metric names seen in a time range, each with its description, type, unit, temporality and monotonicity.
  ///
  /// Lists the distinct metric names seen in a time range, each with its description, type, unit, temporality and monotonicity.
  ///
  /// Parameters:
  ///
  /// * [int] start:
  ///   Start is the start of the window as a Unix timestamp in milliseconds.
  ///
  /// * [int] end:
  ///   End is the end of the window as a Unix timestamp in milliseconds.
  ///
  /// * [int] limit:
  ///   Limit caps how many metrics come back; unset means 100, at most 5000.
  ///
  /// * [String] searchText:
  ///   SearchText narrows the page to metric names containing it.
  ///
  /// * [String] source_:
  ///   Source narrows the page by ingestion source.
  Future<O11yO11yMetricListOut?> listMetrics({ int? start, int? end, int? limit, String? searchText, String? source_, }) async {
    final response = await listMetricsWithHttpInfo( start: start, end: end, limit: limit, searchText: searchText, source_: source_, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yMetricListOut',) as O11yO11yMetricListOut;
    
    }
    return null;
  }

  /// Lists every org-scoped preference, each with its current and default value.
  ///
  /// Lists every org-scoped preference, each with its current and default value. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listOrgPreferencesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/org/preferences';

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

  /// Lists every org-scoped preference, each with its current and default value.
  ///
  /// Lists every org-scoped preference, each with its current and default value. Admin gate.
  Future<O11yO11yPreferencesOut?> listOrgPreferences() async {
    final response = await listOrgPreferencesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yPreferencesOut',) as O11yO11yPreferencesOut;
    
    }
    return null;
  }

  /// Lists every role in the caller's org — the managed ones the platform seeds and the custom ones its admins created.
  ///
  /// Lists every role in the caller's org — the managed ones the platform seeds and the custom ones its admins created.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listRolesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/roles';

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

  /// Lists every role in the caller's org — the managed ones the platform seeds and the custom ones its admins created.
  ///
  /// Lists every role in the caller's org — the managed ones the platform seeds and the custom ones its admins created.
  Future<O11yO11yRolesOut?> listRoles() async {
    final response = await listRolesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRolesOut',) as O11yO11yRolesOut;
    
    }
    return null;
  }

  /// Lists all alert rules with their current evaluation state.
  ///
  /// Lists all alert rules with their current evaluation state. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listRulesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/rules';

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

  /// Lists all alert rules with their current evaluation state.
  ///
  /// Lists all alert rules with their current evaluation state. Viewer gate.
  Future<O11yO11yRulesOut?> listRules() async {
    final response = await listRulesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRulesOut',) as O11yO11yRulesOut;
    
    }
    return null;
  }

  /// Lists a service account's API keys — metadata only, never the secrets.
  ///
  /// Lists a service account's API keys — metadata only, never the secrets.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> listServiceAccountKeysWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/service_accounts/{id}/keys'
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

  /// Lists a service account's API keys — metadata only, never the secrets.
  ///
  /// Lists a service account's API keys — metadata only, never the secrets.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<O11yO11yAPIKeysOut?> listServiceAccountKeys(String id,) async {
    final response = await listServiceAccountKeysWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yAPIKeysOut',) as O11yO11yAPIKeysOut;
    
    }
    return null;
  }

  /// Lists the caller's org's service accounts.
  ///
  /// Lists the caller's org's service accounts.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listServiceAccountsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/service_accounts';

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

  /// Lists the caller's org's service accounts.
  ///
  /// Lists the caller's org's service accounts.
  Future<O11yO11yServiceAccountsOut?> listServiceAccounts() async {
    final response = await listServiceAccountsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yServiceAccountsOut',) as O11yO11yServiceAccountsOut;
    
    }
    return null;
  }

  /// Lists the services the given provider can collect from, optionally scoped to one cloud integration.
  ///
  /// Lists the services the given provider can collect from, optionally scoped to one cloud integration. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [String] cloudIntegrationId:
  ///   CloudIntegrationID, when set, scopes the listing to one cloud integration.
  Future<Response> listServicesMetadataWithHttpInfo(String cloudProvider, { String? cloudIntegrationId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/cloud_integrations/{cloud_provider}/services'
      .replaceAll('{cloud_provider}', cloudProvider);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (cloudIntegrationId != null) {
      queryParams.addAll(_queryParams('', 'cloud_integration_id', cloudIntegrationId));
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

  /// Lists the services the given provider can collect from, optionally scoped to one cloud integration.
  ///
  /// Lists the services the given provider can collect from, optionally scoped to one cloud integration. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [String] cloudIntegrationId:
  ///   CloudIntegrationID, when set, scopes the listing to one cloud integration.
  Future<O11yO11yServicesMetadataOut?> listServicesMetadata(String cloudProvider, { String? cloudIntegrationId, }) async {
    final response = await listServicesMetadataWithHttpInfo(cloudProvider,  cloudIntegrationId: cloudIntegrationId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yServicesMetadataOut',) as O11yO11yServicesMetadataOut;
    
    }
    return null;
  }

  /// Lists the caller's org's mapping groups, optionally only the enabled ones.
  ///
  /// Lists the caller's org's mapping groups, optionally only the enabled ones.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] enabled:
  Future<Response> listSpanMapperGroupsWithHttpInfo({ bool? enabled, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/span_mapper_groups';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (enabled != null) {
      queryParams.addAll(_queryParams('', 'enabled', enabled));
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

  /// Lists the caller's org's mapping groups, optionally only the enabled ones.
  ///
  /// Lists the caller's org's mapping groups, optionally only the enabled ones.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [bool] enabled:
  Future<O11yO11ySpanMapperGroupsOut?> listSpanMapperGroups({ bool? enabled, }) async {
    final response = await listSpanMapperGroupsWithHttpInfo( enabled: enabled, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySpanMapperGroupsOut',) as O11yO11ySpanMapperGroupsOut;
    
    }
    return null;
  }

  /// Lists the mappers belonging to one group, in the order they are applied.
  ///
  /// Lists the mappers belonging to one group, in the order they are applied.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  Future<Response> listSpanMappersWithHttpInfo(String groupId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/span_mapper_groups/{groupId}/span_mappers'
      .replaceAll('{groupId}', groupId);

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

  /// Lists the mappers belonging to one group, in the order they are applied.
  ///
  /// Lists the mappers belonging to one group, in the order they are applied.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  Future<O11yO11ySpanMappersOut?> listSpanMappers(String groupId,) async {
    final response = await listSpanMappersWithHttpInfo(groupId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySpanMappersOut',) as O11yO11ySpanMappersOut;
    
    }
    return null;
  }

  /// Lists the caller's org's funnels, each with its steps and who last touched it.
  ///
  /// Lists the caller's org's funnels, each with its steps and who last touched it.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listTraceFunnelsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/trace-funnels/list';

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

  /// Lists the caller's org's funnels, each with its steps and who last touched it.
  ///
  /// Lists the caller's org's funnels, each with its steps and who last touched it.  Callers need the viewer role; the runtime's own gate enforces it.
  Future<O11yO11yFunnelsOut?> listTraceFunnels() async {
    final response = await listTraceFunnelsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFunnelsOut',) as O11yO11yFunnelsOut;
    
    }
    return null;
  }

  /// Lists every preference of the calling user, each with its current and default value.
  ///
  /// Lists every preference of the calling user, each with its current and default value. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listUserPreferencesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/user/preferences';

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

  /// Lists every preference of the calling user, each with its current and default value.
  ///
  /// Lists every preference of the calling user, each with its current and default value. Viewer gate.
  Future<O11yO11yPreferencesOut?> listUserPreferences() async {
    final response = await listUserPreferencesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yPreferencesOut',) as O11yO11yPreferencesOut;
    
    }
    return null;
  }

  /// Lists the caller's org members.
  ///
  /// Lists the caller's org members. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listUsersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/users';

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

  /// Lists the caller's org members.
  ///
  /// Lists the caller's org members. Admin gate.
  Future<O11yO11yUsersOut?> listUsers() async {
    final response = await listUsersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yUsersOut',) as O11yO11yUsersOut;
    
    }
    return null;
  }

  /// Lists the org's members with their single legacy role.
  ///
  /// Lists the org's members with their single legacy role. Deprecated in favor of listUsers, which answers without the role. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listUsersDeprecatedWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/user';

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

  /// Lists the org's members with their single legacy role.
  ///
  /// Lists the org's members with their single legacy role. Deprecated in favor of listUsers, which answers without the role. Admin gate.
  Future<O11yO11yDeprecatedUsersOut?> listUsersDeprecated() async {
    final response = await listUsersDeprecatedWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDeprecatedUsersOut',) as O11yO11yDeprecatedUsersOut;
    
    }
    return null;
  }

  /// Locks a v2-shape dashboard.
  ///
  /// Locks a v2-shape dashboard. Only the dashboard's creator or an org admin may lock or unlock.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<Response> lockDashboardV2WithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/dashboards/{id}/lock'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Locks a v2-shape dashboard.
  ///
  /// Locks a v2-shape dashboard. Only the dashboard's creator or an org admin may lock or unlock.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<void> lockDashboardV2(String id,) async {
    final response = await lockDashboardV2WithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Applies an RFC 6902 JSON Patch to a v2-shape dashboard.
  ///
  /// Applies an RFC 6902 JSON Patch to a v2-shape dashboard. The patch is applied against the postable view (metadata, spec, tags), so individual panels, queries, variables, layouts or tags can be updated without re-sending the rest. Apply is lenient — remove on a missing path is a no-op and add creates any missing parent objects — and the result is still validated. Locked dashboards are rejected. The request body is the bare JSON Patch operations array.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the dashboard id from the path.
  ///
  /// * [O11yO11yDashboardPatchIn] o11yO11yDashboardPatchIn (required):
  Future<Response> patchDashboardV2WithHttpInfo(String id, O11yO11yDashboardPatchIn o11yO11yDashboardPatchIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/dashboards/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yDashboardPatchIn;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Applies an RFC 6902 JSON Patch to a v2-shape dashboard.
  ///
  /// Applies an RFC 6902 JSON Patch to a v2-shape dashboard. The patch is applied against the postable view (metadata, spec, tags), so individual panels, queries, variables, layouts or tags can be updated without re-sending the rest. Apply is lenient — remove on a missing path is a no-op and add creates any missing parent objects — and the result is still validated. Locked dashboards are rejected. The request body is the bare JSON Patch operations array.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the dashboard id from the path.
  ///
  /// * [O11yO11yDashboardPatchIn] o11yO11yDashboardPatchIn (required):
  Future<O11yO11yDashboardOut?> patchDashboardV2(String id, O11yO11yDashboardPatchIn o11yO11yDashboardPatchIn,) async {
    final response = await patchDashboardV2WithHttpInfo(id, o11yO11yDashboardPatchIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDashboardOut',) as O11yO11yDashboardOut;
    
    }
    return null;
  }

  /// Changes a review queue's name, description or score-config set.
  ///
  /// Changes a review queue's name, description or score-config set. A field the request omits is left alone. A name another queue in the same project already uses is a 409; a queue id belonging to another org is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the annotation queue to update, from the path.
  ///
  /// * [O11yUpdateQueueIn] o11yUpdateQueueIn (required):
  Future<Response> patchO11yReviewsByIdWithHttpInfo(String id, O11yUpdateQueueIn o11yUpdateQueueIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/reviews/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yUpdateQueueIn;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Changes a review queue's name, description or score-config set.
  ///
  /// Changes a review queue's name, description or score-config set. A field the request omits is left alone. A name another queue in the same project already uses is a 409; a queue id belonging to another org is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the annotation queue to update, from the path.
  ///
  /// * [O11yUpdateQueueIn] o11yUpdateQueueIn (required):
  Future<O11yAnnQueueView?> patchO11yReviewsById(String id, O11yUpdateQueueIn o11yUpdateQueueIn,) async {
    final response = await patchO11yReviewsByIdWithHttpInfo(id, o11yUpdateQueueIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yAnnQueueView',) as O11yAnnQueueView;
    
    }
    return null;
  }

  /// Moves one queue item between PENDING and COMPLETED and sets its assignee.
  ///
  /// Moves one queue item between PENDING and COMPLETED and sets its assignee. Completing an item stamps its completedAt. An item that exists under a different queue answers the same 404 an unknown item does, and so does a queue belonging to another org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the annotation queue the item belongs to, from the path.
  ///
  /// * [String] itemId (required):
  ///   ItemID is the item to update, from the path.
  ///
  /// * [O11yUpdateItemIn] o11yUpdateItemIn (required):
  Future<Response> patchO11yReviewsByIdItemsByItemidWithHttpInfo(String id, String itemId, O11yUpdateItemIn o11yUpdateItemIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/reviews/{id}/items/{itemId}'
      .replaceAll('{id}', id)
      .replaceAll('{itemId}', itemId);

    // ignore: prefer_final_locals
    Object? postBody = o11yUpdateItemIn;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Moves one queue item between PENDING and COMPLETED and sets its assignee.
  ///
  /// Moves one queue item between PENDING and COMPLETED and sets its assignee. Completing an item stamps its completedAt. An item that exists under a different queue answers the same 404 an unknown item does, and so does a queue belonging to another org.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the annotation queue the item belongs to, from the path.
  ///
  /// * [String] itemId (required):
  ///   ItemID is the item to update, from the path.
  ///
  /// * [O11yUpdateItemIn] o11yUpdateItemIn (required):
  Future<O11yAnnItemView?> patchO11yReviewsByIdItemsByItemid(String id, String itemId, O11yUpdateItemIn o11yUpdateItemIn,) async {
    final response = await patchO11yReviewsByIdItemsByItemidWithHttpInfo(id, itemId, o11yUpdateItemIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yAnnItemView',) as O11yAnnItemView;
    
    }
    return null;
  }

  /// Applies a partial update to an alert rule, by id, answering with the stored rule — the common toggle for enabling or muting a rule.
  ///
  /// Applies a partial update to an alert rule, by id, answering with the stored rule — the common toggle for enabling or muting a rule. Editor gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Object] body (required):
  Future<Response> patchRuleByIDWithHttpInfo(String id, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/rules/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Applies a partial update to an alert rule, by id, answering with the stored rule — the common toggle for enabling or muting a rule.
  ///
  /// Applies a partial update to an alert rule, by id, answering with the stored rule — the common toggle for enabling or muting a rule. Editor gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Object] body (required):
  Future<O11yO11yRuleOut?> patchRuleByID(String id, Object body,) async {
    final response = await patchRuleByIDWithHttpInfo(id, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRuleOut',) as O11yO11yRuleOut;
    
    }
    return null;
  }

  /// Pins a dashboard for the calling user.
  ///
  /// Pins a dashboard for the calling user. A user can pin at most ten dashboards; pinning at the limit refuses with the runtime's conflict. Re-pinning an already-pinned dashboard is a no-op success. Pinning mutates only the caller's pin list, not the dashboard, so a viewer may pin what a viewer may read.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<Response> pinDashboardV2WithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/users/me/dashboards/{id}/pins'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Pins a dashboard for the calling user.
  ///
  /// Pins a dashboard for the calling user. A user can pin at most ten dashboards; pinning at the limit refuses with the runtime's conflict. Re-pinning an already-pinned dashboard is a no-op success. Pinning mutates only the caller's pin list, not the dashboard, so a viewer may pin what a viewer may read.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<void> pinDashboardV2(String id,) async {
    final response = await pinDashboardV2WithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Take an Alertmanager notification and page a human
  ///
  /// Records one Alertmanager webhook delivery and pages the on-call. Each alert prints an `ALERT-RECEIVED` line and joins the replay ring, then the batch is carried out of the process by the egress chain: the org's KMS-custodied Slack bot token first (the ONE product Slack egress, not a second webhook credential), falling back to a plain POST to `CLOUD_ALERTS_WEBHOOK_URL` — which needs no Slack connection and so works in exactly the state that silences the first. Resolved notifications page too: \"it recovered\" is the half of an incident people are actually waiting for.  THE STATUS CODE REPORTS DELIVERY, NOT ARRIVAL. 200 `ok` means an egress accepted the batch. If none did — including when none is configured at all — it answers **503** naming the failure, so Alertmanager retries and counts it in `alertmanager_notifications_failed_total`. An alert nobody could be told about must never answer the same way as one that was delivered.  A body that will not parse is still recorded (with empty fields) rather than rejected: the delivery happened, which is the fact being recorded, and a 400 would make Alertmanager retry a malformed payload forever.  The receiver segment is Alertmanager's own receiver name, a parameter rather than a hand-listed route because the receiver set is config, not code.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] receiver (required):
  Future<Response> postO11yAlertsByReceiverWithHttpInfo(String receiver,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/alerts/{receiver}'
      .replaceAll('{receiver}', receiver);

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

  /// Take an Alertmanager notification and page a human
  ///
  /// Records one Alertmanager webhook delivery and pages the on-call. Each alert prints an `ALERT-RECEIVED` line and joins the replay ring, then the batch is carried out of the process by the egress chain: the org's KMS-custodied Slack bot token first (the ONE product Slack egress, not a second webhook credential), falling back to a plain POST to `CLOUD_ALERTS_WEBHOOK_URL` — which needs no Slack connection and so works in exactly the state that silences the first. Resolved notifications page too: \"it recovered\" is the half of an incident people are actually waiting for.  THE STATUS CODE REPORTS DELIVERY, NOT ARRIVAL. 200 `ok` means an egress accepted the batch. If none did — including when none is configured at all — it answers **503** naming the failure, so Alertmanager retries and counts it in `alertmanager_notifications_failed_total`. An alert nobody could be told about must never answer the same way as one that was delivered.  A body that will not parse is still recorded (with empty fields) rather than rejected: the delivery happened, which is the fact being recorded, and a 400 would make Alertmanager retry a malformed payload forever.  The receiver segment is Alertmanager's own receiver name, a parameter rather than a hand-listed route because the receiver set is config, not code.
  ///
  /// Parameters:
  ///
  /// * [String] receiver (required):
  Future<void> postO11yAlertsByReceiver(String receiver,) async {
    final response = await postO11yAlertsByReceiverWithHttpInfo(receiver,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Receive a Sentry envelope on the SDK's own DSN path
  ///
  /// Accepts an application/x-sentry-envelope frame from a Sentry SDK — the batched wire format carrying events, sessions and attachments — and ingests it against the project named in the path.  THE /api/ SEGMENT IS NOT OURS TO NAME. An SDK appends its own fixed /api/<project>/envelope/ suffix to whatever DSN it is given, so this address is the SDK's, received verbatim. We receive this shape; we do not publish it. The clean spelling of the same wire is /v1/event/{project}/envelope/.  AUTHENTICATED BY THE DSN PUBLIC KEY, never a Hanzo session, and therefore exempt from the principal gate: the ingest verifier checks the key in constant time, fails closed, and derives the org from it. A keyless submission is a 401 from that verifier — not a 403 from the gate, and not a 404 — which is how you tell the hops apart. The exemption is matched by method plus prefix plus suffix, never a bare prefix, so no read is reachable through it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<Response> postO11yApiByProjectIdEnvelopeWithHttpInfo(String projectId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/api/{project_id}/envelope/'
      .replaceAll('{project_id}', projectId);

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

  /// Receive a Sentry envelope on the SDK's own DSN path
  ///
  /// Accepts an application/x-sentry-envelope frame from a Sentry SDK — the batched wire format carrying events, sessions and attachments — and ingests it against the project named in the path.  THE /api/ SEGMENT IS NOT OURS TO NAME. An SDK appends its own fixed /api/<project>/envelope/ suffix to whatever DSN it is given, so this address is the SDK's, received verbatim. We receive this shape; we do not publish it. The clean spelling of the same wire is /v1/event/{project}/envelope/.  AUTHENTICATED BY THE DSN PUBLIC KEY, never a Hanzo session, and therefore exempt from the principal gate: the ingest verifier checks the key in constant time, fails closed, and derives the org from it. A keyless submission is a 401 from that verifier — not a 403 from the gate, and not a 404 — which is how you tell the hops apart. The exemption is matched by method plus prefix plus suffix, never a bare prefix, so no read is reachable through it.
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<void> postO11yApiByProjectIdEnvelope(String projectId,) async {
    final response = await postO11yApiByProjectIdEnvelopeWithHttpInfo(projectId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Receive a single Sentry event on the SDK's own DSN path
  ///
  /// The legacy single-event form of the envelope ingest: one JSON event rather than a framed batch, kept because SDKs in the field still send it.  Same address ownership and same authentication as the envelope route — the /api/ segment is the SDK's, the DSN public key is the credential, the principal gate does not apply, and a keyless submission is a 401 from the ingest verifier.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<Response> postO11yApiByProjectIdStoreWithHttpInfo(String projectId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/api/{project_id}/store/'
      .replaceAll('{project_id}', projectId);

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

  /// Receive a single Sentry event on the SDK's own DSN path
  ///
  /// The legacy single-event form of the envelope ingest: one JSON event rather than a framed batch, kept because SDKs in the field still send it.  Same address ownership and same authentication as the envelope route — the /api/ segment is the SDK's, the DSN public key is the credential, the principal gate does not apply, and a keyless submission is a 401 from the ingest verifier.
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<void> postO11yApiByProjectIdStore(String projectId,) async {
    final response = await postO11yApiByProjectIdStoreWithHttpInfo(projectId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Reads the attribute-value request from the body rather than off the query string — the spelling the newer builder uses to send its filters alongside the request.
  ///
  /// Reads the attribute-value request from the body rather than off the query string — the spelling the newer builder uses to send its filters alongside the request.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yFilterAttributeValueRequest] o11yFilterAttributeValueRequest (required):
  Future<Response> postO11yAutoCompleteAttributeValuesWithHttpInfo(O11yFilterAttributeValueRequest o11yFilterAttributeValueRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/auto_complete/attribute_values';

    // ignore: prefer_final_locals
    Object? postBody = o11yFilterAttributeValueRequest;

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

  /// Reads the attribute-value request from the body rather than off the query string — the spelling the newer builder uses to send its filters alongside the request.
  ///
  /// Reads the attribute-value request from the body rather than off the query string — the spelling the newer builder uses to send its filters alongside the request.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yFilterAttributeValueRequest] o11yFilterAttributeValueRequest (required):
  Future<O11yO11yAttributeValuesOut?> postO11yAutoCompleteAttributeValues(O11yFilterAttributeValueRequest o11yFilterAttributeValueRequest,) async {
    final response = await postO11yAutoCompleteAttributeValuesWithHttpInfo(o11yFilterAttributeValueRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yAttributeValuesOut',) as O11yO11yAttributeValuesOut;
    
    }
    return null;
  }

  /// Lists Kubernetes clusters over a time range, each with its CPU and memory usage against allocatable capacity and its attributes; filterable, groupable and paginated.
  ///
  /// Lists Kubernetes clusters over a time range, each with its CPU and memory usage against allocatable capacity and its attributes; filterable, groupable and paginated.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yClusterListRequest] o11yClusterListRequest (required):
  Future<Response> postO11yClustersListWithHttpInfo(O11yClusterListRequest o11yClusterListRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/clusters/list';

    // ignore: prefer_final_locals
    Object? postBody = o11yClusterListRequest;

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

  /// Lists Kubernetes clusters over a time range, each with its CPU and memory usage against allocatable capacity and its attributes; filterable, groupable and paginated.
  ///
  /// Lists Kubernetes clusters over a time range, each with its CPU and memory usage against allocatable capacity and its attributes; filterable, groupable and paginated.
  ///
  /// Parameters:
  ///
  /// * [O11yClusterListRequest] o11yClusterListRequest (required):
  Future<O11yO11yClusterListOut?> postO11yClustersList(O11yClusterListRequest o11yClusterListRequest,) async {
    final response = await postO11yClustersListWithHttpInfo(o11yClusterListRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yClusterListOut',) as O11yO11yClusterListOut;
    
    }
    return null;
  }

  /// Complete a SAML sign-in
  ///
  /// The assertion consumer service: the identity provider POSTs its signed assertion here, and a valid one establishes the session and answers 303 to the console.  A redirect, not a value, so it is not a typed operation. UNAUTHENTICATED by necessity and authenticated in fact by the assertion's signature, which is checked against the configured provider before any session exists.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postO11yCompleteSamlWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/complete/saml';

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

  /// Complete a SAML sign-in
  ///
  /// The assertion consumer service: the identity provider POSTs its signed assertion here, and a valid one establishes the session and answers 303 to the console.  A redirect, not a value, so it is not a typed operation. UNAUTHENTICATED by necessity and authenticated in fact by the assertion's signature, which is checked against the configured provider before any session exists.
  Future<void> postO11yCompleteSaml() async {
    final response = await postO11yCompleteSamlWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Counts the grouped exceptions in the query window for the caller's org.
  ///
  /// Counts the grouped exceptions in the query window for the caller's org.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yErrorsCountIn] o11yO11yErrorsCountIn (required):
  Future<Response> postO11yCounterrorsWithHttpInfo(O11yO11yErrorsCountIn o11yO11yErrorsCountIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/countErrors';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yErrorsCountIn;

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

  /// Counts the grouped exceptions in the query window for the caller's org.
  ///
  /// Counts the grouped exceptions in the query window for the caller's org.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yErrorsCountIn] o11yO11yErrorsCountIn (required):
  Future<int?> postO11yCounterrors(O11yO11yErrorsCountIn o11yO11yErrorsCountIn,) async {
    final response = await postO11yCounterrorsWithHttpInfo(o11yO11yErrorsCountIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'int',) as int;
    
    }
    return null;
  }

  /// Lists Kubernetes daemonsets over a time range, each with the CPU and memory its pods used against request and limit, desired and available node counts, restarts and attributes; filterable, groupable and paginated.
  ///
  /// Lists Kubernetes daemonsets over a time range, each with the CPU and memory its pods used against request and limit, desired and available node counts, restarts and attributes; filterable, groupable and paginated.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yDaemonSetListRequest] o11yDaemonSetListRequest (required):
  Future<Response> postO11yDaemonsetsListWithHttpInfo(O11yDaemonSetListRequest o11yDaemonSetListRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/daemonsets/list';

    // ignore: prefer_final_locals
    Object? postBody = o11yDaemonSetListRequest;

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

  /// Lists Kubernetes daemonsets over a time range, each with the CPU and memory its pods used against request and limit, desired and available node counts, restarts and attributes; filterable, groupable and paginated.
  ///
  /// Lists Kubernetes daemonsets over a time range, each with the CPU and memory its pods used against request and limit, desired and available node counts, restarts and attributes; filterable, groupable and paginated.
  ///
  /// Parameters:
  ///
  /// * [O11yDaemonSetListRequest] o11yDaemonSetListRequest (required):
  Future<O11yO11yDaemonSetListOut?> postO11yDaemonsetsList(O11yDaemonSetListRequest o11yDaemonSetListRequest,) async {
    final response = await postO11yDaemonsetsListWithHttpInfo(o11yDaemonSetListRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDaemonSetListOut',) as O11yO11yDaemonSetListOut;
    
    }
    return null;
  }

  /// Returns the service dependency graph over the requested window: every parent→child edge observed, with call and error rates and latency percentiles per edge.
  ///
  /// Returns the service dependency graph over the requested window: every parent→child edge observed, with call and error rates and latency percentiles per edge.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDependencyGraphIn] o11yO11yDependencyGraphIn (required):
  Future<Response> postO11yDependencyGraphWithHttpInfo(O11yO11yDependencyGraphIn o11yO11yDependencyGraphIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/dependency_graph';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yDependencyGraphIn;

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

  /// Returns the service dependency graph over the requested window: every parent→child edge observed, with call and error rates and latency percentiles per edge.
  ///
  /// Returns the service dependency graph over the requested window: every parent→child edge observed, with call and error rates and latency percentiles per edge.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDependencyGraphIn] o11yO11yDependencyGraphIn (required):
  Future<List<O11yO11yDependency>?> postO11yDependencyGraph(O11yO11yDependencyGraphIn o11yO11yDependencyGraphIn,) async {
    final response = await postO11yDependencyGraphWithHttpInfo(o11yO11yDependencyGraphIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<O11yO11yDependency>') as List)
        .cast<O11yO11yDependency>()
        .toList(growable: false);

    }
    return null;
  }

  /// Lists Kubernetes deployments over a time range, each with the CPU and memory its pods used against request and limit, desired and available replica counts, restarts and attributes; filterable, groupable and paginated.
  ///
  /// Lists Kubernetes deployments over a time range, each with the CPU and memory its pods used against request and limit, desired and available replica counts, restarts and attributes; filterable, groupable and paginated.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yDeploymentListRequest] o11yDeploymentListRequest (required):
  Future<Response> postO11yDeploymentsListWithHttpInfo(O11yDeploymentListRequest o11yDeploymentListRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/deployments/list';

    // ignore: prefer_final_locals
    Object? postBody = o11yDeploymentListRequest;

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

  /// Lists Kubernetes deployments over a time range, each with the CPU and memory its pods used against request and limit, desired and available replica counts, restarts and attributes; filterable, groupable and paginated.
  ///
  /// Lists Kubernetes deployments over a time range, each with the CPU and memory its pods used against request and limit, desired and available replica counts, restarts and attributes; filterable, groupable and paginated.
  ///
  /// Parameters:
  ///
  /// * [O11yDeploymentListRequest] o11yDeploymentListRequest (required):
  Future<O11yO11yDeploymentListOut?> postO11yDeploymentsList(O11yDeploymentListRequest o11yDeploymentListRequest,) async {
    final response = await postO11yDeploymentsListWithHttpInfo(o11yDeploymentListRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDeploymentListOut',) as O11yO11yDeploymentListOut;
    
    }
    return null;
  }

  /// Changes an issue's lifecycle — resolve, ignore, reopen or assign — and returns the updated issue.
  ///
  /// Changes an issue's lifecycle — resolve, ignore, reopen or assign — and returns the updated issue. Fields left unset are left unchanged.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the issue id.
  ///
  /// * [O11yO11yErrorUpdateIssueIn] o11yO11yErrorUpdateIssueIn (required):
  Future<Response> postO11yErrortrackingIssuesByIdWithHttpInfo(String id, O11yO11yErrorUpdateIssueIn o11yO11yErrorUpdateIssueIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/errortracking/issues/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yErrorUpdateIssueIn;

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

  /// Changes an issue's lifecycle — resolve, ignore, reopen or assign — and returns the updated issue.
  ///
  /// Changes an issue's lifecycle — resolve, ignore, reopen or assign — and returns the updated issue. Fields left unset are left unchanged.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the issue id.
  ///
  /// * [O11yO11yErrorUpdateIssueIn] o11yO11yErrorUpdateIssueIn (required):
  Future<O11yO11yErrorIssueOut?> postO11yErrortrackingIssuesById(String id, O11yO11yErrorUpdateIssueIn o11yO11yErrorUpdateIssueIn,) async {
    final response = await postO11yErrortrackingIssuesByIdWithHttpInfo(id, o11yO11yErrorUpdateIssueIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yErrorIssueOut',) as O11yO11yErrorIssueOut;
    
    }
    return null;
  }

  /// Records one product-analytics event for the signed-in user — a track event with a name and free-form attributes.
  ///
  /// Records one product-analytics event for the signed-in user — a track event with a name and free-form attributes.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yEventIn] o11yO11yEventIn (required):
  Future<Response> postO11yEventWithHttpInfo(O11yO11yEventIn o11yO11yEventIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/event';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yEventIn;

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

  /// Records one product-analytics event for the signed-in user — a track event with a name and free-form attributes.
  ///
  /// Records one product-analytics event for the signed-in user — a track event with a name and free-form attributes.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yEventIn] o11yO11yEventIn (required):
  Future<O11yO11yMessage?> postO11yEvent(O11yO11yEventIn o11yO11yEventIn,) async {
    final response = await postO11yEventWithHttpInfo(o11yO11yEventIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yMessage',) as O11yO11yMessage;
    
    }
    return null;
  }

  /// Saves a new explorer view for the caller's org and returns its id.
  ///
  /// Saves a new explorer view for the caller's org and returns its id.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11ySavedView] o11ySavedView (required):
  Future<Response> postO11yExplorerViewsWithHttpInfo(O11ySavedView o11ySavedView,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/explorer/views';

    // ignore: prefer_final_locals
    Object? postBody = o11ySavedView;

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

  /// Saves a new explorer view for the caller's org and returns its id.
  ///
  /// Saves a new explorer view for the caller's org and returns its id.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11ySavedView] o11ySavedView (required):
  Future<O11yO11ySavedViewCreateOut?> postO11yExplorerViews(O11ySavedView o11ySavedView,) async {
    final response = await postO11yExplorerViewsWithHttpInfo(o11ySavedView,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySavedViewCreateOut',) as O11yO11ySavedViewCreateOut;
    
    }
    return null;
  }

  /// Export raw telemetry rows as a file
  ///
  /// Runs a query and returns its rows as a downloadable CSV or JSONL attachment, chunked, with a trailer that says whether the export completed — so a truncated download is detectable rather than silently short.  The answer is a file, not a value, which is why it is not a typed operation: the body is neither JSON nor bounded. Use the query operations when you want rows in a response.  A validated, org-scoped principal is required and the export carries that principal's own tenant only.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postO11yExportRawDataWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/export_raw_data';

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

  /// Export raw telemetry rows as a file
  ///
  /// Runs a query and returns its rows as a downloadable CSV or JSONL attachment, chunked, with a trailer that says whether the export completed — so a truncated download is detectable rather than silently short.  The answer is a file, not a value, which is why it is not a typed operation: the body is neither JSON nor bounded. Use the query operations when you want rows in a response.  A validated, org-scoped principal is required and the export carries that principal's own tenant only.
  Future<void> postO11yExportRawData() async {
    final response = await postO11yExportRawDataWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists monitored hosts over a time range, each with its CPU, memory, I/O wait and 15-minute load, whether it is actively reporting, its OS and its attributes; filterable, groupable and paginated.
  ///
  /// Lists monitored hosts over a time range, each with its CPU, memory, I/O wait and 15-minute load, whether it is actively reporting, its OS and its attributes; filterable, groupable and paginated. The answer also says whether any host metrics were received at all and which clusters and nodes sent them, so an empty page is distinguishable from a fleet that never reported.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yHostListRequest] o11yHostListRequest (required):
  Future<Response> postO11yHostsListWithHttpInfo(O11yHostListRequest o11yHostListRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/hosts/list';

    // ignore: prefer_final_locals
    Object? postBody = o11yHostListRequest;

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

  /// Lists monitored hosts over a time range, each with its CPU, memory, I/O wait and 15-minute load, whether it is actively reporting, its OS and its attributes; filterable, groupable and paginated.
  ///
  /// Lists monitored hosts over a time range, each with its CPU, memory, I/O wait and 15-minute load, whether it is actively reporting, its OS and its attributes; filterable, groupable and paginated. The answer also says whether any host metrics were received at all and which clusters and nodes sent them, so an empty page is distinguishable from a fleet that never reported.
  ///
  /// Parameters:
  ///
  /// * [O11yHostListRequest] o11yHostListRequest (required):
  Future<O11yO11yHostListOut?> postO11yHostsList(O11yHostListRequest o11yHostListRequest,) async {
    final response = await postO11yHostsListWithHttpInfo(o11yHostListRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yHostListOut',) as O11yO11yHostListOut;
    
    }
    return null;
  }

  /// Lists Kubernetes clusters with CPU and memory usage against allocatable capacity summed over their nodes, plus per-group node readiness and pod phase counts.
  ///
  /// Lists Kubernetes clusters with CPU and memory usage against allocatable capacity summed over their nodes, plus per-group node readiness and pod phase counts. Rows answer as 'list' under the default k8s.cluster.name grouping or 'grouped_list' under a custom groupBy; a metric with no data in the window answers -1. Filterable by expression, orderable by usage or allocatable, paginated by offset and limit.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yPostableClusters] o11yPostableClusters (required):
  Future<Response> postO11yInfraMonitoringClustersWithHttpInfo(O11yPostableClusters o11yPostableClusters,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/infra_monitoring/clusters';

    // ignore: prefer_final_locals
    Object? postBody = o11yPostableClusters;

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

  /// Lists Kubernetes clusters with CPU and memory usage against allocatable capacity summed over their nodes, plus per-group node readiness and pod phase counts.
  ///
  /// Lists Kubernetes clusters with CPU and memory usage against allocatable capacity summed over their nodes, plus per-group node readiness and pod phase counts. Rows answer as 'list' under the default k8s.cluster.name grouping or 'grouped_list' under a custom groupBy; a metric with no data in the window answers -1. Filterable by expression, orderable by usage or allocatable, paginated by offset and limit.
  ///
  /// Parameters:
  ///
  /// * [O11yPostableClusters] o11yPostableClusters (required):
  Future<O11yO11yInfraClustersOut?> postO11yInfraMonitoringClusters(O11yPostableClusters o11yPostableClusters,) async {
    final response = await postO11yInfraMonitoringClustersWithHttpInfo(o11yPostableClusters,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraClustersOut',) as O11yO11yInfraClustersOut;
    
    }
    return null;
  }

  /// Lists Kubernetes daemonsets with the CPU and memory their pods used against request and limit, the latest desired and current scheduled NODE counts (node counts, not pod counts), and per-group pod phase counts.
  ///
  /// Lists Kubernetes daemonsets with the CPU and memory their pods used against request and limit, the latest desired and current scheduled NODE counts (node counts, not pod counts), and per-group pod phase counts. Rows answer as 'list' under the default k8s.daemonset.name grouping or 'grouped_list' under a custom groupBy; a metric with no data in the window answers -1. Filterable by expression, orderable by the pod metrics or the node counts, paginated by offset and limit.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yPostableDaemonSets] o11yPostableDaemonSets (required):
  Future<Response> postO11yInfraMonitoringDaemonsetsWithHttpInfo(O11yPostableDaemonSets o11yPostableDaemonSets,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/infra_monitoring/daemonsets';

    // ignore: prefer_final_locals
    Object? postBody = o11yPostableDaemonSets;

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

  /// Lists Kubernetes daemonsets with the CPU and memory their pods used against request and limit, the latest desired and current scheduled NODE counts (node counts, not pod counts), and per-group pod phase counts.
  ///
  /// Lists Kubernetes daemonsets with the CPU and memory their pods used against request and limit, the latest desired and current scheduled NODE counts (node counts, not pod counts), and per-group pod phase counts. Rows answer as 'list' under the default k8s.daemonset.name grouping or 'grouped_list' under a custom groupBy; a metric with no data in the window answers -1. Filterable by expression, orderable by the pod metrics or the node counts, paginated by offset and limit.
  ///
  /// Parameters:
  ///
  /// * [O11yPostableDaemonSets] o11yPostableDaemonSets (required):
  Future<O11yO11yInfraDaemonSetsOut?> postO11yInfraMonitoringDaemonsets(O11yPostableDaemonSets o11yPostableDaemonSets,) async {
    final response = await postO11yInfraMonitoringDaemonsetsWithHttpInfo(o11yPostableDaemonSets,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraDaemonSetsOut',) as O11yO11yInfraDaemonSetsOut;
    
    }
    return null;
  }

  /// Lists Kubernetes deployments with the CPU and memory their pods used against request and limit, the latest desired and available replica counts, and per-group pod phase counts.
  ///
  /// Lists Kubernetes deployments with the CPU and memory their pods used against request and limit, the latest desired and available replica counts, and per-group pod phase counts. Rows answer as 'list' under the default k8s.deployment.name grouping or 'grouped_list' under a custom groupBy; a metric with no data in the window answers -1. Filterable by expression, orderable by the pod metrics or the replica counts, paginated by offset and limit.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yPostableDeployments] o11yPostableDeployments (required):
  Future<Response> postO11yInfraMonitoringDeploymentsWithHttpInfo(O11yPostableDeployments o11yPostableDeployments,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/infra_monitoring/deployments';

    // ignore: prefer_final_locals
    Object? postBody = o11yPostableDeployments;

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

  /// Lists Kubernetes deployments with the CPU and memory their pods used against request and limit, the latest desired and available replica counts, and per-group pod phase counts.
  ///
  /// Lists Kubernetes deployments with the CPU and memory their pods used against request and limit, the latest desired and available replica counts, and per-group pod phase counts. Rows answer as 'list' under the default k8s.deployment.name grouping or 'grouped_list' under a custom groupBy; a metric with no data in the window answers -1. Filterable by expression, orderable by the pod metrics or the replica counts, paginated by offset and limit.
  ///
  /// Parameters:
  ///
  /// * [O11yPostableDeployments] o11yPostableDeployments (required):
  Future<O11yO11yInfraDeploymentsOut?> postO11yInfraMonitoringDeployments(O11yPostableDeployments o11yPostableDeployments,) async {
    final response = await postO11yInfraMonitoringDeploymentsWithHttpInfo(o11yPostableDeployments,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraDeploymentsOut',) as O11yO11yInfraDeploymentsOut;
    
    }
    return null;
  }

  /// Lists hosts with key infrastructure metrics — CPU, memory, I/O wait and disk usage percentages and 15-minute load — plus an active/inactive status from whether the host reported in the last ten minutes.
  ///
  /// Lists hosts with key infrastructure metrics — CPU, memory, I/O wait and disk usage percentages and 15-minute load — plus an active/inactive status from whether the host reported in the last ten minutes. Rows answer as 'list' under the default host.name grouping or 'grouped_list' under a custom groupBy; a metric with no data in the window answers -1. Filterable by expression and by status, orderable by any of the five metrics, paginated by offset and limit.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yPostableHosts] o11yPostableHosts (required):
  Future<Response> postO11yInfraMonitoringHostsWithHttpInfo(O11yPostableHosts o11yPostableHosts,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/infra_monitoring/hosts';

    // ignore: prefer_final_locals
    Object? postBody = o11yPostableHosts;

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

  /// Lists hosts with key infrastructure metrics — CPU, memory, I/O wait and disk usage percentages and 15-minute load — plus an active/inactive status from whether the host reported in the last ten minutes.
  ///
  /// Lists hosts with key infrastructure metrics — CPU, memory, I/O wait and disk usage percentages and 15-minute load — plus an active/inactive status from whether the host reported in the last ten minutes. Rows answer as 'list' under the default host.name grouping or 'grouped_list' under a custom groupBy; a metric with no data in the window answers -1. Filterable by expression and by status, orderable by any of the five metrics, paginated by offset and limit.
  ///
  /// Parameters:
  ///
  /// * [O11yPostableHosts] o11yPostableHosts (required):
  Future<O11yO11yInfraHostsOut?> postO11yInfraMonitoringHosts(O11yPostableHosts o11yPostableHosts,) async {
    final response = await postO11yInfraMonitoringHostsWithHttpInfo(o11yPostableHosts,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraHostsOut',) as O11yO11yInfraHostsOut;
    
    }
    return null;
  }

  /// Lists Kubernetes jobs with the CPU and memory their pods used against request and limit, the latest desired-successful, active, failed and successful pod counters, and per-group pod phase counts — the phase counts are current state while the counters are cumulative over the job's life.
  ///
  /// Lists Kubernetes jobs with the CPU and memory their pods used against request and limit, the latest desired-successful, active, failed and successful pod counters, and per-group pod phase counts — the phase counts are current state while the counters are cumulative over the job's life. Rows answer as 'list' under the default k8s.job.name grouping or 'grouped_list' under a custom groupBy; a metric with no data in the window answers -1. Filterable by expression, orderable by the pod metrics or the job counters, paginated by offset and limit.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yPostableJobs] o11yPostableJobs (required):
  Future<Response> postO11yInfraMonitoringJobsWithHttpInfo(O11yPostableJobs o11yPostableJobs,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/infra_monitoring/jobs';

    // ignore: prefer_final_locals
    Object? postBody = o11yPostableJobs;

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

  /// Lists Kubernetes jobs with the CPU and memory their pods used against request and limit, the latest desired-successful, active, failed and successful pod counters, and per-group pod phase counts — the phase counts are current state while the counters are cumulative over the job's life.
  ///
  /// Lists Kubernetes jobs with the CPU and memory their pods used against request and limit, the latest desired-successful, active, failed and successful pod counters, and per-group pod phase counts — the phase counts are current state while the counters are cumulative over the job's life. Rows answer as 'list' under the default k8s.job.name grouping or 'grouped_list' under a custom groupBy; a metric with no data in the window answers -1. Filterable by expression, orderable by the pod metrics or the job counters, paginated by offset and limit.
  ///
  /// Parameters:
  ///
  /// * [O11yPostableJobs] o11yPostableJobs (required):
  Future<O11yO11yInfraJobsOut?> postO11yInfraMonitoringJobs(O11yPostableJobs o11yPostableJobs,) async {
    final response = await postO11yInfraMonitoringJobsWithHttpInfo(o11yPostableJobs,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraJobsOut',) as O11yO11yInfraJobsOut;
    
    }
    return null;
  }

  /// Lists Kubernetes namespaces with the CPU and memory their pods used and per-group pod phase counts.
  ///
  /// Lists Kubernetes namespaces with the CPU and memory their pods used and per-group pod phase counts. Rows answer as 'list' under the default k8s.namespace.name grouping or 'grouped_list' under a custom groupBy, aggregating pods either way; a metric with no data in the window answers -1. Filterable by expression, orderable by cpu or memory, paginated by offset and limit.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yPostableNamespaces] o11yPostableNamespaces (required):
  Future<Response> postO11yInfraMonitoringNamespacesWithHttpInfo(O11yPostableNamespaces o11yPostableNamespaces,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/infra_monitoring/namespaces';

    // ignore: prefer_final_locals
    Object? postBody = o11yPostableNamespaces;

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

  /// Lists Kubernetes namespaces with the CPU and memory their pods used and per-group pod phase counts.
  ///
  /// Lists Kubernetes namespaces with the CPU and memory their pods used and per-group pod phase counts. Rows answer as 'list' under the default k8s.namespace.name grouping or 'grouped_list' under a custom groupBy, aggregating pods either way; a metric with no data in the window answers -1. Filterable by expression, orderable by cpu or memory, paginated by offset and limit.
  ///
  /// Parameters:
  ///
  /// * [O11yPostableNamespaces] o11yPostableNamespaces (required):
  Future<O11yO11yInfraNamespacesOut?> postO11yInfraMonitoringNamespaces(O11yPostableNamespaces o11yPostableNamespaces,) async {
    final response = await postO11yInfraMonitoringNamespacesWithHttpInfo(o11yPostableNamespaces,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraNamespacesOut',) as O11yO11yInfraNamespacesOut;
    
    }
    return null;
  }

  /// Lists Kubernetes nodes with CPU and memory usage against allocatable capacity, per-group readiness counts and per-group phase counts for the pods scheduled on them.
  ///
  /// Lists Kubernetes nodes with CPU and memory usage against allocatable capacity, per-group readiness counts and per-group phase counts for the pods scheduled on them. Rows answer as 'list' under the default k8s.node.name grouping (each row one node with its readiness condition) or 'grouped_list' under a custom groupBy; a metric with no data in the window answers -1. Filterable by expression, orderable by usage or allocatable, paginated by offset and limit.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yPostableNodes] o11yPostableNodes (required):
  Future<Response> postO11yInfraMonitoringNodesWithHttpInfo(O11yPostableNodes o11yPostableNodes,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/infra_monitoring/nodes';

    // ignore: prefer_final_locals
    Object? postBody = o11yPostableNodes;

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

  /// Lists Kubernetes nodes with CPU and memory usage against allocatable capacity, per-group readiness counts and per-group phase counts for the pods scheduled on them.
  ///
  /// Lists Kubernetes nodes with CPU and memory usage against allocatable capacity, per-group readiness counts and per-group phase counts for the pods scheduled on them. Rows answer as 'list' under the default k8s.node.name grouping (each row one node with its readiness condition) or 'grouped_list' under a custom groupBy; a metric with no data in the window answers -1. Filterable by expression, orderable by usage or allocatable, paginated by offset and limit.
  ///
  /// Parameters:
  ///
  /// * [O11yPostableNodes] o11yPostableNodes (required):
  Future<O11yO11yInfraNodesOut?> postO11yInfraMonitoringNodes(O11yPostableNodes o11yPostableNodes,) async {
    final response = await postO11yInfraMonitoringNodesWithHttpInfo(o11yPostableNodes,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraNodesOut',) as O11yO11yInfraNodesOut;
    
    }
    return null;
  }

  /// Lists Kubernetes pods with CPU and memory usage against request and limit, the pod's phase and its age, plus its namespace, node, owning workload and cluster attributes.
  ///
  /// Lists Kubernetes pods with CPU and memory usage against request and limit, the pod's phase and its age, plus its namespace, node, owning workload and cluster attributes. Rows answer as 'list' under the default k8s.pod.uid grouping (each row one pod) or 'grouped_list' under a custom groupBy (each row aggregating its pods with per-phase counts); a metric with no data in the window answers -1. Filterable by expression, orderable by the six pod metrics, paginated by offset and limit.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yPostablePods] o11yPostablePods (required):
  Future<Response> postO11yInfraMonitoringPodsWithHttpInfo(O11yPostablePods o11yPostablePods,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/infra_monitoring/pods';

    // ignore: prefer_final_locals
    Object? postBody = o11yPostablePods;

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

  /// Lists Kubernetes pods with CPU and memory usage against request and limit, the pod's phase and its age, plus its namespace, node, owning workload and cluster attributes.
  ///
  /// Lists Kubernetes pods with CPU and memory usage against request and limit, the pod's phase and its age, plus its namespace, node, owning workload and cluster attributes. Rows answer as 'list' under the default k8s.pod.uid grouping (each row one pod) or 'grouped_list' under a custom groupBy (each row aggregating its pods with per-phase counts); a metric with no data in the window answers -1. Filterable by expression, orderable by the six pod metrics, paginated by offset and limit.
  ///
  /// Parameters:
  ///
  /// * [O11yPostablePods] o11yPostablePods (required):
  Future<O11yO11yInfraPodsOut?> postO11yInfraMonitoringPods(O11yPostablePods o11yPostablePods,) async {
    final response = await postO11yInfraMonitoringPodsWithHttpInfo(o11yPostablePods,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraPodsOut',) as O11yO11yInfraPodsOut;
    
    }
    return null;
  }

  /// Lists Kubernetes persistent volume claims with available, capacity and used bytes and inode counts, plus the claim's pod, namespace, node, statefulset and cluster attributes.
  ///
  /// Lists Kubernetes persistent volume claims with available, capacity and used bytes and inode counts, plus the claim's pod, namespace, node, statefulset and cluster attributes. Rows answer as 'list' under the default k8s.persistentvolumeclaim.name grouping or 'grouped_list' under a custom groupBy; a metric with no data in the window answers -1. Filterable by expression, orderable by the six volume metrics, paginated by offset and limit.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yPostableVolumes] o11yPostableVolumes (required):
  Future<Response> postO11yInfraMonitoringPvcsWithHttpInfo(O11yPostableVolumes o11yPostableVolumes,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/infra_monitoring/pvcs';

    // ignore: prefer_final_locals
    Object? postBody = o11yPostableVolumes;

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

  /// Lists Kubernetes persistent volume claims with available, capacity and used bytes and inode counts, plus the claim's pod, namespace, node, statefulset and cluster attributes.
  ///
  /// Lists Kubernetes persistent volume claims with available, capacity and used bytes and inode counts, plus the claim's pod, namespace, node, statefulset and cluster attributes. Rows answer as 'list' under the default k8s.persistentvolumeclaim.name grouping or 'grouped_list' under a custom groupBy; a metric with no data in the window answers -1. Filterable by expression, orderable by the six volume metrics, paginated by offset and limit.
  ///
  /// Parameters:
  ///
  /// * [O11yPostableVolumes] o11yPostableVolumes (required):
  Future<O11yO11yInfraVolumesOut?> postO11yInfraMonitoringPvcs(O11yPostableVolumes o11yPostableVolumes,) async {
    final response = await postO11yInfraMonitoringPvcsWithHttpInfo(o11yPostableVolumes,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraVolumesOut',) as O11yO11yInfraVolumesOut;
    
    }
    return null;
  }

  /// Lists Kubernetes statefulsets with the CPU and memory their pods used against request and limit, the latest desired and current replica counts, and per-group pod phase counts.
  ///
  /// Lists Kubernetes statefulsets with the CPU and memory their pods used against request and limit, the latest desired and current replica counts, and per-group pod phase counts. Rows answer as 'list' under the default k8s.statefulset.name grouping or 'grouped_list' under a custom groupBy; a metric with no data in the window answers -1. Filterable by expression, orderable by the pod metrics or the replica counts, paginated by offset and limit.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yPostableStatefulSets] o11yPostableStatefulSets (required):
  Future<Response> postO11yInfraMonitoringStatefulsetsWithHttpInfo(O11yPostableStatefulSets o11yPostableStatefulSets,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/infra_monitoring/statefulsets';

    // ignore: prefer_final_locals
    Object? postBody = o11yPostableStatefulSets;

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

  /// Lists Kubernetes statefulsets with the CPU and memory their pods used against request and limit, the latest desired and current replica counts, and per-group pod phase counts.
  ///
  /// Lists Kubernetes statefulsets with the CPU and memory their pods used against request and limit, the latest desired and current replica counts, and per-group pod phase counts. Rows answer as 'list' under the default k8s.statefulset.name grouping or 'grouped_list' under a custom groupBy; a metric with no data in the window answers -1. Filterable by expression, orderable by the pod metrics or the replica counts, paginated by offset and limit.
  ///
  /// Parameters:
  ///
  /// * [O11yPostableStatefulSets] o11yPostableStatefulSets (required):
  Future<O11yO11yInfraStatefulSetsOut?> postO11yInfraMonitoringStatefulsets(O11yPostableStatefulSets o11yPostableStatefulSets,) async {
    final response = await postO11yInfraMonitoringStatefulsetsWithHttpInfo(o11yPostableStatefulSets,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yInfraStatefulSetsOut',) as O11yO11yInfraStatefulSetsOut;
    
    }
    return null;
  }

  /// Lists Kubernetes jobs over a time range, each with the CPU and memory its pods used against request and limit, desired-successful, active, failed and successful pod counts, restarts and attributes; filterable, groupable and paginated.
  ///
  /// Lists Kubernetes jobs over a time range, each with the CPU and memory its pods used against request and limit, desired-successful, active, failed and successful pod counts, restarts and attributes; filterable, groupable and paginated.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yJobListRequest] o11yJobListRequest (required):
  Future<Response> postO11yJobsListWithHttpInfo(O11yJobListRequest o11yJobListRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/jobs/list';

    // ignore: prefer_final_locals
    Object? postBody = o11yJobListRequest;

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

  /// Lists Kubernetes jobs over a time range, each with the CPU and memory its pods used against request and limit, desired-successful, active, failed and successful pod counts, restarts and attributes; filterable, groupable and paginated.
  ///
  /// Lists Kubernetes jobs over a time range, each with the CPU and memory its pods used against request and limit, desired-successful, active, failed and successful pod counts, restarts and attributes; filterable, groupable and paginated.
  ///
  /// Parameters:
  ///
  /// * [O11yJobListRequest] o11yJobListRequest (required):
  Future<O11yO11yJobListOut?> postO11yJobsList(O11yJobListRequest o11yJobListRequest,) async {
    final response = await postO11yJobsListWithHttpInfo(o11yJobListRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yJobListOut',) as O11yO11yJobListOut;
    
    }
    return null;
  }

  /// Lists the grouped exceptions in the query window — each an exception type with its message, count, service and first/last-seen — for the caller's org.
  ///
  /// Lists the grouped exceptions in the query window — each an exception type with its message, count, service and first/last-seen — for the caller's org.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yErrorsListIn] o11yO11yErrorsListIn (required):
  Future<Response> postO11yListerrorsWithHttpInfo(O11yO11yErrorsListIn o11yO11yErrorsListIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/listErrors';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yErrorsListIn;

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

  /// Lists the grouped exceptions in the query window — each an exception type with its message, count, service and first/last-seen — for the caller's org.
  ///
  /// Lists the grouped exceptions in the query window — each an exception type with its message, count, service and first/last-seen — for the caller's org.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yErrorsListIn] o11yO11yErrorsListIn (required):
  Future<List<O11yO11yListError>?> postO11yListerrors(O11yO11yErrorsListIn o11yO11yErrorsListIn,) async {
    final response = await postO11yListerrorsWithHttpInfo(o11yO11yErrorsListIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<O11yO11yListError>') as List)
        .cast<O11yO11yListError>()
        .toList(growable: false);

    }
    return null;
  }

  /// Changes how one log field is stored — selects or deselects it as a materialized column and tunes its index — and echoes the setting back.
  ///
  /// Changes how one log field is stored — selects or deselects it as a materialized column and tunes its index — and echoes the setting back.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yFieldSetting] o11yO11yFieldSetting (required):
  Future<Response> postO11yLogsFieldsWithHttpInfo(O11yO11yFieldSetting o11yO11yFieldSetting,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/logs/fields';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yFieldSetting;

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

  /// Changes how one log field is stored — selects or deselects it as a materialized column and tunes its index — and echoes the setting back.
  ///
  /// Changes how one log field is stored — selects or deselects it as a materialized column and tunes its index — and echoes the setting back.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yFieldSetting] o11yO11yFieldSetting (required):
  Future<O11yO11yFieldSetting?> postO11yLogsFields(O11yO11yFieldSetting o11yO11yFieldSetting,) async {
    final response = await postO11yLogsFieldsWithHttpInfo(o11yO11yFieldSetting,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFieldSetting',) as O11yO11yFieldSetting;
    
    }
    return null;
  }

  /// Saves the given log parsing pipelines as the new config version for the caller's org and starts deploying it.
  ///
  /// Saves the given log parsing pipelines as the new config version for the caller's org and starts deploying it. The set REPLACES the current one: a pipeline left out of the request is dropped from the new version, and an empty set drops them all.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yLogPipelineCreateIn] o11yO11yLogPipelineCreateIn (required):
  Future<Response> postO11yLogsPipelinesWithHttpInfo(O11yO11yLogPipelineCreateIn o11yO11yLogPipelineCreateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/logs/pipelines';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yLogPipelineCreateIn;

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

  /// Saves the given log parsing pipelines as the new config version for the caller's org and starts deploying it.
  ///
  /// Saves the given log parsing pipelines as the new config version for the caller's org and starts deploying it. The set REPLACES the current one: a pipeline left out of the request is dropped from the new version, and an empty set drops them all.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yLogPipelineCreateIn] o11yO11yLogPipelineCreateIn (required):
  Future<O11yO11yLogPipelinesOut?> postO11yLogsPipelines(O11yO11yLogPipelineCreateIn o11yO11yLogPipelineCreateIn,) async {
    final response = await postO11yLogsPipelinesWithHttpInfo(o11yO11yLogPipelineCreateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLogPipelinesOut',) as O11yO11yLogPipelinesOut;
    
    }
    return null;
  }

  /// Runs the given log parsing pipelines over the given sample records without saving anything, and returns the transformed records plus whatever the collector logged while simulating them.
  ///
  /// Runs the given log parsing pipelines over the given sample records without saving anything, and returns the transformed records plus whatever the collector logged while simulating them.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yLogPipelinePreviewIn] o11yO11yLogPipelinePreviewIn (required):
  Future<Response> postO11yLogsPipelinesPreviewWithHttpInfo(O11yO11yLogPipelinePreviewIn o11yO11yLogPipelinePreviewIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/logs/pipelines/preview';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yLogPipelinePreviewIn;

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

  /// Runs the given log parsing pipelines over the given sample records without saving anything, and returns the transformed records plus whatever the collector logged while simulating them.
  ///
  /// Runs the given log parsing pipelines over the given sample records without saving anything, and returns the transformed records plus whatever the collector logged while simulating them.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yLogPipelinePreviewIn] o11yO11yLogPipelinePreviewIn (required):
  Future<O11yO11yLogPipelinePreviewOut?> postO11yLogsPipelinesPreview(O11yO11yLogPipelinePreviewIn o11yO11yLogPipelinePreviewIn,) async {
    final response = await postO11yLogsPipelinesPreviewWithHttpInfo(o11yO11yLogPipelinePreviewIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLogPipelinePreviewOut',) as O11yO11yLogPipelinePreviewOut;
    
    }
    return null;
  }

  /// Promotes and indexes log body paths: each named path is lifted out of the JSON body into its own column, with the indexes the caller asked for.
  ///
  /// Promotes and indexes log body paths: each named path is lifted out of the JSON body into its own column, with the indexes the caller asked for. Paths must start with \"body.\".  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<O11yO11yLogPromotePath>] o11yO11yLogPromotePath (required):
  Future<Response> postO11yLogsPromotePathsWithHttpInfo(List<O11yO11yLogPromotePath> o11yO11yLogPromotePath,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/logs/promote_paths';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yLogPromotePath;

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

  /// Promotes and indexes log body paths: each named path is lifted out of the JSON body into its own column, with the indexes the caller asked for.
  ///
  /// Promotes and indexes log body paths: each named path is lifted out of the JSON body into its own column, with the indexes the caller asked for. Paths must start with \"body.\".  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [List<O11yO11yLogPromotePath>] o11yO11yLogPromotePath (required):
  Future<O11yO11yLogPromoteOut?> postO11yLogsPromotePaths(List<O11yO11yLogPromotePath> o11yO11yLogPromotePath,) async {
    final response = await postO11yLogsPromotePathsWithHttpInfo(o11yO11yLogPromotePath,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yLogPromoteOut',) as O11yO11yLogPromoteOut;
    
    }
    return null;
  }

  /// Returns the consumer side of a consumer-lag view: the consumer groups reading the topic/partition named in variables, with their throughput and latency over the window.
  ///
  /// Returns the consumer side of a consumer-lag view: the consumer groups reading the topic/partition named in variables, with their throughput and latency over the window.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<Response> postO11yMessagingQueuesKafkaConsumerLagConsumerDetailsWithHttpInfo(O11yO11yQueueIn o11yO11yQueueIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/messaging-queues/kafka/consumer-lag/consumer-details';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yQueueIn;

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

  /// Returns the consumer side of a consumer-lag view: the consumer groups reading the topic/partition named in variables, with their throughput and latency over the window.
  ///
  /// Returns the consumer side of a consumer-lag view: the consumer groups reading the topic/partition named in variables, with their throughput and latency over the window.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<O11yO11yQueryRangeOut?> postO11yMessagingQueuesKafkaConsumerLagConsumerDetails(O11yO11yQueueIn o11yO11yQueueIn,) async {
    final response = await postO11yMessagingQueuesKafkaConsumerLagConsumerDetailsWithHttpInfo(o11yO11yQueueIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yQueryRangeOut',) as O11yO11yQueryRangeOut;
    
    }
    return null;
  }

  /// Returns consumer network latency correlated per client: a throughput pass over the window finds the consumer clients, then their fetch latency joins in as a latency column per client/instance/service.
  ///
  /// Returns consumer network latency correlated per client: a throughput pass over the window finds the consumer clients, then their fetch latency joins in as a latency column per client/instance/service.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<Response> postO11yMessagingQueuesKafkaConsumerLagNetworkLatencyWithHttpInfo(O11yO11yQueueIn o11yO11yQueueIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/messaging-queues/kafka/consumer-lag/network-latency';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yQueueIn;

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

  /// Returns consumer network latency correlated per client: a throughput pass over the window finds the consumer clients, then their fetch latency joins in as a latency column per client/instance/service.
  ///
  /// Returns consumer network latency correlated per client: a throughput pass over the window finds the consumer clients, then their fetch latency joins in as a latency column per client/instance/service.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<O11yO11yQueryRangeOut?> postO11yMessagingQueuesKafkaConsumerLagNetworkLatency(O11yO11yQueueIn o11yO11yQueueIn,) async {
    final response = await postO11yMessagingQueuesKafkaConsumerLagNetworkLatencyWithHttpInfo(o11yO11yQueueIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yQueryRangeOut',) as O11yO11yQueryRangeOut;
    
    }
    return null;
  }

  /// Returns the producer side of a consumer-lag view: the producers writing to the topic/partition named in variables, with their throughput and latency over the window.
  ///
  /// Returns the producer side of a consumer-lag view: the producers writing to the topic/partition named in variables, with their throughput and latency over the window.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<Response> postO11yMessagingQueuesKafkaConsumerLagProducerDetailsWithHttpInfo(O11yO11yQueueIn o11yO11yQueueIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/messaging-queues/kafka/consumer-lag/producer-details';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yQueueIn;

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

  /// Returns the producer side of a consumer-lag view: the producers writing to the topic/partition named in variables, with their throughput and latency over the window.
  ///
  /// Returns the producer side of a consumer-lag view: the producers writing to the topic/partition named in variables, with their throughput and latency over the window.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<O11yO11yQueryRangeOut?> postO11yMessagingQueuesKafkaConsumerLagProducerDetails(O11yO11yQueueIn o11yO11yQueueIn,) async {
    final response = await postO11yMessagingQueuesKafkaConsumerLagProducerDetailsWithHttpInfo(o11yO11yQueueIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yQueryRangeOut',) as O11yO11yQueryRangeOut;
    
    }
    return null;
  }

  /// Checks whether the spans the Kafka consumer views need are arriving, row for row like producersOnboarding.
  ///
  /// Checks whether the spans the Kafka consumer views need are arriving, row for row like producersOnboarding.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<Response> postO11yMessagingQueuesKafkaOnboardingConsumersWithHttpInfo(O11yO11yQueueIn o11yO11yQueueIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/messaging-queues/kafka/onboarding/consumers';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yQueueIn;

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

  /// Checks whether the spans the Kafka consumer views need are arriving, row for row like producersOnboarding.
  ///
  /// Checks whether the spans the Kafka consumer views need are arriving, row for row like producersOnboarding.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<O11yO11yQueueChecksOut?> postO11yMessagingQueuesKafkaOnboardingConsumers(O11yO11yQueueIn o11yO11yQueueIn,) async {
    final response = await postO11yMessagingQueuesKafkaOnboardingConsumersWithHttpInfo(o11yO11yQueueIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yQueueChecksOut',) as O11yO11yQueueChecksOut;
    
    }
    return null;
  }

  /// Checks whether Kafka's own metrics — consumer lag and partition telemetry — are arriving, so the lag views can be lit up.
  ///
  /// Checks whether Kafka's own metrics — consumer lag and partition telemetry — are arriving, so the lag views can be lit up.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<Response> postO11yMessagingQueuesKafkaOnboardingKafkaWithHttpInfo(O11yO11yQueueIn o11yO11yQueueIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/messaging-queues/kafka/onboarding/kafka';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yQueueIn;

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

  /// Checks whether Kafka's own metrics — consumer lag and partition telemetry — are arriving, so the lag views can be lit up.
  ///
  /// Checks whether Kafka's own metrics — consumer lag and partition telemetry — are arriving, so the lag views can be lit up.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<O11yO11yQueueChecksOut?> postO11yMessagingQueuesKafkaOnboardingKafka(O11yO11yQueueIn o11yO11yQueueIn,) async {
    final response = await postO11yMessagingQueuesKafkaOnboardingKafkaWithHttpInfo(o11yO11yQueueIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yQueueChecksOut',) as O11yO11yQueueChecksOut;
    
    }
    return null;
  }

  /// Checks whether the spans the Kafka producer views need are arriving — one row per required span attribute, with a pass/fail status and, on failure, what is missing from the instrumentation.
  ///
  /// Checks whether the spans the Kafka producer views need are arriving — one row per required span attribute, with a pass/fail status and, on failure, what is missing from the instrumentation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<Response> postO11yMessagingQueuesKafkaOnboardingProducersWithHttpInfo(O11yO11yQueueIn o11yO11yQueueIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/messaging-queues/kafka/onboarding/producers';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yQueueIn;

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

  /// Checks whether the spans the Kafka producer views need are arriving — one row per required span attribute, with a pass/fail status and, on failure, what is missing from the instrumentation.
  ///
  /// Checks whether the spans the Kafka producer views need are arriving — one row per required span attribute, with a pass/fail status and, on failure, what is missing from the instrumentation.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<O11yO11yQueueChecksOut?> postO11yMessagingQueuesKafkaOnboardingProducers(O11yO11yQueueIn o11yO11yQueueIn,) async {
    final response = await postO11yMessagingQueuesKafkaOnboardingProducersWithHttpInfo(o11yO11yQueueIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yQueueChecksOut',) as O11yO11yQueueChecksOut;
    
    }
    return null;
  }

  /// Returns the consumer-group latency detail for the topic and partition named in the request's variables.
  ///
  /// Returns the consumer-group latency detail for the topic and partition named in the request's variables.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<Response> postO11yMessagingQueuesKafkaPartitionLatencyConsumerWithHttpInfo(O11yO11yQueueIn o11yO11yQueueIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/messaging-queues/kafka/partition-latency/consumer';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yQueueIn;

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

  /// Returns the consumer-group latency detail for the topic and partition named in the request's variables.
  ///
  /// Returns the consumer-group latency detail for the topic and partition named in the request's variables.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<O11yO11yQueryRangeOut?> postO11yMessagingQueuesKafkaPartitionLatencyConsumer(O11yO11yQueueIn o11yO11yQueueIn,) async {
    final response = await postO11yMessagingQueuesKafkaPartitionLatencyConsumerWithHttpInfo(o11yO11yQueueIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yQueryRangeOut',) as O11yO11yQueryRangeOut;
    
    }
    return null;
  }

  /// Returns the per-partition latency overview for the window — each topic/partition with its throughput and latency profile.
  ///
  /// Returns the per-partition latency overview for the window — each topic/partition with its throughput and latency profile.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<Response> postO11yMessagingQueuesKafkaPartitionLatencyOverviewWithHttpInfo(O11yO11yQueueIn o11yO11yQueueIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/messaging-queues/kafka/partition-latency/overview';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yQueueIn;

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

  /// Returns the per-partition latency overview for the window — each topic/partition with its throughput and latency profile.
  ///
  /// Returns the per-partition latency overview for the window — each topic/partition with its throughput and latency profile.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<O11yO11yQueryRangeOut?> postO11yMessagingQueuesKafkaPartitionLatencyOverview(O11yO11yQueueIn o11yO11yQueueIn,) async {
    final response = await postO11yMessagingQueuesKafkaPartitionLatencyOverviewWithHttpInfo(o11yO11yQueueIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yQueryRangeOut',) as O11yO11yQueryRangeOut;
    
    }
    return null;
  }

  /// Correlates producer and consumer spans over the evaluation window (eval_time bounds the scan) and returns the pairings with their end-to-end delay — the check that messages produced are being consumed.
  ///
  /// Correlates producer and consumer spans over the evaluation window (eval_time bounds the scan) and returns the pairings with their end-to-end delay — the check that messages produced are being consumed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<Response> postO11yMessagingQueuesKafkaSpanEvaluationWithHttpInfo(O11yO11yQueueIn o11yO11yQueueIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/messaging-queues/kafka/span/evaluation';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yQueueIn;

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

  /// Correlates producer and consumer spans over the evaluation window (eval_time bounds the scan) and returns the pairings with their end-to-end delay — the check that messages produced are being consumed.
  ///
  /// Correlates producer and consumer spans over the evaluation window (eval_time bounds the scan) and returns the pairings with their end-to-end delay — the check that messages produced are being consumed.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<O11yO11yQueryRangeOut?> postO11yMessagingQueuesKafkaSpanEvaluation(O11yO11yQueueIn o11yO11yQueueIn,) async {
    final response = await postO11yMessagingQueuesKafkaSpanEvaluationWithHttpInfo(o11yO11yQueueIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yQueryRangeOut',) as O11yO11yQueryRangeOut;
    
    }
    return null;
  }

  /// Returns the consumer topic-throughput overview for the window — what each consumer group read, per topic.
  ///
  /// Returns the consumer topic-throughput overview for the window — what each consumer group read, per topic.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<Response> postO11yMessagingQueuesKafkaTopicThroughputConsumerWithHttpInfo(O11yO11yQueueIn o11yO11yQueueIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/messaging-queues/kafka/topic-throughput/consumer';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yQueueIn;

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

  /// Returns the consumer topic-throughput overview for the window — what each consumer group read, per topic.
  ///
  /// Returns the consumer topic-throughput overview for the window — what each consumer group read, per topic.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<O11yO11yQueryRangeOut?> postO11yMessagingQueuesKafkaTopicThroughputConsumer(O11yO11yQueueIn o11yO11yQueueIn,) async {
    final response = await postO11yMessagingQueuesKafkaTopicThroughputConsumerWithHttpInfo(o11yO11yQueueIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yQueryRangeOut',) as O11yO11yQueryRangeOut;
    
    }
    return null;
  }

  /// Breaks one consumer topic's throughput down using the topic and service named in variables.
  ///
  /// Breaks one consumer topic's throughput down using the topic and service named in variables.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<Response> postO11yMessagingQueuesKafkaTopicThroughputConsumerDetailsWithHttpInfo(O11yO11yQueueIn o11yO11yQueueIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/messaging-queues/kafka/topic-throughput/consumer-details';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yQueueIn;

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

  /// Breaks one consumer topic's throughput down using the topic and service named in variables.
  ///
  /// Breaks one consumer topic's throughput down using the topic and service named in variables.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<O11yO11yQueryRangeOut?> postO11yMessagingQueuesKafkaTopicThroughputConsumerDetails(O11yO11yQueueIn o11yO11yQueueIn,) async {
    final response = await postO11yMessagingQueuesKafkaTopicThroughputConsumerDetailsWithHttpInfo(o11yO11yQueueIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yQueryRangeOut',) as O11yO11yQueryRangeOut;
    
    }
    return null;
  }

  /// Returns the producer topic-throughput overview for the window — what each producer service wrote, per topic.
  ///
  /// Returns the producer topic-throughput overview for the window — what each producer service wrote, per topic.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<Response> postO11yMessagingQueuesKafkaTopicThroughputProducerWithHttpInfo(O11yO11yQueueIn o11yO11yQueueIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/messaging-queues/kafka/topic-throughput/producer';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yQueueIn;

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

  /// Returns the producer topic-throughput overview for the window — what each producer service wrote, per topic.
  ///
  /// Returns the producer topic-throughput overview for the window — what each producer service wrote, per topic.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<O11yO11yQueryRangeOut?> postO11yMessagingQueuesKafkaTopicThroughputProducer(O11yO11yQueueIn o11yO11yQueueIn,) async {
    final response = await postO11yMessagingQueuesKafkaTopicThroughputProducerWithHttpInfo(o11yO11yQueueIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yQueryRangeOut',) as O11yO11yQueryRangeOut;
    
    }
    return null;
  }

  /// Breaks one producer topic's throughput down using the topic and service named in variables.
  ///
  /// Breaks one producer topic's throughput down using the topic and service named in variables.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<Response> postO11yMessagingQueuesKafkaTopicThroughputProducerDetailsWithHttpInfo(O11yO11yQueueIn o11yO11yQueueIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/messaging-queues/kafka/topic-throughput/producer-details';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yQueueIn;

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

  /// Breaks one producer topic's throughput down using the topic and service named in variables.
  ///
  /// Breaks one producer topic's throughput down using the topic and service named in variables.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueIn] o11yO11yQueueIn (required):
  Future<O11yO11yQueryRangeOut?> postO11yMessagingQueuesKafkaTopicThroughputProducerDetails(O11yO11yQueueIn o11yO11yQueueIn,) async {
    final response = await postO11yMessagingQueuesKafkaTopicThroughputProducerDetailsWithHttpInfo(o11yO11yQueueIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yQueryRangeOut',) as O11yO11yQueryRangeOut;
    
    }
    return null;
  }

  /// Lists the messaging destinations observed in the window — one row per queue/destination/service combination with its throughput and latency columns.
  ///
  /// Lists the messaging destinations observed in the window — one row per queue/destination/service combination with its throughput and latency columns. Filters narrow by queue system, destination, service or any span attribute.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueListIn] o11yO11yQueueListIn (required):
  Future<Response> postO11yMessagingQueuesQueueOverviewWithHttpInfo(O11yO11yQueueListIn o11yO11yQueueListIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/messaging-queues/queue-overview';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yQueueListIn;

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

  /// Lists the messaging destinations observed in the window — one row per queue/destination/service combination with its throughput and latency columns.
  ///
  /// Lists the messaging destinations observed in the window — one row per queue/destination/service combination with its throughput and latency columns. Filters narrow by queue system, destination, service or any span attribute.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueueListIn] o11yO11yQueueListIn (required):
  Future<O11yO11yQueueRowsOut?> postO11yMessagingQueuesQueueOverview(O11yO11yQueueListIn o11yO11yQueueListIn,) async {
    final response = await postO11yMessagingQueuesQueueOverviewWithHttpInfo(o11yO11yQueueListIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yQueueRowsOut',) as O11yO11yQueueRowsOut;
    
    }
    return null;
  }

  /// Lists Kubernetes namespaces over a time range, each with the CPU and memory its pods used, their phase counts and its attributes; filterable, groupable and paginated.
  ///
  /// Lists Kubernetes namespaces over a time range, each with the CPU and memory its pods used, their phase counts and its attributes; filterable, groupable and paginated.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yNamespaceListRequest] o11yNamespaceListRequest (required):
  Future<Response> postO11yNamespacesListWithHttpInfo(O11yNamespaceListRequest o11yNamespaceListRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/namespaces/list';

    // ignore: prefer_final_locals
    Object? postBody = o11yNamespaceListRequest;

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

  /// Lists Kubernetes namespaces over a time range, each with the CPU and memory its pods used, their phase counts and its attributes; filterable, groupable and paginated.
  ///
  /// Lists Kubernetes namespaces over a time range, each with the CPU and memory its pods used, their phase counts and its attributes; filterable, groupable and paginated.
  ///
  /// Parameters:
  ///
  /// * [O11yNamespaceListRequest] o11yNamespaceListRequest (required):
  Future<O11yO11yNamespaceListOut?> postO11yNamespacesList(O11yNamespaceListRequest o11yNamespaceListRequest,) async {
    final response = await postO11yNamespacesListWithHttpInfo(o11yNamespaceListRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yNamespaceListOut',) as O11yO11yNamespaceListOut;
    
    }
    return null;
  }

  /// Lists Kubernetes nodes over a time range, each with its CPU and memory usage against allocatable capacity, readiness condition counts and attributes; filterable, groupable and paginated.
  ///
  /// Lists Kubernetes nodes over a time range, each with its CPU and memory usage against allocatable capacity, readiness condition counts and attributes; filterable, groupable and paginated.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yNodeListRequest] o11yNodeListRequest (required):
  Future<Response> postO11yNodesListWithHttpInfo(O11yNodeListRequest o11yNodeListRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/nodes/list';

    // ignore: prefer_final_locals
    Object? postBody = o11yNodeListRequest;

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

  /// Lists Kubernetes nodes over a time range, each with its CPU and memory usage against allocatable capacity, readiness condition counts and attributes; filterable, groupable and paginated.
  ///
  /// Lists Kubernetes nodes over a time range, each with its CPU and memory usage against allocatable capacity, readiness condition counts and attributes; filterable, groupable and paginated.
  ///
  /// Parameters:
  ///
  /// * [O11yNodeListRequest] o11yNodeListRequest (required):
  Future<O11yO11yNodeListOut?> postO11yNodesList(O11yNodeListRequest o11yNodeListRequest,) async {
    final response = await postO11yNodesListWithHttpInfo(o11yNodeListRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yNodeListOut',) as O11yO11yNodeListOut;
    
    }
    return null;
  }

  /// Lists Kubernetes pods over a time range, each with its CPU and memory usage against request and limit, restart count, phase counts and attributes; filterable, groupable and paginated.
  ///
  /// Lists Kubernetes pods over a time range, each with its CPU and memory usage against request and limit, restart count, phase counts and attributes; filterable, groupable and paginated.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yPodListRequest] o11yPodListRequest (required):
  Future<Response> postO11yPodsListWithHttpInfo(O11yPodListRequest o11yPodListRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/pods/list';

    // ignore: prefer_final_locals
    Object? postBody = o11yPodListRequest;

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

  /// Lists Kubernetes pods over a time range, each with its CPU and memory usage against request and limit, restart count, phase counts and attributes; filterable, groupable and paginated.
  ///
  /// Lists Kubernetes pods over a time range, each with its CPU and memory usage against request and limit, restart count, phase counts and attributes; filterable, groupable and paginated.
  ///
  /// Parameters:
  ///
  /// * [O11yPodListRequest] o11yPodListRequest (required):
  Future<O11yO11yPodListOut?> postO11yPodsList(O11yPodListRequest o11yPodListRequest,) async {
    final response = await postO11yPodsListWithHttpInfo(o11yPodListRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yPodListOut',) as O11yO11yPodListOut;
    
    }
    return null;
  }

  /// Lists monitored processes over a time range, each with its name, PID, command line and CPU and memory usage; filterable, groupable and paginated.
  ///
  /// Lists monitored processes over a time range, each with its name, PID, command line and CPU and memory usage; filterable, groupable and paginated.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yProcessListRequest] o11yProcessListRequest (required):
  Future<Response> postO11yProcessesListWithHttpInfo(O11yProcessListRequest o11yProcessListRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/processes/list';

    // ignore: prefer_final_locals
    Object? postBody = o11yProcessListRequest;

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

  /// Lists monitored processes over a time range, each with its name, PID, command line and CPU and memory usage; filterable, groupable and paginated.
  ///
  /// Lists monitored processes over a time range, each with its name, PID, command line and CPU and memory usage; filterable, groupable and paginated.
  ///
  /// Parameters:
  ///
  /// * [O11yProcessListRequest] o11yProcessListRequest (required):
  Future<O11yO11yProcessListOut?> postO11yProcessesList(O11yProcessListRequest o11yProcessListRequest,) async {
    final response = await postO11yProcessesListWithHttpInfo(o11yProcessListRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yProcessListOut',) as O11yO11yProcessListOut;
    
    }
    return null;
  }

  /// Lists Kubernetes persistent volume claims over a time range, each with its available, capacity and used bytes, inode counts and attributes; filterable, groupable and paginated.
  ///
  /// Lists Kubernetes persistent volume claims over a time range, each with its available, capacity and used bytes, inode counts and attributes; filterable, groupable and paginated.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yVolumeListRequest] o11yVolumeListRequest (required):
  Future<Response> postO11yPvcsListWithHttpInfo(O11yVolumeListRequest o11yVolumeListRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/pvcs/list';

    // ignore: prefer_final_locals
    Object? postBody = o11yVolumeListRequest;

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

  /// Lists Kubernetes persistent volume claims over a time range, each with its available, capacity and used bytes, inode counts and attributes; filterable, groupable and paginated.
  ///
  /// Lists Kubernetes persistent volume claims over a time range, each with its available, capacity and used bytes, inode counts and attributes; filterable, groupable and paginated.
  ///
  /// Parameters:
  ///
  /// * [O11yVolumeListRequest] o11yVolumeListRequest (required):
  Future<O11yO11yPvcListOut?> postO11yPvcsList(O11yVolumeListRequest o11yVolumeListRequest,) async {
    final response = await postO11yPvcsListWithHttpInfo(o11yVolumeListRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yPvcListOut',) as O11yO11yPvcListOut;
    
    }
    return null;
  }

  /// Analyzes a query and extracts the metric names it reads and the columns it groups by.
  ///
  /// Analyzes a query and extracts the metric names it reads and the columns it groups by.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yAnalyzeIn] o11yO11yAnalyzeIn (required):
  Future<Response> postO11yQueryFilterAnalyzeWithHttpInfo(O11yO11yAnalyzeIn o11yO11yAnalyzeIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/query_filter/analyze';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yAnalyzeIn;

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

  /// Analyzes a query and extracts the metric names it reads and the columns it groups by.
  ///
  /// Analyzes a query and extracts the metric names it reads and the columns it groups by.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yAnalyzeIn] o11yO11yAnalyzeIn (required):
  Future<O11yO11yAnalyzeOut?> postO11yQueryFilterAnalyze(O11yO11yAnalyzeIn o11yO11yAnalyzeIn,) async {
    final response = await postO11yQueryFilterAnalyzeWithHttpInfo(o11yO11yAnalyzeIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yAnalyzeOut',) as O11yO11yAnalyzeOut;
    
    }
    return null;
  }

  /// Executes a composite query over a time range: builder queries over traces, logs and metrics, formulas, trace operators, PromQL and Datastore SQL, answering time series, scalars or raw records as the request type asks.
  ///
  /// Executes a composite query over a time range: builder queries over traces, logs and metrics, formulas, trace operators, PromQL and Datastore SQL, answering time series, scalars or raw records as the request type asks.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yQueryRangeRequest] o11yQueryRangeRequest (required):
  Future<Response> postO11yQueryRangeWithHttpInfo(O11yQueryRangeRequest o11yQueryRangeRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/query_range';

    // ignore: prefer_final_locals
    Object? postBody = o11yQueryRangeRequest;

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

  /// Executes a composite query over a time range: builder queries over traces, logs and metrics, formulas, trace operators, PromQL and Datastore SQL, answering time series, scalars or raw records as the request type asks.
  ///
  /// Executes a composite query over a time range: builder queries over traces, logs and metrics, formulas, trace operators, PromQL and Datastore SQL, answering time series, scalars or raw records as the request type asks.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yQueryRangeRequest] o11yQueryRangeRequest (required):
  Future<O11yO11yQueryRangeOut?> postO11yQueryRange(O11yQueryRangeRequest o11yQueryRangeRequest,) async {
    final response = await postO11yQueryRangeWithHttpInfo(o11yQueryRangeRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yQueryRangeOut',) as O11yO11yQueryRangeOut;
    
    }
    return null;
  }

  /// Parses a builder query and echoes it back normalized to the v3 shape — the endpoint the UI uses to canonicalize a query without running it.
  ///
  /// Parses a builder query and echoes it back normalized to the v3 shape — the endpoint the UI uses to canonicalize a query without running it.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yQueryRangeParamsV3] o11yQueryRangeParamsV3 (required):
  Future<Response> postO11yQueryRangeFormatWithHttpInfo(O11yQueryRangeParamsV3 o11yQueryRangeParamsV3,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/query_range/format';

    // ignore: prefer_final_locals
    Object? postBody = o11yQueryRangeParamsV3;

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

  /// Parses a builder query and echoes it back normalized to the v3 shape — the endpoint the UI uses to canonicalize a query without running it.
  ///
  /// Parses a builder query and echoes it back normalized to the v3 shape — the endpoint the UI uses to canonicalize a query without running it.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yQueryRangeParamsV3] o11yQueryRangeParamsV3 (required):
  Future<O11yO11yQueryRangeFormatOut?> postO11yQueryRangeFormat(O11yQueryRangeParamsV3 o11yQueryRangeParamsV3,) async {
    final response = await postO11yQueryRangeFormatWithHttpInfo(o11yQueryRangeParamsV3,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yQueryRangeFormatOut',) as O11yO11yQueryRangeFormatOut;
    
    }
    return null;
  }

  /// Validates a composite query and renders the Datastore statements it would run WITHOUT executing it — a dry run for agentic and tooling use.
  ///
  /// Validates a composite query and renders the Datastore statements it would run WITHOUT executing it — a dry run for agentic and tooling use. verbose=false trades the rendered SQL and EXPLAIN for a lightweight per-query verdict.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueryRangePreviewIn] o11yO11yQueryRangePreviewIn (required):
  Future<Response> postO11yQueryRangePreviewWithHttpInfo(O11yO11yQueryRangePreviewIn o11yO11yQueryRangePreviewIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/query_range/preview';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yQueryRangePreviewIn;

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

  /// Validates a composite query and renders the Datastore statements it would run WITHOUT executing it — a dry run for agentic and tooling use.
  ///
  /// Validates a composite query and renders the Datastore statements it would run WITHOUT executing it — a dry run for agentic and tooling use. verbose=false trades the rendered SQL and EXPLAIN for a lightweight per-query verdict.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yQueryRangePreviewIn] o11yO11yQueryRangePreviewIn (required):
  Future<O11yO11yQueryRangePreviewOut?> postO11yQueryRangePreview(O11yO11yQueryRangePreviewIn o11yO11yQueryRangePreviewIn,) async {
    final response = await postO11yQueryRangePreviewWithHttpInfo(o11yO11yQueryRangePreviewIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yQueryRangePreviewOut',) as O11yO11yQueryRangePreviewOut;
    
    }
    return null;
  }

  /// Creates the FIRST organization and its admin user.
  ///
  /// Creates the FIRST organization and its admin user. It is open by design — there is nobody to be signed in as yet — and refuses once setup has completed, after which new users arrive by invitation only.  Open by design; the runtime's own gate is OpenAccess.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yRegisterIn] o11yO11yRegisterIn (required):
  Future<Response> postO11yRegisterWithHttpInfo(O11yO11yRegisterIn o11yO11yRegisterIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/register';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yRegisterIn;

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

  /// Creates the FIRST organization and its admin user.
  ///
  /// Creates the FIRST organization and its admin user. It is open by design — there is nobody to be signed in as yet — and refuses once setup has completed, after which new users arrive by invitation only.  Open by design; the runtime's own gate is OpenAccess.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yRegisterIn] o11yO11yRegisterIn (required):
  Future<O11yO11yRegisterOut?> postO11yRegister(O11yO11yRegisterIn o11yO11yRegisterIn,) async {
    final response = await postO11yRegisterWithHttpInfo(o11yO11yRegisterIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRegisterOut',) as O11yO11yRegisterOut;
    
    }
    return null;
  }

  /// Creates a human-review queue in the caller's org and project.
  ///
  /// Creates a human-review queue in the caller's org and project. A name already used by another queue in the same project is a 409.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yCreateQueueReq] o11yCreateQueueReq (required):
  Future<Response> postO11yReviewsWithHttpInfo(O11yCreateQueueReq o11yCreateQueueReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/reviews';

    // ignore: prefer_final_locals
    Object? postBody = o11yCreateQueueReq;

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

  /// Creates a human-review queue in the caller's org and project.
  ///
  /// Creates a human-review queue in the caller's org and project. A name already used by another queue in the same project is a 409.
  ///
  /// Parameters:
  ///
  /// * [O11yCreateQueueReq] o11yCreateQueueReq (required):
  Future<O11yAnnQueueView?> postO11yReviews(O11yCreateQueueReq o11yCreateQueueReq,) async {
    final response = await postO11yReviewsWithHttpInfo(o11yCreateQueueReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yAnnQueueView',) as O11yAnnQueueView;
    
    }
    return null;
  }

  /// Enqueues traces, observations or sessions on a review queue.
  ///
  /// Enqueues traces, observations or sessions on a review queue. Each item names exactly one object, either by traceId / observationId / sessionId or by objectType plus objectId; every item enters PENDING. A queue id belonging to another org is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the annotation queue to add to, from the path.
  ///
  /// * [O11yAddItemsIn] o11yAddItemsIn (required):
  Future<Response> postO11yReviewsByIdItemsWithHttpInfo(String id, O11yAddItemsIn o11yAddItemsIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/reviews/{id}/items'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yAddItemsIn;

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

  /// Enqueues traces, observations or sessions on a review queue.
  ///
  /// Enqueues traces, observations or sessions on a review queue. Each item names exactly one object, either by traceId / observationId / sessionId or by objectType plus objectId; every item enters PENDING. A queue id belonging to another org is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the annotation queue to add to, from the path.
  ///
  /// * [O11yAddItemsIn] o11yAddItemsIn (required):
  Future<O11yAnnItemsCreated?> postO11yReviewsByIdItems(String id, O11yAddItemsIn o11yAddItemsIn,) async {
    final response = await postO11yReviewsByIdItemsWithHttpInfo(id, o11yAddItemsIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yAnnItemsCreated',) as O11yAnnItemsCreated;
    
    }
    return null;
  }

  /// Aggregates a project's captured errors into a table — the caller names the filters, the groupings and the aggregations, and gets back the columns and rows they asked for.
  ///
  /// Aggregates a project's captured errors into a table — the caller names the filters, the groupings and the aggregations, and gets back the columns and rows they asked for.  The project is mandatory and is checked against the caller's own org before it scopes anything, so a project id belonging to someone else reads as absent rather than as data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDiscoverIn] o11yO11yDiscoverIn (required):
  Future<Response> postO11ySentinelDiscoverWithHttpInfo(O11yO11yDiscoverIn o11yO11yDiscoverIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/sentinel/discover';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yDiscoverIn;

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

  /// Aggregates a project's captured errors into a table — the caller names the filters, the groupings and the aggregations, and gets back the columns and rows they asked for.
  ///
  /// Aggregates a project's captured errors into a table — the caller names the filters, the groupings and the aggregations, and gets back the columns and rows they asked for.  The project is mandatory and is checked against the caller's own org before it scopes anything, so a project id belonging to someone else reads as absent rather than as data.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDiscoverIn] o11yO11yDiscoverIn (required):
  Future<O11yO11yDiscoverOut?> postO11ySentinelDiscover(O11yO11yDiscoverIn o11yO11yDiscoverIn,) async {
    final response = await postO11ySentinelDiscoverWithHttpInfo(o11yO11yDiscoverIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDiscoverOut',) as O11yO11yDiscoverOut;
    
    }
    return null;
  }

  /// Creates a Sentry project under the caller's org and returns it, DSN included.
  ///
  /// Creates a Sentry project under the caller's org and returns it, DSN included. Only the name, and optionally a slug and platform, are the caller's to set; the org, id and key are server-assigned.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11ySentryPostableProject] o11yO11ySentryPostableProject (required):
  Future<Response> postO11ySentinelProjectsWithHttpInfo(O11yO11ySentryPostableProject o11yO11ySentryPostableProject,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/sentinel/projects';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11ySentryPostableProject;

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

  /// Creates a Sentry project under the caller's org and returns it, DSN included.
  ///
  /// Creates a Sentry project under the caller's org and returns it, DSN included. Only the name, and optionally a slug and platform, are the caller's to set; the org, id and key are server-assigned.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11ySentryPostableProject] o11yO11ySentryPostableProject (required):
  Future<O11yO11ySentryProjectOut?> postO11ySentinelProjects(O11yO11ySentryPostableProject o11yO11ySentryPostableProject,) async {
    final response = await postO11ySentinelProjectsWithHttpInfo(o11yO11ySentryPostableProject,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySentryProjectOut',) as O11yO11ySentryProjectOut;
    
    }
    return null;
  }

  /// Rotates a project's DSN key — bumping its rotation watermark so keys below it stop verifying — and returns the project with its new DSN.
  ///
  /// Rotates a project's DSN key — bumping its rotation watermark so keys below it stop verifying — and returns the project with its new DSN.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the project id.
  Future<Response> postO11ySentinelProjectsByIdKeysRotateWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/sentinel/projects/{id}/keys/rotate'
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

  /// Rotates a project's DSN key — bumping its rotation watermark so keys below it stop verifying — and returns the project with its new DSN.
  ///
  /// Rotates a project's DSN key — bumping its rotation watermark so keys below it stop verifying — and returns the project with its new DSN.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the project id.
  Future<O11yO11ySentryProjectOut?> postO11ySentinelProjectsByIdKeysRotate(String id,) async {
    final response = await postO11ySentinelProjectsByIdKeysRotateWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySentryProjectOut',) as O11yO11ySentryProjectOut;
    
    }
    return null;
  }

  /// Returns one service's entry-point operations with the same latency and error profile topOperations reports.
  ///
  /// Returns one service's entry-point operations with the same latency and error profile topOperations reports.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yOperationsIn] o11yO11yOperationsIn (required):
  Future<Response> postO11yServiceEntryPointOperationsWithHttpInfo(O11yO11yOperationsIn o11yO11yOperationsIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/service/entry_point_operations';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yOperationsIn;

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

  /// Returns one service's entry-point operations with the same latency and error profile topOperations reports.
  ///
  /// Returns one service's entry-point operations with the same latency and error profile topOperations reports.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yOperationsIn] o11yO11yOperationsIn (required):
  Future<O11yO11yOperationsOut?> postO11yServiceEntryPointOperations(O11yO11yOperationsIn o11yO11yOperationsIn,) async {
    final response = await postO11yServiceEntryPointOperationsWithHttpInfo(o11yO11yOperationsIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yOperationsOut',) as O11yO11yOperationsOut;
    
    }
    return null;
  }

  /// Maps each service to its entry-point span names — for the one service named in the request, or for every service when none is.
  ///
  /// Maps each service to its entry-point span names — for the one service named in the request, or for every service when none is.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yTopLevelOpsIn] o11yO11yTopLevelOpsIn (required):
  Future<Response> postO11yServiceTopLevelOperationsWithHttpInfo(O11yO11yTopLevelOpsIn o11yO11yTopLevelOpsIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/service/top_level_operations';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yTopLevelOpsIn;

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

  /// Maps each service to its entry-point span names — for the one service named in the request, or for every service when none is.
  ///
  /// Maps each service to its entry-point span names — for the one service named in the request, or for every service when none is.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yTopLevelOpsIn] o11yO11yTopLevelOpsIn (required):
  Future<Map<String, List<String>>?> postO11yServiceTopLevelOperations(O11yO11yTopLevelOpsIn o11yO11yTopLevelOpsIn,) async {
    final response = await postO11yServiceTopLevelOperationsWithHttpInfo(o11yO11yTopLevelOpsIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, List<String>>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, List<String>>'),);

    }
    return null;
  }

  /// Returns one service's heaviest operations in the window, each with p50/p95/p99 latency, how often it ran and how often it errored.
  ///
  /// Returns one service's heaviest operations in the window, each with p50/p95/p99 latency, how often it ran and how often it errored.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yOperationsIn] o11yO11yOperationsIn (required):
  Future<Response> postO11yServiceTopOperationsWithHttpInfo(O11yO11yOperationsIn o11yO11yOperationsIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/service/top_operations';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yOperationsIn;

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

  /// Returns one service's heaviest operations in the window, each with p50/p95/p99 latency, how often it ran and how often it errored.
  ///
  /// Returns one service's heaviest operations in the window, each with p50/p95/p99 latency, how often it ran and how often it errored.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yOperationsIn] o11yO11yOperationsIn (required):
  Future<O11yO11yOperationsOut?> postO11yServiceTopOperations(O11yO11yOperationsIn o11yO11yOperationsIn,) async {
    final response = await postO11yServiceTopOperationsWithHttpInfo(o11yO11yOperationsIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yOperationsOut',) as O11yO11yOperationsOut;
    
    }
    return null;
  }

  /// Lists the instrumented services seen in the window, each with the request profile of its entry-point spans: p99 and average latency, call and error rates, and the entry-point operations the numbers were computed over.
  ///
  /// Lists the instrumented services seen in the window, each with the request profile of its entry-point spans: p99 and average latency, call and error rates, and the entry-point operations the numbers were computed over.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yServicesIn] o11yO11yServicesIn (required):
  Future<Response> postO11yServicesWithHttpInfo(O11yO11yServicesIn o11yO11yServicesIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/services';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yServicesIn;

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

  /// Lists the instrumented services seen in the window, each with the request profile of its entry-point spans: p99 and average latency, call and error rates, and the entry-point operations the numbers were computed over.
  ///
  /// Lists the instrumented services seen in the window, each with the request profile of its entry-point spans: p99 and average latency, call and error rates, and the entry-point operations the numbers were computed over.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yServicesIn] o11yO11yServicesIn (required):
  Future<O11yO11yServicesOut?> postO11yServices(O11yO11yServicesIn o11yO11yServicesIn,) async {
    final response = await postO11yServicesWithHttpInfo(o11yO11yServicesIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yServicesOut',) as O11yO11yServicesOut;
    
    }
    return null;
  }

  /// Sets one service's apdex threshold and the status codes excluded from its score.
  ///
  /// Sets one service's apdex threshold and the status codes excluded from its score.  Admin only, as the mux tree has always gated it (AdminAccess); the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yApdexSetIn] o11yO11yApdexSetIn (required):
  Future<Response> postO11ySettingsApdexWithHttpInfo(O11yO11yApdexSetIn o11yO11yApdexSetIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/settings/apdex';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yApdexSetIn;

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

  /// Sets one service's apdex threshold and the status codes excluded from its score.
  ///
  /// Sets one service's apdex threshold and the status codes excluded from its score.  Admin only, as the mux tree has always gated it (AdminAccess); the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yApdexSetIn] o11yO11yApdexSetIn (required):
  Future<O11yO11yApdexSetOut?> postO11ySettingsApdex(O11yO11yApdexSetIn o11yO11yApdexSetIn,) async {
    final response = await postO11ySettingsApdexWithHttpInfo(o11yO11yApdexSetIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yApdexSetOut',) as O11yO11yApdexSetOut;
    
    }
    return null;
  }

  /// Sets the org's retention policy for one signal: the default TTL in days, ordered per-label retention rules, and optional cold-storage settings.
  ///
  /// Sets the org's retention policy for one signal: the default TTL in days, ordered per-label retention rules, and optional cold-storage settings.  Admin only, as the mux tree has always gated it (AdminAccess); the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yRetentionSetIn] o11yO11yRetentionSetIn (required):
  Future<Response> postO11ySettingsTtlWithHttpInfo(O11yO11yRetentionSetIn o11yO11yRetentionSetIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/settings/ttl';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yRetentionSetIn;

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

  /// Sets the org's retention policy for one signal: the default TTL in days, ordered per-label retention rules, and optional cold-storage settings.
  ///
  /// Sets the org's retention policy for one signal: the default TTL in days, ordered per-label retention rules, and optional cold-storage settings.  Admin only, as the mux tree has always gated it (AdminAccess); the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yRetentionSetIn] o11yO11yRetentionSetIn (required):
  Future<O11yO11yRetentionSetOut?> postO11ySettingsTtl(O11yO11yRetentionSetIn o11yO11yRetentionSetIn,) async {
    final response = await postO11ySettingsTtlWithHttpInfo(o11yO11yRetentionSetIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRetentionSetOut',) as O11yO11yRetentionSetOut;
    
    }
    return null;
  }

  /// Places one span's duration among its peers: the p50/p90/p99 durations of like spans, and the percentile the given duration lands at.
  ///
  /// Places one span's duration among its peers: the p50/p90/p99 durations of like spans, and the percentile the given duration lands at.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11ySpanPercentileIn] o11yO11ySpanPercentileIn (required):
  Future<Response> postO11ySpanPercentileWithHttpInfo(O11yO11ySpanPercentileIn o11yO11ySpanPercentileIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/span_percentile';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11ySpanPercentileIn;

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

  /// Places one span's duration among its peers: the p50/p90/p99 durations of like spans, and the percentile the given duration lands at.
  ///
  /// Places one span's duration among its peers: the p50/p90/p99 durations of like spans, and the percentile the given duration lands at.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11ySpanPercentileIn] o11yO11ySpanPercentileIn (required):
  Future<O11yO11ySpanPercentileOut?> postO11ySpanPercentile(O11yO11ySpanPercentileIn o11yO11ySpanPercentileIn,) async {
    final response = await postO11ySpanPercentileWithHttpInfo(o11yO11ySpanPercentileIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySpanPercentileOut',) as O11yO11ySpanPercentileOut;
    
    }
    return null;
  }

  /// Lists Kubernetes statefulsets over a time range, each with the CPU and memory its pods used against request and limit, desired and available replica counts, restarts and attributes; filterable, groupable and paginated.
  ///
  /// Lists Kubernetes statefulsets over a time range, each with the CPU and memory its pods used against request and limit, desired and available replica counts, restarts and attributes; filterable, groupable and paginated.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yStatefulSetListRequest] o11yStatefulSetListRequest (required):
  Future<Response> postO11yStatefulsetsListWithHttpInfo(O11yStatefulSetListRequest o11yStatefulSetListRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/statefulsets/list';

    // ignore: prefer_final_locals
    Object? postBody = o11yStatefulSetListRequest;

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

  /// Lists Kubernetes statefulsets over a time range, each with the CPU and memory its pods used against request and limit, desired and available replica counts, restarts and attributes; filterable, groupable and paginated.
  ///
  /// Lists Kubernetes statefulsets over a time range, each with the CPU and memory its pods used against request and limit, desired and available replica counts, restarts and attributes; filterable, groupable and paginated.
  ///
  /// Parameters:
  ///
  /// * [O11yStatefulSetListRequest] o11yStatefulSetListRequest (required):
  Future<O11yO11yStatefulSetListOut?> postO11yStatefulsetsList(O11yStatefulSetListRequest o11yStatefulSetListRequest,) async {
    final response = await postO11yStatefulsetsListWithHttpInfo(o11yStatefulSetListRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yStatefulSetListOut',) as O11yO11yStatefulSetListOut;
    
    }
    return null;
  }

  /// Substitutes a query's variables and returns the resolved request, without running it — what a dashboard does before it queries.
  ///
  /// Substitutes a query's variables and returns the resolved request, without running it — what a dashboard does before it queries.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yQueryRangeRequest] o11yQueryRangeRequest (required):
  Future<Response> postO11ySubstituteVarsWithHttpInfo(O11yQueryRangeRequest o11yQueryRangeRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/substitute_vars';

    // ignore: prefer_final_locals
    Object? postBody = o11yQueryRangeRequest;

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

  /// Substitutes a query's variables and returns the resolved request, without running it — what a dashboard does before it queries.
  ///
  /// Substitutes a query's variables and returns the resolved request, without running it — what a dashboard does before it queries.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yQueryRangeRequest] o11yQueryRangeRequest (required):
  Future<O11yO11ySubstituteVarsOut?> postO11ySubstituteVars(O11yQueryRangeRequest o11yQueryRangeRequest,) async {
    final response = await postO11ySubstituteVarsWithHttpInfo(o11yQueryRangeRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySubstituteVarsOut',) as O11yO11ySubstituteVarsOut;
    
    }
    return null;
  }

  /// Returns one external domain's endpoint-level breakdown — each endpoint with its rate, error and latency columns over the window.
  ///
  /// Returns one external domain's endpoint-level breakdown — each endpoint with its rate, error and latency columns over the window.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDomainsIn] o11yO11yDomainsIn (required):
  Future<Response> postO11yThirdPartyApisOverviewDomainWithHttpInfo(O11yO11yDomainsIn o11yO11yDomainsIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/third-party-apis/overview/domain';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yDomainsIn;

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

  /// Returns one external domain's endpoint-level breakdown — each endpoint with its rate, error and latency columns over the window.
  ///
  /// Returns one external domain's endpoint-level breakdown — each endpoint with its rate, error and latency columns over the window.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDomainsIn] o11yO11yDomainsIn (required):
  Future<O11yO11yDomainsOut?> postO11yThirdPartyApisOverviewDomain(O11yO11yDomainsIn o11yO11yDomainsIn,) async {
    final response = await postO11yThirdPartyApisOverviewDomainWithHttpInfo(o11yO11yDomainsIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDomainsOut',) as O11yO11yDomainsOut;
    
    }
    return null;
  }

  /// Lists the external domains the instrumented services call, with request rate, error percentage and latency per domain.
  ///
  /// Lists the external domains the instrumented services call, with request rate, error percentage and latency per domain. Rows whose domain is a bare IP address are dropped unless show_ip asks for them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDomainsIn] o11yO11yDomainsIn (required):
  Future<Response> postO11yThirdPartyApisOverviewListWithHttpInfo(O11yO11yDomainsIn o11yO11yDomainsIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/third-party-apis/overview/list';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yDomainsIn;

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

  /// Lists the external domains the instrumented services call, with request rate, error percentage and latency per domain.
  ///
  /// Lists the external domains the instrumented services call, with request rate, error percentage and latency per domain. Rows whose domain is a bare IP address are dropped unless show_ip asks for them.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDomainsIn] o11yO11yDomainsIn (required):
  Future<O11yO11yDomainsOut?> postO11yThirdPartyApisOverviewList(O11yO11yDomainsIn o11yO11yDomainsIn,) async {
    final response = await postO11yThirdPartyApisOverviewListWithHttpInfo(o11yO11yDomainsIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDomainsOut',) as O11yO11yDomainsOut;
    
    }
    return null;
  }

  /// Evaluates a dashboard variable query and returns the values the variable may take.
  ///
  /// Evaluates a dashboard variable query and returns the values the variable may take.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDashboardVarsIn] o11yO11yDashboardVarsIn (required):
  Future<Response> postO11yVariablesQueryWithHttpInfo(O11yO11yDashboardVarsIn o11yO11yDashboardVarsIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/variables/query';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yDashboardVarsIn;

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

  /// Evaluates a dashboard variable query and returns the values the variable may take.
  ///
  /// Evaluates a dashboard variable query and returns the values the variable may take.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDashboardVarsIn] o11yO11yDashboardVarsIn (required):
  Future<O11yO11yDashboardVarsOut?> postO11yVariablesQuery(O11yO11yDashboardVarsIn o11yO11yDashboardVarsIn,) async {
    final response = await postO11yVariablesQueryWithHttpInfo(o11yO11yDashboardVarsIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDashboardVarsOut',) as O11yO11yDashboardVarsOut;
    
    }
    return null;
  }

  /// Estimates the series reduction and the dashboards and alerts a candidate volume-control rule would touch, without persisting it.
  ///
  /// Estimates the series reduction and the dashboards and alerts a candidate volume-control rule would touch, without persisting it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yReductionRulePreviewIn] o11yO11yReductionRulePreviewIn (required):
  Future<Response> previewMetricReductionRuleWithHttpInfo(O11yO11yReductionRulePreviewIn o11yO11yReductionRulePreviewIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/metric_reduction_rules/preview';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yReductionRulePreviewIn;

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

  /// Estimates the series reduction and the dashboards and alerts a candidate volume-control rule would touch, without persisting it.
  ///
  /// Estimates the series reduction and the dashboards and alerts a candidate volume-control rule would touch, without persisting it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yReductionRulePreviewIn] o11yO11yReductionRulePreviewIn (required):
  Future<O11yO11yReductionRulePreviewOut?> previewMetricReductionRule(O11yO11yReductionRulePreviewIn o11yO11yReductionRulePreviewIn,) async {
    final response = await previewMetricReductionRuleWithHttpInfo(o11yO11yReductionRulePreviewIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yReductionRulePreviewOut',) as O11yO11yReductionRulePreviewOut;
    
    }
    return null;
  }

  /// Records the deployment's host in Zeus, overwriting any prior one.
  ///
  /// Records the deployment's host in Zeus, overwriting any prior one. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yPostableHost] o11yPostableHost (required):
  Future<Response> putHostWithHttpInfo(O11yPostableHost o11yPostableHost,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/zeus/hosts';

    // ignore: prefer_final_locals
    Object? postBody = o11yPostableHost;

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

  /// Records the deployment's host in Zeus, overwriting any prior one.
  ///
  /// Records the deployment's host in Zeus, overwriting any prior one. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [O11yPostableHost] o11yPostableHost (required):
  Future<void> putHost(O11yPostableHost o11yPostableHost,) async {
    final response = await putHostWithHttpInfo(o11yPostableHost,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replaces one saved explorer view by id with the given view and echoes it back.
  ///
  /// Replaces one saved explorer view by id with the given view and echoes it back.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] viewId (required):
  ///   ViewID is the id of the view to replace, taken from the URL.
  ///
  /// * [O11yO11ySavedViewUpdateIn] o11yO11ySavedViewUpdateIn (required):
  Future<Response> putO11yExplorerViewsByViewidWithHttpInfo(String viewId, O11yO11ySavedViewUpdateIn o11yO11ySavedViewUpdateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/explorer/views/{viewId}'
      .replaceAll('{viewId}', viewId);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11ySavedViewUpdateIn;

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

  /// Replaces one saved explorer view by id with the given view and echoes it back.
  ///
  /// Replaces one saved explorer view by id with the given view and echoes it back.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] viewId (required):
  ///   ViewID is the id of the view to replace, taken from the URL.
  ///
  /// * [O11yO11ySavedViewUpdateIn] o11yO11ySavedViewUpdateIn (required):
  Future<O11yO11ySavedViewOut?> putO11yExplorerViewsByViewid(String viewId, O11yO11ySavedViewUpdateIn o11yO11ySavedViewUpdateIn,) async {
    final response = await putO11yExplorerViewsByViewidWithHttpInfo(viewId, o11yO11ySavedViewUpdateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11ySavedViewOut',) as O11yO11ySavedViewOut;
    
    }
    return null;
  }

  /// Changes an issue's lifecycle — resolve, ignore, reopen or assign — and returns the updated issue.
  ///
  /// Changes an issue's lifecycle — resolve, ignore, reopen or assign — and returns the updated issue. Fields left unset are left unchanged.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the issue id.
  ///
  /// * [O11yO11ySentryUpdateIssueIn] o11yO11ySentryUpdateIssueIn (required):
  Future<Response> putO11ySentinelIssuesByIdWithHttpInfo(String id, O11yO11ySentryUpdateIssueIn o11yO11ySentryUpdateIssueIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/sentinel/issues/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11ySentryUpdateIssueIn;

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

  /// Changes an issue's lifecycle — resolve, ignore, reopen or assign — and returns the updated issue.
  ///
  /// Changes an issue's lifecycle — resolve, ignore, reopen or assign — and returns the updated issue. Fields left unset are left unchanged.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the issue id.
  ///
  /// * [O11yO11ySentryUpdateIssueIn] o11yO11ySentryUpdateIssueIn (required):
  Future<O11yO11yErrorIssueOut?> putO11ySentinelIssuesById(String id, O11yO11ySentryUpdateIssueIn o11yO11ySentryUpdateIssueIn,) async {
    final response = await putO11ySentinelIssuesByIdWithHttpInfo(id, o11yO11ySentryUpdateIssueIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yErrorIssueOut',) as O11yO11yErrorIssueOut;
    
    }
    return null;
  }

  /// Records the deployment's profile in Zeus — how the team uses observability today and what they plan — overwriting any prior one.
  ///
  /// Records the deployment's profile in Zeus — how the team uses observability today and what they plan — overwriting any prior one. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yPostableProfile] o11yPostableProfile (required):
  Future<Response> putProfileWithHttpInfo(O11yPostableProfile o11yPostableProfile,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/zeus/profiles';

    // ignore: prefer_final_locals
    Object? postBody = o11yPostableProfile;

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

  /// Records the deployment's profile in Zeus — how the team uses observability today and what they plan — overwriting any prior one.
  ///
  /// Records the deployment's profile in Zeus — how the team uses observability today and what they plan — overwriting any prior one. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [O11yPostableProfile] o11yPostableProfile (required):
  Future<void> putProfile(O11yPostableProfile o11yPostableProfile,) async {
    final response = await putProfileWithHttpInfo(o11yPostableProfile,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Takes a role away from one org member, by user id and role id — someone else, never the caller.
  ///
  /// Takes a role away from one org member, by user id and role id — someone else, never the caller. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] roleId (required):
  Future<Response> removeUserRoleByUserIDAndRoleIDWithHttpInfo(String id, String roleId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/users/{id}/roles/{roleId}'
      .replaceAll('{id}', id)
      .replaceAll('{roleId}', roleId);

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

  /// Takes a role away from one org member, by user id and role id — someone else, never the caller.
  ///
  /// Takes a role away from one org member, by user id and role id — someone else, never the caller. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] roleId (required):
  Future<void> removeUserRoleByUserIDAndRoleID(String id, String roleId,) async {
    final response = await removeUserRoleByUserIDAndRoleIDWithHttpInfo(id, roleId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Sets a new password for whoever the reset token was minted for, consuming the token.
  ///
  /// Sets a new password for whoever the reset token was minted for, consuming the token. Unauthenticated: the token is the proof.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yResetPasswordIn] o11yO11yResetPasswordIn (required):
  Future<Response> resetPasswordWithHttpInfo(O11yO11yResetPasswordIn o11yO11yResetPasswordIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/resetPassword';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yResetPasswordIn;

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

  /// Sets a new password for whoever the reset token was minted for, consuming the token.
  ///
  /// Sets a new password for whoever the reset token was minted for, consuming the token. Unauthenticated: the token is the proof.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yResetPasswordIn] o11yO11yResetPasswordIn (required):
  Future<void> resetPassword(O11yO11yResetPasswordIn o11yO11yResetPasswordIn,) async {
    final response = await resetPasswordWithHttpInfo(o11yO11yResetPasswordIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Revokes an API key.
  ///
  /// Revokes an API key. Revocation is immediate and permanent.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] fid (required):
  Future<Response> revokeServiceAccountKeyWithHttpInfo(String id, String fid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/service_accounts/{id}/keys/{fid}'
      .replaceAll('{id}', id)
      .replaceAll('{fid}', fid);

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

  /// Revokes an API key.
  ///
  /// Revokes an API key. Revocation is immediate and permanent.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] fid (required):
  Future<void> revokeServiceAccountKey(String id, String fid,) async {
    final response = await revokeServiceAccountKeyWithHttpInfo(id, fid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Exchanges a refresh token for a fresh token pair, retiring the old pair.
  ///
  /// Exchanges a refresh token for a fresh token pair, retiring the old pair. The access token being rotated identifies the session.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yRotateSessionIn] o11yO11yRotateSessionIn (required):
  Future<Response> rotateSessionWithHttpInfo(O11yO11yRotateSessionIn o11yO11yRotateSessionIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/sessions/rotate';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yRotateSessionIn;

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

  /// Exchanges a refresh token for a fresh token pair, retiring the old pair.
  ///
  /// Exchanges a refresh token for a fresh token pair, retiring the old pair. The access token being rotated identifies the session.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yRotateSessionIn] o11yO11yRotateSessionIn (required):
  Future<O11yO11yTokenOut?> rotateSession(O11yO11yRotateSessionIn o11yO11yRotateSessionIn,) async {
    final response = await rotateSessionWithHttpInfo(o11yO11yRotateSessionIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yTokenOut',) as O11yO11yTokenOut;
    
    }
    return null;
  }

  /// Lists the workspace's ingestion keys whose name matches the search, paginated.
  ///
  /// Lists the workspace's ingestion keys whose name matches the search, paginated. Editor gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   Name is the substring to match ingestion-key names against.
  ///
  /// * [int] page:
  ///   Page is the 1-based page number.
  ///
  /// * [int] perPage:
  ///   PerPage is the page size.
  Future<Response> searchIngestionKeysWithHttpInfo({ String? name, int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/gateway/ingestion_keys/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
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

  /// Lists the workspace's ingestion keys whose name matches the search, paginated.
  ///
  /// Lists the workspace's ingestion keys whose name matches the search, paginated. Editor gate.
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   Name is the substring to match ingestion-key names against.
  ///
  /// * [int] page:
  ///   Page is the 1-based page number.
  ///
  /// * [int] perPage:
  ///   PerPage is the page size.
  Future<O11yO11yIngestionKeysOut?> searchIngestionKeys({ String? name, int? page, int? perPage, }) async {
    final response = await searchIngestionKeysWithHttpInfo( name: name, page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yIngestionKeysOut',) as O11yO11yIngestionKeysOut;
    
    }
    return null;
  }

  /// Returns one trace's spans as a column/row table, optionally centred on a span and walked a fixed number of levels up and down from it — the read the trace explorer opens a trace with.
  ///
  /// Returns one trace's spans as a column/row table, optionally centred on a span and walked a fixed number of levels up and down from it — the read the trace explorer opens a trace with.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] traceId (required):
  ///
  /// * [String] spanId:
  ///
  /// * [int] levelUp:
  ///
  /// * [int] levelDown:
  ///
  /// * [int] spanRenderLimit:
  Future<Response> searchTracesWithHttpInfo(String traceId, { String? spanId, int? levelUp, int? levelDown, int? spanRenderLimit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/traces/{traceId}'
      .replaceAll('{traceId}', traceId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (spanId != null) {
      queryParams.addAll(_queryParams('', 'spanId', spanId));
    }
    if (levelUp != null) {
      queryParams.addAll(_queryParams('', 'levelUp', levelUp));
    }
    if (levelDown != null) {
      queryParams.addAll(_queryParams('', 'levelDown', levelDown));
    }
    if (spanRenderLimit != null) {
      queryParams.addAll(_queryParams('', 'spanRenderLimit', spanRenderLimit));
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

  /// Returns one trace's spans as a column/row table, optionally centred on a span and walked a fixed number of levels up and down from it — the read the trace explorer opens a trace with.
  ///
  /// Returns one trace's spans as a column/row table, optionally centred on a span and walked a fixed number of levels up and down from it — the read the trace explorer opens a trace with.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] traceId (required):
  ///
  /// * [String] spanId:
  ///
  /// * [int] levelUp:
  ///
  /// * [int] levelDown:
  ///
  /// * [int] spanRenderLimit:
  Future<List<O11yO11yTraceSpanWindow>?> searchTraces(String traceId, { String? spanId, int? levelUp, int? levelDown, int? spanRenderLimit, }) async {
    final response = await searchTracesWithHttpInfo(traceId,  spanId: spanId, levelUp: levelUp, levelDown: levelDown, spanRenderLimit: spanRenderLimit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<O11yO11yTraceSpanWindow>') as List)
        .cast<O11yO11yTraceSpanWindow>()
        .toList(growable: false);

    }
    return null;
  }

  /// Assigns a role, by role name, to one org member — someone else, never the caller.
  ///
  /// Assigns a role, by role name, to one org member — someone else, never the caller. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11ySetRoleIn] o11yO11ySetRoleIn (required):
  Future<Response> setRoleByUserIDWithHttpInfo(String id, O11yO11ySetRoleIn o11yO11ySetRoleIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/users/{id}/roles'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11ySetRoleIn;

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

  /// Assigns a role, by role name, to one org member — someone else, never the caller.
  ///
  /// Assigns a role, by role name, to one org member — someone else, never the caller. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11ySetRoleIn] o11yO11ySetRoleIn (required):
  Future<O11yO11yAck?> setRoleByUserID(String id, O11yO11ySetRoleIn o11yO11ySetRoleIn,) async {
    final response = await setRoleByUserIDWithHttpInfo(id, o11yO11ySetRoleIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yAck',) as O11yO11yAck;
    
    }
    return null;
  }

  /// Sends a test notification to the posted receiver.
  ///
  /// Sends a test notification to the posted receiver. Editor gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yAlertmanagertypesReceiver] o11yAlertmanagertypesReceiver (required):
  Future<Response> testChannelWithHttpInfo(O11yAlertmanagertypesReceiver o11yAlertmanagertypesReceiver,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/channels/test';

    // ignore: prefer_final_locals
    Object? postBody = o11yAlertmanagertypesReceiver;

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

  /// Sends a test notification to the posted receiver.
  ///
  /// Sends a test notification to the posted receiver. Editor gate.
  ///
  /// Parameters:
  ///
  /// * [O11yAlertmanagertypesReceiver] o11yAlertmanagertypesReceiver (required):
  Future<void> testChannel(O11yAlertmanagertypesReceiver o11yAlertmanagertypesReceiver,) async {
    final response = await testChannelWithHttpInfo(o11yAlertmanagertypesReceiver,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Sends a test notification to the posted receiver.
  ///
  /// Sends a test notification to the posted receiver. The legacy path; prefer /channels/test. Editor gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yAlertmanagertypesReceiver] o11yAlertmanagertypesReceiver (required):
  Future<Response> testChannelDeprecatedWithHttpInfo(O11yAlertmanagertypesReceiver o11yAlertmanagertypesReceiver,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/testChannel';

    // ignore: prefer_final_locals
    Object? postBody = o11yAlertmanagertypesReceiver;

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

  /// Sends a test notification to the posted receiver.
  ///
  /// Sends a test notification to the posted receiver. The legacy path; prefer /channels/test. Editor gate.
  ///
  /// Parameters:
  ///
  /// * [O11yAlertmanagertypesReceiver] o11yAlertmanagertypesReceiver (required):
  Future<void> testChannelDeprecated(O11yAlertmanagertypesReceiver o11yAlertmanagertypesReceiver,) async {
    final response = await testChannelDeprecatedWithHttpInfo(o11yAlertmanagertypesReceiver,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fires a test notification for a rule definition without saving it, answering with how many series would alert.
  ///
  /// Fires a test notification for a rule definition without saving it, answering with how many series would alert. Editor gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> testRuleWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/rules/test';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Fires a test notification for a rule definition without saving it, answering with how many series would alert.
  ///
  /// Fires a test notification for a rule definition without saving it, answering with how many series would alert. Editor gate.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<O11yO11yTestRuleOut?> testRule(Object body,) async {
    final response = await testRuleWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yTestRuleOut',) as O11yO11yTestRuleOut;
    
    }
    return null;
  }

  /// Fires a test notification for the posted rule definition and answers with how many series alerted and a status message.
  ///
  /// Fires a test notification for the posted rule definition and answers with how many series alerted and a status message. The legacy path; prefer /rules/test. Editor gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<Response> testRuleNotificationWithHttpInfo(Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/testRule';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Fires a test notification for the posted rule definition and answers with how many series alerted and a status message.
  ///
  /// Fires a test notification for the posted rule definition and answers with how many series alerted and a status message. The legacy path; prefer /rules/test. Editor gate.
  ///
  /// Parameters:
  ///
  /// * [Object] body (required):
  Future<O11yO11yTestNotificationOut?> testRuleNotification(Object body,) async {
    final response = await testRuleNotificationWithHttpInfo(body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yTestNotificationOut',) as O11yO11yTestNotificationOut;
    
    }
    return null;
  }

  /// Removes an integration from the caller's org by id.
  ///
  /// Removes an integration from the caller's org by id. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yUninstallIntegrationRequest] o11yUninstallIntegrationRequest (required):
  Future<Response> uninstallIntegrationWithHttpInfo(O11yUninstallIntegrationRequest o11yUninstallIntegrationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/integrations/uninstall';

    // ignore: prefer_final_locals
    Object? postBody = o11yUninstallIntegrationRequest;

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

  /// Removes an integration from the caller's org by id.
  ///
  /// Removes an integration from the caller's org by id. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [O11yUninstallIntegrationRequest] o11yUninstallIntegrationRequest (required):
  Future<O11yO11yIntegrationAck?> uninstallIntegration(O11yUninstallIntegrationRequest o11yUninstallIntegrationRequest,) async {
    final response = await uninstallIntegrationWithHttpInfo(o11yUninstallIntegrationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yIntegrationAck',) as O11yO11yIntegrationAck;
    
    }
    return null;
  }

  /// Unlocks a v2-shape dashboard.
  ///
  /// Unlocks a v2-shape dashboard. Only the dashboard's creator or an org admin may lock or unlock.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<Response> unlockDashboardV2WithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/dashboards/{id}/lock'
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

  /// Unlocks a v2-shape dashboard.
  ///
  /// Unlocks a v2-shape dashboard. Only the dashboard's creator or an org admin may lock or unlock.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<void> unlockDashboardV2(String id,) async {
    final response = await unlockDashboardV2WithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes the caller's pin for a dashboard.
  ///
  /// Removes the caller's pin for a dashboard. Idempotent — unpinning a dashboard that was not pinned still succeeds.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<Response> unpinDashboardV2WithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/users/me/dashboards/{id}/pins'
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

  /// Removes the caller's pin for a dashboard.
  ///
  /// Removes the caller's pin for a dashboard. Idempotent — unpinning a dashboard that was not pinned still succeeds.  Callers need the viewer role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the resource id from the path.
  Future<void> unpinDashboardV2(String id,) async {
    final response = await unpinDashboardV2WithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Changes a connected account's configuration for the given provider, by id.
  ///
  /// Changes a connected account's configuration for the given provider, by id. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yUpdateAccountIn] o11yO11yUpdateAccountIn (required):
  Future<Response> updateAccountWithHttpInfo(String cloudProvider, String id, O11yO11yUpdateAccountIn o11yO11yUpdateAccountIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/cloud_integrations/{cloud_provider}/accounts/{id}'
      .replaceAll('{cloud_provider}', cloudProvider)
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yUpdateAccountIn;

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

  /// Changes a connected account's configuration for the given provider, by id.
  ///
  /// Changes a connected account's configuration for the given provider, by id. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yUpdateAccountIn] o11yO11yUpdateAccountIn (required):
  Future<void> updateAccount(String cloudProvider, String id, O11yO11yUpdateAccountIn o11yO11yUpdateAccountIn,) async {
    final response = await updateAccountWithHttpInfo(cloudProvider, id, o11yO11yUpdateAccountIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replaces one auth domain's SSO configuration, by id.
  ///
  /// Replaces one auth domain's SSO configuration, by id. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yUpdatableAuthDomain] o11yO11yUpdatableAuthDomain (required):
  Future<Response> updateAuthDomainWithHttpInfo(String id, O11yO11yUpdatableAuthDomain o11yO11yUpdatableAuthDomain,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/domains/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yUpdatableAuthDomain;

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

  /// Replaces one auth domain's SSO configuration, by id.
  ///
  /// Replaces one auth domain's SSO configuration, by id. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yUpdatableAuthDomain] o11yO11yUpdatableAuthDomain (required):
  Future<void> updateAuthDomain(String id, O11yO11yUpdatableAuthDomain o11yO11yUpdatableAuthDomain,) async {
    final response = await updateAuthDomainWithHttpInfo(id, o11yO11yUpdatableAuthDomain,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replaces a notification channel's receiver, by id.
  ///
  /// Replaces a notification channel's receiver, by id. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yChannelUpdateIn] o11yO11yChannelUpdateIn (required):
  Future<Response> updateChannelByIDWithHttpInfo(String id, O11yO11yChannelUpdateIn o11yO11yChannelUpdateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/channels/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yChannelUpdateIn;

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

  /// Replaces a notification channel's receiver, by id.
  ///
  /// Replaces a notification channel's receiver, by id. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yChannelUpdateIn] o11yO11yChannelUpdateIn (required):
  Future<void> updateChannelByID(String id, O11yO11yChannelUpdateIn o11yO11yChannelUpdateIn,) async {
    final response = await updateChannelByIDWithHttpInfo(id, o11yO11yChannelUpdateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates a v2-shape dashboard's metadata, spec and tag set.
  ///
  /// Updates a v2-shape dashboard's metadata, spec and tag set. The name is immutable and locked dashboards are rejected.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the dashboard id from the path.
  ///
  /// * [O11yO11yDashboardUpdateIn] o11yO11yDashboardUpdateIn (required):
  Future<Response> updateDashboardV2WithHttpInfo(String id, O11yO11yDashboardUpdateIn o11yO11yDashboardUpdateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/dashboards/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yDashboardUpdateIn;

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

  /// Updates a v2-shape dashboard's metadata, spec and tag set.
  ///
  /// Updates a v2-shape dashboard's metadata, spec and tag set. The name is immutable and locked dashboards are rejected.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the dashboard id from the path.
  ///
  /// * [O11yO11yDashboardUpdateIn] o11yO11yDashboardUpdateIn (required):
  Future<O11yO11yDashboardOut?> updateDashboardV2(String id, O11yO11yDashboardUpdateIn o11yO11yDashboardUpdateIn,) async {
    final response = await updateDashboardV2WithHttpInfo(id, o11yO11yDashboardUpdateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDashboardOut',) as O11yO11yDashboardOut;
    
    }
    return null;
  }

  /// Replaces a saved view's name and data.
  ///
  /// Replaces a saved view's name and data. Saved views are shared org-wide.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the saved view id from the path.
  ///
  /// * [O11yO11yDashboardViewUpdateIn] o11yO11yDashboardViewUpdateIn (required):
  Future<Response> updateDashboardViewWithHttpInfo(String id, O11yO11yDashboardViewUpdateIn o11yO11yDashboardViewUpdateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/dashboard_views/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yDashboardViewUpdateIn;

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

  /// Replaces a saved view's name and data.
  ///
  /// Replaces a saved view's name and data. Saved views are shared org-wide.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the saved view id from the path.
  ///
  /// * [O11yO11yDashboardViewUpdateIn] o11yO11yDashboardViewUpdateIn (required):
  Future<O11yO11yDashboardViewOut?> updateDashboardView(String id, O11yO11yDashboardViewUpdateIn o11yO11yDashboardViewUpdateIn,) async {
    final response = await updateDashboardViewWithHttpInfo(id, o11yO11yDashboardViewUpdateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDashboardViewOut',) as O11yO11yDashboardViewOut;
    
    }
    return null;
  }

  /// Replaces a planned maintenance window, by id.
  ///
  /// Replaces a planned maintenance window, by id. Editor gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yDowntimeUpdateIn] o11yO11yDowntimeUpdateIn (required):
  Future<Response> updateDowntimeScheduleByIDWithHttpInfo(String id, O11yO11yDowntimeUpdateIn o11yO11yDowntimeUpdateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/downtime_schedules/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yDowntimeUpdateIn;

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

  /// Replaces a planned maintenance window, by id.
  ///
  /// Replaces a planned maintenance window, by id. Editor gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yDowntimeUpdateIn] o11yO11yDowntimeUpdateIn (required):
  Future<void> updateDowntimeScheduleByID(String id, O11yO11yDowntimeUpdateIn o11yO11yDowntimeUpdateIn,) async {
    final response = await updateDowntimeScheduleByIDWithHttpInfo(id, o11yO11yDowntimeUpdateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Changes an ingestion key, by id.
  ///
  /// Changes an ingestion key, by id. Editor gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] keyId (required):
  ///
  /// * [O11yO11yUpdateIngestionKeyIn] o11yO11yUpdateIngestionKeyIn (required):
  Future<Response> updateIngestionKeyWithHttpInfo(String keyId, O11yO11yUpdateIngestionKeyIn o11yO11yUpdateIngestionKeyIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/gateway/ingestion_keys/{keyId}'
      .replaceAll('{keyId}', keyId);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yUpdateIngestionKeyIn;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Changes an ingestion key, by id.
  ///
  /// Changes an ingestion key, by id. Editor gate.
  ///
  /// Parameters:
  ///
  /// * [String] keyId (required):
  ///
  /// * [O11yO11yUpdateIngestionKeyIn] o11yO11yUpdateIngestionKeyIn (required):
  Future<void> updateIngestionKey(String keyId, O11yO11yUpdateIngestionKeyIn o11yO11yUpdateIngestionKeyIn,) async {
    final response = await updateIngestionKeyWithHttpInfo(keyId, o11yO11yUpdateIngestionKeyIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Changes an ingestion key limit, by limit id.
  ///
  /// Changes an ingestion key limit, by limit id. Editor gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] limitId (required):
  ///
  /// * [O11yO11yUpdateLimitIn] o11yO11yUpdateLimitIn (required):
  Future<Response> updateIngestionKeyLimitWithHttpInfo(String limitId, O11yO11yUpdateLimitIn o11yO11yUpdateLimitIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/gateway/ingestion_keys/limits/{limitId}'
      .replaceAll('{limitId}', limitId);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yUpdateLimitIn;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Changes an ingestion key limit, by limit id.
  ///
  /// Changes an ingestion key limit, by limit id. Editor gate.
  ///
  /// Parameters:
  ///
  /// * [String] limitId (required):
  ///
  /// * [O11yO11yUpdateLimitIn] o11yO11yUpdateLimitIn (required):
  Future<void> updateIngestionKeyLimit(String limitId, O11yO11yUpdateLimitIn o11yO11yUpdateLimitIn,) async {
    final response = await updateIngestionKeyLimitWithHttpInfo(limitId, o11yO11yUpdateLimitIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates one metric's metadata — description, type, unit, temporality, monotonicity — and answers with the bare success envelope.
  ///
  /// Updates one metric's metadata — description, type, unit, temporality, monotonicity — and answers with the bare success envelope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yMetricMetadataSaveIn] o11yO11yMetricMetadataSaveIn (required):
  Future<Response> updateMetricMetadataWithHttpInfo(O11yO11yMetricMetadataSaveIn o11yO11yMetricMetadataSaveIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/metrics/metadata';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yMetricMetadataSaveIn;

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

  /// Updates one metric's metadata — description, type, unit, temporality, monotonicity — and answers with the bare success envelope.
  ///
  /// Updates one metric's metadata — description, type, unit, temporality, monotonicity — and answers with the bare success envelope.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yMetricMetadataSaveIn] o11yO11yMetricMetadataSaveIn (required):
  Future<O11yO11yMetricAckOut?> updateMetricMetadata(O11yO11yMetricMetadataSaveIn o11yO11yMetricMetadataSaveIn,) async {
    final response = await updateMetricMetadataWithHttpInfo(o11yO11yMetricMetadataSaveIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yMetricAckOut',) as O11yO11yMetricAckOut;
    
    }
    return null;
  }

  /// Updates the match type and labels of a volume-control rule by its id; the metric name is immutable.
  ///
  /// Updates the match type and labels of a volume-control rule by its id; the metric name is immutable.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the rule's id.
  ///
  /// * [O11yO11yReductionRuleSaveIn] o11yO11yReductionRuleSaveIn (required):
  Future<Response> updateMetricReductionRuleByIDWithHttpInfo(String id, O11yO11yReductionRuleSaveIn o11yO11yReductionRuleSaveIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/metric_reduction_rules/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yReductionRuleSaveIn;

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

  /// Updates the match type and labels of a volume-control rule by its id; the metric name is immutable.
  ///
  /// Updates the match type and labels of a volume-control rule by its id; the metric name is immutable.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the rule's id.
  ///
  /// * [O11yO11yReductionRuleSaveIn] o11yO11yReductionRuleSaveIn (required):
  Future<O11yO11yReductionRuleOut?> updateMetricReductionRuleByID(String id, O11yO11yReductionRuleSaveIn o11yO11yReductionRuleSaveIn,) async {
    final response = await updateMetricReductionRuleByIDWithHttpInfo(id, o11yO11yReductionRuleSaveIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yReductionRuleOut',) as O11yO11yReductionRuleOut;
    
    }
    return null;
  }

  /// Rewrites the caller's own organization record — display name, name, alias — always addressed as \"me\", never by id.
  ///
  /// Rewrites the caller's own organization record — display name, name, alias — always addressed as \"me\", never by id. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yOrganization] o11yO11yOrganization (required):
  Future<Response> updateMyOrganizationWithHttpInfo(O11yO11yOrganization o11yO11yOrganization,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/orgs/me';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yOrganization;

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

  /// Rewrites the caller's own organization record — display name, name, alias — always addressed as \"me\", never by id.
  ///
  /// Rewrites the caller's own organization record — display name, name, alias — always addressed as \"me\", never by id. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yOrganization] o11yO11yOrganization (required):
  Future<void> updateMyOrganization(O11yO11yOrganization o11yO11yOrganization,) async {
    final response = await updateMyOrganizationWithHttpInfo(o11yO11yOrganization,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replaces the calling user's password, refusing when the old one does not match.
  ///
  /// Replaces the calling user's password, refusing when the old one does not match. Open to any authenticated caller.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yChangePasswordIn] o11yO11yChangePasswordIn (required):
  Future<Response> updateMyPasswordWithHttpInfo(O11yO11yChangePasswordIn o11yO11yChangePasswordIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/users/me/factor_password';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yChangePasswordIn;

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

  /// Replaces the calling user's password, refusing when the old one does not match.
  ///
  /// Replaces the calling user's password, refusing when the old one does not match. Open to any authenticated caller.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yChangePasswordIn] o11yO11yChangePasswordIn (required):
  Future<void> updateMyPassword(O11yO11yChangePasswordIn o11yO11yChangePasswordIn,) async {
    final response = await updateMyPasswordWithHttpInfo(o11yO11yChangePasswordIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Renames the calling service account.
  ///
  /// Renames the calling service account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yMyServiceAccountUpdateIn] o11yO11yMyServiceAccountUpdateIn (required):
  Future<Response> updateMyServiceAccountWithHttpInfo(O11yO11yMyServiceAccountUpdateIn o11yO11yMyServiceAccountUpdateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/service_accounts/me';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yMyServiceAccountUpdateIn;

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

  /// Renames the calling service account.
  ///
  /// Renames the calling service account.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yMyServiceAccountUpdateIn] o11yO11yMyServiceAccountUpdateIn (required):
  Future<void> updateMyServiceAccount(O11yO11yMyServiceAccountUpdateIn o11yO11yMyServiceAccountUpdateIn,) async {
    final response = await updateMyServiceAccountWithHttpInfo(o11yO11yMyServiceAccountUpdateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Renames the calling user.
  ///
  /// Renames the calling user. Open to any authenticated caller.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yUpdatableUser] o11yO11yUpdatableUser (required):
  Future<Response> updateMyUserV2WithHttpInfo(O11yO11yUpdatableUser o11yO11yUpdatableUser,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/users/me';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yUpdatableUser;

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

  /// Renames the calling user.
  ///
  /// Renames the calling user. Open to any authenticated caller.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yUpdatableUser] o11yO11yUpdatableUser (required):
  Future<void> updateMyUserV2(O11yO11yUpdatableUser o11yO11yUpdatableUser,) async {
    final response = await updateMyUserV2WithHttpInfo(o11yO11yUpdatableUser,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Sets one org-scoped preference, by name.
  ///
  /// Sets one org-scoped preference, by name. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///
  /// * [O11yO11yUpdatablePreference] o11yO11yUpdatablePreference (required):
  Future<Response> updateOrgPreferenceWithHttpInfo(String name, O11yO11yUpdatablePreference o11yO11yUpdatablePreference,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/org/preferences/{name}'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yUpdatablePreference;

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

  /// Sets one org-scoped preference, by name.
  ///
  /// Sets one org-scoped preference, by name. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///
  /// * [O11yO11yUpdatablePreference] o11yO11yUpdatablePreference (required):
  Future<void> updateOrgPreference(String name, O11yO11yUpdatablePreference o11yO11yUpdatablePreference,) async {
    final response = await updateOrgPreferenceWithHttpInfo(name, o11yO11yUpdatablePreference,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates the public-sharing config for a dashboard.
  ///
  /// Updates the public-sharing config for a dashboard.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the dashboard id from the path.
  ///
  /// * [O11yO11yPublicDashboardWriteIn] o11yO11yPublicDashboardWriteIn (required):
  Future<Response> updatePublicDashboardWithHttpInfo(String id, O11yO11yPublicDashboardWriteIn o11yO11yPublicDashboardWriteIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/dashboards/{id}/public'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yPublicDashboardWriteIn;

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

  /// Updates the public-sharing config for a dashboard.
  ///
  /// Updates the public-sharing config for a dashboard.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the dashboard id from the path.
  ///
  /// * [O11yO11yPublicDashboardWriteIn] o11yO11yPublicDashboardWriteIn (required):
  Future<void> updatePublicDashboard(String id, O11yO11yPublicDashboardWriteIn o11yO11yPublicDashboardWriteIn,) async {
    final response = await updatePublicDashboardWithHttpInfo(id, o11yO11yPublicDashboardWriteIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replaces the org's quick filters for one signal with the attribute list given.
  ///
  /// Replaces the org's quick filters for one signal with the attribute list given. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yUpdatableQuickFilters] o11yO11yUpdatableQuickFilters (required):
  Future<Response> updateQuickFiltersWithHttpInfo(O11yO11yUpdatableQuickFilters o11yO11yUpdatableQuickFilters,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/orgs/me/filters';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yUpdatableQuickFilters;

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

  /// Replaces the org's quick filters for one signal with the attribute list given.
  ///
  /// Replaces the org's quick filters for one signal with the attribute list given. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yUpdatableQuickFilters] o11yO11yUpdatableQuickFilters (required):
  Future<void> updateQuickFilters(O11yO11yUpdatableQuickFilters o11yO11yUpdatableQuickFilters,) async {
    final response = await updateQuickFiltersWithHttpInfo(o11yO11yUpdatableQuickFilters,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replaces a custom role's description and transaction groups.
  ///
  /// Replaces a custom role's description and transaction groups. Both fields are mandatory — send an empty string or an empty array to clear one — and managed roles cannot be edited.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yRoleUpdateIn] o11yO11yRoleUpdateIn (required):
  Future<Response> updateRoleWithHttpInfo(String id, O11yO11yRoleUpdateIn o11yO11yRoleUpdateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/roles/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yRoleUpdateIn;

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

  /// Replaces a custom role's description and transaction groups.
  ///
  /// Replaces a custom role's description and transaction groups. Both fields are mandatory — send an empty string or an empty array to clear one — and managed roles cannot be edited.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yRoleUpdateIn] o11yO11yRoleUpdateIn (required):
  Future<void> updateRole(String id, O11yO11yRoleUpdateIn o11yO11yRoleUpdateIn,) async {
    final response = await updateRoleWithHttpInfo(id, o11yO11yRoleUpdateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Replaces a route policy, by id, answering with the stored policy.
  ///
  /// Replaces a route policy, by id, answering with the stored policy. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yRoutePolicyUpdateIn] o11yO11yRoutePolicyUpdateIn (required):
  Future<Response> updateRoutePolicyWithHttpInfo(String id, O11yO11yRoutePolicyUpdateIn o11yO11yRoutePolicyUpdateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/route_policies/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yRoutePolicyUpdateIn;

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

  /// Replaces a route policy, by id, answering with the stored policy.
  ///
  /// Replaces a route policy, by id, answering with the stored policy. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yRoutePolicyUpdateIn] o11yO11yRoutePolicyUpdateIn (required):
  Future<O11yO11yRoutePolicyOut?> updateRoutePolicy(String id, O11yO11yRoutePolicyUpdateIn o11yO11yRoutePolicyUpdateIn,) async {
    final response = await updateRoutePolicyWithHttpInfo(id, o11yO11yRoutePolicyUpdateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yRoutePolicyOut',) as O11yO11yRoutePolicyOut;
    
    }
    return null;
  }

  /// Replaces an alert rule's definition, by id.
  ///
  /// Replaces an alert rule's definition, by id. Editor gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Object] body (required):
  Future<Response> updateRuleByIDWithHttpInfo(String id, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/rules/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Replaces an alert rule's definition, by id.
  ///
  /// Replaces an alert rule's definition, by id. Editor gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Object] body (required):
  Future<void> updateRuleByID(String id, Object body,) async {
    final response = await updateRuleByIDWithHttpInfo(id, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Changes a service's configuration for one connected account of the given provider, by account id and service id.
  ///
  /// Changes a service's configuration for one connected account of the given provider, by account id and service id. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [String] id (required):
  ///
  /// * [String] serviceId (required):
  ///
  /// * [O11yO11yUpdateServiceIn] o11yO11yUpdateServiceIn (required):
  Future<Response> updateServiceWithHttpInfo(String cloudProvider, String id, String serviceId, O11yO11yUpdateServiceIn o11yO11yUpdateServiceIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/cloud_integrations/{cloud_provider}/accounts/{id}/services/{service_id}'
      .replaceAll('{cloud_provider}', cloudProvider)
      .replaceAll('{id}', id)
      .replaceAll('{service_id}', serviceId);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yUpdateServiceIn;

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

  /// Changes a service's configuration for one connected account of the given provider, by account id and service id.
  ///
  /// Changes a service's configuration for one connected account of the given provider, by account id and service id. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] cloudProvider (required):
  ///
  /// * [String] id (required):
  ///
  /// * [String] serviceId (required):
  ///
  /// * [O11yO11yUpdateServiceIn] o11yO11yUpdateServiceIn (required):
  Future<void> updateService(String cloudProvider, String id, String serviceId, O11yO11yUpdateServiceIn o11yO11yUpdateServiceIn,) async {
    final response = await updateServiceWithHttpInfo(cloudProvider, id, serviceId, o11yO11yUpdateServiceIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Renames a service account.
  ///
  /// Renames a service account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yServiceAccountUpdateIn] o11yO11yServiceAccountUpdateIn (required):
  Future<Response> updateServiceAccountWithHttpInfo(String id, O11yO11yServiceAccountUpdateIn o11yO11yServiceAccountUpdateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/service_accounts/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yServiceAccountUpdateIn;

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

  /// Renames a service account.
  ///
  /// Renames a service account.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yServiceAccountUpdateIn] o11yO11yServiceAccountUpdateIn (required):
  Future<void> updateServiceAccount(String id, O11yO11yServiceAccountUpdateIn o11yO11yServiceAccountUpdateIn,) async {
    final response = await updateServiceAccountWithHttpInfo(id, o11yO11yServiceAccountUpdateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Renames an API key or moves its expiry.
  ///
  /// Renames an API key or moves its expiry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] fid (required):
  ///
  /// * [O11yO11yAPIKeyUpdateIn] o11yO11yAPIKeyUpdateIn (required):
  Future<Response> updateServiceAccountKeyWithHttpInfo(String id, String fid, O11yO11yAPIKeyUpdateIn o11yO11yAPIKeyUpdateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/service_accounts/{id}/keys/{fid}'
      .replaceAll('{id}', id)
      .replaceAll('{fid}', fid);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yAPIKeyUpdateIn;

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

  /// Renames an API key or moves its expiry.
  ///
  /// Renames an API key or moves its expiry.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] fid (required):
  ///
  /// * [O11yO11yAPIKeyUpdateIn] o11yO11yAPIKeyUpdateIn (required):
  Future<void> updateServiceAccountKey(String id, String fid, O11yO11yAPIKeyUpdateIn o11yO11yAPIKeyUpdateIn,) async {
    final response = await updateServiceAccountKeyWithHttpInfo(id, fid, o11yO11yAPIKeyUpdateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Changes a mapper's field context, config or enabled state.
  ///
  /// Changes a mapper's field context, config or enabled state. Every field is optional and only the ones sent are applied.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [String] mapperId (required):
  ///
  /// * [O11yO11ySpanMapperUpdateIn] o11yO11ySpanMapperUpdateIn (required):
  Future<Response> updateSpanMapperWithHttpInfo(String groupId, String mapperId, O11yO11ySpanMapperUpdateIn o11yO11ySpanMapperUpdateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/span_mapper_groups/{groupId}/span_mappers/{mapperId}'
      .replaceAll('{groupId}', groupId)
      .replaceAll('{mapperId}', mapperId);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11ySpanMapperUpdateIn;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Changes a mapper's field context, config or enabled state.
  ///
  /// Changes a mapper's field context, config or enabled state. Every field is optional and only the ones sent are applied.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [String] mapperId (required):
  ///
  /// * [O11yO11ySpanMapperUpdateIn] o11yO11ySpanMapperUpdateIn (required):
  Future<void> updateSpanMapper(String groupId, String mapperId, O11yO11ySpanMapperUpdateIn o11yO11ySpanMapperUpdateIn,) async {
    final response = await updateSpanMapperWithHttpInfo(groupId, mapperId, o11yO11ySpanMapperUpdateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Changes a group's name, condition or enabled state.
  ///
  /// Changes a group's name, condition or enabled state. Every field is optional and only the ones sent are applied.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [O11yO11ySpanMapperGroupUpdateIn] o11yO11ySpanMapperGroupUpdateIn (required):
  Future<Response> updateSpanMapperGroupWithHttpInfo(String groupId, O11yO11ySpanMapperGroupUpdateIn o11yO11ySpanMapperGroupUpdateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/span_mapper_groups/{groupId}'
      .replaceAll('{groupId}', groupId);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11ySpanMapperGroupUpdateIn;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Changes a group's name, condition or enabled state.
  ///
  /// Changes a group's name, condition or enabled state. Every field is optional and only the ones sent are applied.  Callers need the admin role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///
  /// * [O11yO11ySpanMapperGroupUpdateIn] o11yO11ySpanMapperGroupUpdateIn (required):
  Future<void> updateSpanMapperGroup(String groupId, O11yO11ySpanMapperGroupUpdateIn o11yO11ySpanMapperGroupUpdateIn,) async {
    final response = await updateSpanMapperGroupWithHttpInfo(groupId, o11yO11ySpanMapperGroupUpdateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Changes how one span field is stored — selects or deselects it as a materialized column and tunes its index — and echoes the setting back.
  ///
  /// Changes how one span field is stored — selects or deselects it as a materialized column and tunes its index — and echoes the setting back.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yFieldSetting] o11yO11yFieldSetting (required):
  Future<Response> updateTraceFieldWithHttpInfo(O11yO11yFieldSetting o11yO11yFieldSetting,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/traces/fields';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yFieldSetting;

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

  /// Changes how one span field is stored — selects or deselects it as a materialized column and tunes its index — and echoes the setting back.
  ///
  /// Changes how one span field is stored — selects or deselects it as a materialized column and tunes its index — and echoes the setting back.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yFieldSetting] o11yO11yFieldSetting (required):
  Future<O11yO11yFieldSetting?> updateTraceField(O11yO11yFieldSetting o11yO11yFieldSetting,) async {
    final response = await updateTraceFieldWithHttpInfo(o11yO11yFieldSetting,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFieldSetting',) as O11yO11yFieldSetting;
    
    }
    return null;
  }

  /// Renames a funnel or rewrites its description, answering the funnel as it now stands.
  ///
  /// Renames a funnel or rewrites its description, answering the funnel as it now stands.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] funnelId (required):
  ///
  /// * [O11yO11yFunnelUpdateIn] o11yO11yFunnelUpdateIn (required):
  Future<Response> updateTraceFunnelWithHttpInfo(String funnelId, O11yO11yFunnelUpdateIn o11yO11yFunnelUpdateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/trace-funnels/{funnel_id}'
      .replaceAll('{funnel_id}', funnelId);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yFunnelUpdateIn;

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

  /// Renames a funnel or rewrites its description, answering the funnel as it now stands.
  ///
  /// Renames a funnel or rewrites its description, answering the funnel as it now stands.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [String] funnelId (required):
  ///
  /// * [O11yO11yFunnelUpdateIn] o11yO11yFunnelUpdateIn (required):
  Future<O11yO11yFunnelOut?> updateTraceFunnel(String funnelId, O11yO11yFunnelUpdateIn o11yO11yFunnelUpdateIn,) async {
    final response = await updateTraceFunnelWithHttpInfo(funnelId, o11yO11yFunnelUpdateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFunnelOut',) as O11yO11yFunnelOut;
    
    }
    return null;
  }

  /// Replaces a funnel's steps — the funnel is named in the body rather than the path — and answers the funnel as it now stands.
  ///
  /// Replaces a funnel's steps — the funnel is named in the body rather than the path — and answers the funnel as it now stands. A name or description sent alongside is applied too; an empty one leaves it as it was.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yFunnelStepsUpdateIn] o11yO11yFunnelStepsUpdateIn (required):
  Future<Response> updateTraceFunnelStepsWithHttpInfo(O11yO11yFunnelStepsUpdateIn o11yO11yFunnelStepsUpdateIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/trace-funnels/steps/update';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yFunnelStepsUpdateIn;

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

  /// Replaces a funnel's steps — the funnel is named in the body rather than the path — and answers the funnel as it now stands.
  ///
  /// Replaces a funnel's steps — the funnel is named in the body rather than the path — and answers the funnel as it now stands. A name or description sent alongside is applied too; an empty one leaves it as it was.  Callers need the editor role; the runtime's own gate enforces it.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yFunnelStepsUpdateIn] o11yO11yFunnelStepsUpdateIn (required):
  Future<O11yO11yFunnelOut?> updateTraceFunnelSteps(O11yO11yFunnelStepsUpdateIn o11yO11yFunnelStepsUpdateIn,) async {
    final response = await updateTraceFunnelStepsWithHttpInfo(o11yO11yFunnelStepsUpdateIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFunnelOut',) as O11yO11yFunnelOut;
    
    }
    return null;
  }

  /// Renames one org member, by user id — someone else, never the caller, who renames themselves through updateMyUser.
  ///
  /// Renames one org member, by user id — someone else, never the caller, who renames themselves through updateMyUser. Admin gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yUserUpdate] o11yO11yUserUpdate (required):
  Future<Response> updateUserWithHttpInfo(String id, O11yO11yUserUpdate o11yO11yUserUpdate,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/users/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yUserUpdate;

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

  /// Renames one org member, by user id — someone else, never the caller, who renames themselves through updateMyUser.
  ///
  /// Renames one org member, by user id — someone else, never the caller, who renames themselves through updateMyUser. Admin gate.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yUserUpdate] o11yO11yUserUpdate (required):
  Future<void> updateUser(String id, O11yO11yUserUpdate o11yO11yUserUpdate,) async {
    final response = await updateUserWithHttpInfo(id, o11yO11yUserUpdate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Renames one org member and may move their legacy role, answering with the updated record.
  ///
  /// Renames one org member and may move their legacy role, answering with the updated record. Admins may update anyone; a non-admin only themselves (the runtime's self-access gate).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yDeprecatedUserUpdate] o11yO11yDeprecatedUserUpdate (required):
  Future<Response> updateUserDeprecatedWithHttpInfo(String id, O11yO11yDeprecatedUserUpdate o11yO11yDeprecatedUserUpdate,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/user/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yDeprecatedUserUpdate;

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

  /// Renames one org member and may move their legacy role, answering with the updated record.
  ///
  /// Renames one org member and may move their legacy role, answering with the updated record. Admins may update anyone; a non-admin only themselves (the runtime's self-access gate).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [O11yO11yDeprecatedUserUpdate] o11yO11yDeprecatedUserUpdate (required):
  Future<O11yO11yDeprecatedUserOut?> updateUserDeprecated(String id, O11yO11yDeprecatedUserUpdate o11yO11yDeprecatedUserUpdate,) async {
    final response = await updateUserDeprecatedWithHttpInfo(id, o11yO11yDeprecatedUserUpdate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yDeprecatedUserOut',) as O11yO11yDeprecatedUserOut;
    
    }
    return null;
  }

  /// Sets one preference of the calling user, by name.
  ///
  /// Sets one preference of the calling user, by name. Viewer gate.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///
  /// * [O11yO11yUpdatablePreference] o11yO11yUpdatablePreference (required):
  Future<Response> updateUserPreferenceWithHttpInfo(String name, O11yO11yUpdatablePreference o11yO11yUpdatablePreference,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/user/preferences/{name}'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yUpdatablePreference;

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

  /// Sets one preference of the calling user, by name.
  ///
  /// Sets one preference of the calling user, by name. Viewer gate.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///
  /// * [O11yO11yUpdatablePreference] o11yO11yUpdatablePreference (required):
  Future<void> updateUserPreference(String name, O11yO11yUpdatablePreference o11yO11yUpdatablePreference,) async {
    final response = await updateUserPreferenceWithHttpInfo(name, o11yO11yUpdatablePreference,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists the traces that match a funnel described inline — the builder's \"try this\" before anything is saved.
  ///
  /// Lists the traces that match a funnel described inline — the builder's \"try this\" before anything is saved.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDraftFunnelIn] o11yO11yDraftFunnelIn (required):
  Future<Response> validateDraftFunnelTracesWithHttpInfo(O11yO11yDraftFunnelIn o11yO11yDraftFunnelIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/trace-funnels/analytics/validate';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yDraftFunnelIn;

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

  /// Lists the traces that match a funnel described inline — the builder's \"try this\" before anything is saved.
  ///
  /// Lists the traces that match a funnel described inline — the builder's \"try this\" before anything is saved.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yDraftFunnelIn] o11yO11yDraftFunnelIn (required):
  Future<O11yO11yFunnelRowsOut?> validateDraftFunnelTraces(O11yO11yDraftFunnelIn o11yO11yDraftFunnelIn,) async {
    final response = await validateDraftFunnelTracesWithHttpInfo(o11yO11yDraftFunnelIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFunnelRowsOut',) as O11yO11yFunnelRowsOut;
    
    }
    return null;
  }

  /// Lists the traces that match a saved funnel over a window — the read that answers \"is this funnel finding anything at all\".
  ///
  /// Lists the traces that match a saved funnel over a window — the read that answers \"is this funnel finding anything at all\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] funnelId (required):
  ///
  /// * [O11yO11yFunnelWindowIn] o11yO11yFunnelWindowIn (required):
  Future<Response> validateTraceFunnelTracesWithHttpInfo(String funnelId, O11yO11yFunnelWindowIn o11yO11yFunnelWindowIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/trace-funnels/{funnel_id}/analytics/validate'
      .replaceAll('{funnel_id}', funnelId);

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yFunnelWindowIn;

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

  /// Lists the traces that match a saved funnel over a window — the read that answers \"is this funnel finding anything at all\".
  ///
  /// Lists the traces that match a saved funnel over a window — the read that answers \"is this funnel finding anything at all\".
  ///
  /// Parameters:
  ///
  /// * [String] funnelId (required):
  ///
  /// * [O11yO11yFunnelWindowIn] o11yO11yFunnelWindowIn (required):
  Future<O11yO11yFunnelRowsOut?> validateTraceFunnelTraces(String funnelId, O11yO11yFunnelWindowIn o11yO11yFunnelWindowIn,) async {
    final response = await validateTraceFunnelTracesWithHttpInfo(funnelId, o11yO11yFunnelWindowIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'O11yO11yFunnelRowsOut',) as O11yO11yFunnelRowsOut;
    
    }
    return null;
  }

  /// Checks that a reset-password token exists and has not expired, without consuming it.
  ///
  /// Checks that a reset-password token exists and has not expired, without consuming it. Unauthenticated: the token is the proof.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [O11yO11yResetTokenRef] o11yO11yResetTokenRef (required):
  Future<Response> verifyResetPasswordTokenWithHttpInfo(O11yO11yResetTokenRef o11yO11yResetTokenRef,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/o11y/reset_password_tokens/verify';

    // ignore: prefer_final_locals
    Object? postBody = o11yO11yResetTokenRef;

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

  /// Checks that a reset-password token exists and has not expired, without consuming it.
  ///
  /// Checks that a reset-password token exists and has not expired, without consuming it. Unauthenticated: the token is the proof.
  ///
  /// Parameters:
  ///
  /// * [O11yO11yResetTokenRef] o11yO11yResetTokenRef (required):
  Future<void> verifyResetPasswordToken(O11yO11yResetTokenRef o11yO11yResetTokenRef,) async {
    final response = await verifyResetPasswordTokenWithHttpInfo(o11yO11yResetTokenRef,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
