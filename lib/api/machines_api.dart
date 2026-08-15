//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class MachinesApi {
  MachinesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Binds a cloud Agent to one of the caller org's machines: the machine is recorded as running that Agent's @hanzo/bot runtime.
  ///
  /// Binds a cloud Agent to one of the caller org's machines: the machine is recorded as running that Agent's @hanzo/bot runtime. The owning org is the validated tenant, never a client field.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine to bind, from the URL path.
  ///
  /// * [BindAgentReq] bindAgentReq (required):
  Future<Response> bindMachineAgentWithHttpInfo(String id, BindAgentReq bindAgentReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/machines/{id}/agent'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = bindAgentReq;

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

  /// Binds a cloud Agent to one of the caller org's machines: the machine is recorded as running that Agent's @hanzo/bot runtime.
  ///
  /// Binds a cloud Agent to one of the caller org's machines: the machine is recorded as running that Agent's @hanzo/bot runtime. The owning org is the validated tenant, never a client field.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine to bind, from the URL path.
  ///
  /// * [BindAgentReq] bindAgentReq (required):
  Future<AgentBinding?> bindMachineAgent(String id, BindAgentReq bindAgentReq,) async {
    final response = await bindMachineAgentWithHttpInfo(id, bindAgentReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentBinding',) as AgentBinding;
    
    }
    return null;
  }

  /// Terminates one of the caller org's machines.
  ///
  /// Terminates one of the caller org's machines. Visor takes the machine identity as owner+name, and the owner is the validated principal, so a caller can only ever terminate its own tenant's machine. Answers 204.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine's org-scoped NAME — the stable key Visor addresses a machine by (owner/name), not the ephemeral provider id.
  Future<Response> deleteMachineWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/machines/{id}'
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

  /// Terminates one of the caller org's machines.
  ///
  /// Terminates one of the caller org's machines. Visor takes the machine identity as owner+name, and the owner is the validated principal, so a caller can only ever terminate its own tenant's machine. Answers 204.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine's org-scoped NAME — the stable key Visor addresses a machine by (owner/name), not the ephemeral provider id.
  Future<void> deleteMachine(String id,) async {
    final response = await deleteMachineWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns one of the caller org's machines by its org-scoped name.
  ///
  /// Returns one of the caller org's machines by its org-scoped name. Visor keys the lookup by owner/name, so an id belonging to another tenant resolves to not-found rather than another org's machine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine's org-scoped NAME — the stable key Visor addresses a machine by (owner/name), not the ephemeral provider id.
  Future<Response> getMachineWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/machines/{id}'
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

  /// Returns one of the caller org's machines by its org-scoped name.
  ///
  /// Returns one of the caller org's machines by its org-scoped name. Visor keys the lookup by owner/name, so an id belonging to another tenant resolves to not-found rather than another org's machine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine's org-scoped NAME — the stable key Visor addresses a machine by (owner/name), not the ephemeral provider id.
  Future<MachineView?> getMachine(String id,) async {
    final response = await getMachineWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MachineView',) as MachineView;
    
    }
    return null;
  }

  /// Returns the agent binding of one of the caller org's machines, or 404 when the machine runs no bot runtime.
  ///
  /// Returns the agent binding of one of the caller org's machines, or 404 when the machine runs no bot runtime.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine's org-scoped NAME — the stable key Visor addresses a machine by (owner/name), not the ephemeral provider id.
  Future<Response> getMachineAgentWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/machines/{id}/agent'
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

  /// Returns the agent binding of one of the caller org's machines, or 404 when the machine runs no bot runtime.
  ///
  /// Returns the agent binding of one of the caller org's machines, or 404 when the machine runs no bot runtime.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine's org-scoped NAME — the stable key Visor addresses a machine by (owner/name), not the ephemeral provider id.
  Future<AgentBinding?> getMachineAgent(String id,) async {
    final response = await getMachineAgentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentBinding',) as AgentBinding;
    
    }
    return null;
  }

  /// Returns every agent↔machine binding in the caller's org — which machines are running which cloud Agent, with vm's own reconciled status.
  ///
  /// Returns every agent↔machine binding in the caller's org — which machines are running which cloud Agent, with vm's own reconciled status.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listMachineAgentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/machines/agents';

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

  /// Returns every agent↔machine binding in the caller's org — which machines are running which cloud Agent, with vm's own reconciled status.
  ///
  /// Returns every agent↔machine binding in the caller's org — which machines are running which cloud Agent, with vm's own reconciled status.
  Future<BindingList?> listMachineAgents() async {
    final response = await listMachineAgentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BindingList',) as BindingList;
    
    }
    return null;
  }

  /// Returns every machine the caller's org has — Visor's registry, the live DigitalOcean droplets and the DOKS worker nodes (deduped into one union), plus the BYO machines that dialed in via `hanzo link` (provider \"byo\").
  ///
  /// Returns every machine the caller's org has — Visor's registry, the live DigitalOcean droplets and the DOKS worker nodes (deduped into one union), plus the BYO machines that dialed in via `hanzo link` (provider \"byo\").  A source Visor cannot answer for is logged and skipped, never an error: one wedged upstream must not hide the machines the other sources can see.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listMachinesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/machines';

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

  /// Returns every machine the caller's org has — Visor's registry, the live DigitalOcean droplets and the DOKS worker nodes (deduped into one union), plus the BYO machines that dialed in via `hanzo link` (provider \"byo\").
  ///
  /// Returns every machine the caller's org has — Visor's registry, the live DigitalOcean droplets and the DOKS worker nodes (deduped into one union), plus the BYO machines that dialed in via `hanzo link` (provider \"byo\").  A source Visor cannot answer for is logged and skipped, never an error: one wedged upstream must not hide the machines the other sources can see.
  Future<MachineList?> listMachines() async {
    final response = await listMachinesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MachineList',) as MachineList;
    
    }
    return null;
  }

  /// Launch a metered machine for your org, or price one first with dryRun
  ///
  /// Provisions a machine owned by the caller's org and answers 201 with the machine. Send `dryRun: true` to get a PRICE QUOTE instead: 200 with the upstream quote passed through verbatim, nothing launched and nothing spent. Two response shapes on one address is the rule to know, and it is why this is not a typed op.  Metering is not this plane's: the launch fronts the compute provider's resell endpoint, which owns the balance gate and the per-hour meter, and cloud only forwards the tenant. Ownership is the validated principal's org and is never read from the body, so a launch always lands in the caller's OWN tenant and the machine it creates is only ever visible to that tenant. Fails closed: a validated principal is required (403 without one) and `size` (or its `instanceType` alias) is required (400).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postMachinesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/machines';

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

  /// Launch a metered machine for your org, or price one first with dryRun
  ///
  /// Provisions a machine owned by the caller's org and answers 201 with the machine. Send `dryRun: true` to get a PRICE QUOTE instead: 200 with the upstream quote passed through verbatim, nothing launched and nothing spent. Two response shapes on one address is the rule to know, and it is why this is not a typed op.  Metering is not this plane's: the launch fronts the compute provider's resell endpoint, which owns the balance gate and the per-hour meter, and cloud only forwards the tenant. Ownership is the validated principal's org and is never read from the body, so a launch always lands in the caller's OWN tenant and the machine it creates is only ever visible to that tenant. Fails closed: a validated principal is required (403 without one) and `size` (or its `instanceType` alias) is required (400).
  Future<void> postMachines() async {
    final response = await postMachinesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Detaches the agent runtime from one of the caller org's machines.
  ///
  /// Detaches the agent runtime from one of the caller org's machines. The machine stays — this halts the bot, it does not terminate the compute. Answers 204.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine's org-scoped NAME — the stable key Visor addresses a machine by (owner/name), not the ephemeral provider id.
  Future<Response> unbindMachineAgentWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/machines/{id}/agent'
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

  /// Detaches the agent runtime from one of the caller org's machines.
  ///
  /// Detaches the agent runtime from one of the caller org's machines. The machine stays — this halts the bot, it does not terminate the compute. Answers 204.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the machine's org-scoped NAME — the stable key Visor addresses a machine by (owner/name), not the ephemeral provider id.
  Future<void> unbindMachineAgent(String id,) async {
    final response = await unbindMachineAgentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
