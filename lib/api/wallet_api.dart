//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class WalletApi {
  WalletApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the caller org's wallets, newest first, optionally NARROWED within the org by project, agent or account.
  ///
  /// Returns the caller org's wallets, newest first, optionally NARROWED within the org by project, agent or account. The org is always the bound isolation boundary — the filters only ever narrow inside it, so a caller can never widen past its own org.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project:
  ///   Project narrows to wallets scoped to one project. Must be a url-safe segment.
  ///
  /// * [String] agent:
  ///   Agent narrows to wallets scoped to one agent. Must be a url-safe segment.
  ///
  /// * [String] account:
  ///   Account narrows to wallets under one account id. Must be a url-safe segment.
  Future<Response> getWalletWithHttpInfo({ String? project, String? agent, String? account, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/wallet';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (project != null) {
      queryParams.addAll(_queryParams('', 'project', project));
    }
    if (agent != null) {
      queryParams.addAll(_queryParams('', 'agent', agent));
    }
    if (account != null) {
      queryParams.addAll(_queryParams('', 'account', account));
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

  /// Returns the caller org's wallets, newest first, optionally NARROWED within the org by project, agent or account.
  ///
  /// Returns the caller org's wallets, newest first, optionally NARROWED within the org by project, agent or account. The org is always the bound isolation boundary — the filters only ever narrow inside it, so a caller can never widen past its own org.
  ///
  /// Parameters:
  ///
  /// * [String] project:
  ///   Project narrows to wallets scoped to one project. Must be a url-safe segment.
  ///
  /// * [String] agent:
  ///   Agent narrows to wallets scoped to one agent. Must be a url-safe segment.
  ///
  /// * [String] account:
  ///   Account narrows to wallets under one account id. Must be a url-safe segment.
  Future<WalletList?> getWallet({ String? project, String? agent, String? account, }) async {
    final response = await getWalletWithHttpInfo( project: project, agent: agent, account: account, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WalletList',) as WalletList;
    
    }
    return null;
  }

  /// Returns the caller org's wallet accounts, newest first.
  ///
  /// Returns the caller org's wallet accounts, newest first. Accounts are physically org-scoped, so another tenant's are not reachable from here.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getWalletAccountsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/wallet/accounts';

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

  /// Returns the caller org's wallet accounts, newest first.
  ///
  /// Returns the caller org's wallet accounts, newest first. Accounts are physically org-scoped, so another tenant's are not reachable from here.
  Future<AccountList?> getWalletAccounts() async {
    final response = await getWalletAccountsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountList',) as AccountList;
    
    }
    return null;
  }

  /// Returns one of the caller org's wallets: its scope, custody kind, tier, chain and on-chain address.
  ///
  /// Returns one of the caller org's wallets: its scope, custody kind, tier, chain and on-chain address. The custody handle to the signing material is never part of the answer. A wallet id another org owns reads as not found, so the response cannot confirm that it exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getWalletByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/wallet/{id}'
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

  /// Returns one of the caller org's wallets: its scope, custody kind, tier, chain and on-chain address.
  ///
  /// Returns one of the caller org's wallets: its scope, custody kind, tier, chain and on-chain address. The custody handle to the signing material is never part of the answer. A wallet id another org owns reads as not found, so the response cannot confirm that it exists.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Wallet?> getWalletById(String id,) async {
    final response = await getWalletByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Wallet',) as Wallet;
    
    }
    return null;
  }

  /// Provisions a new signing identity under one of the caller org's accounts and answers the stored wallet including its on-chain address.
  ///
  /// Provisions a new signing identity under one of the caller org's accounts and answers the stored wallet including its on-chain address. The custody backend generates the key material — a KMS-sealed secp256k1 key, an MPC threshold key on the ring, or a Safe smart wallet owned by one — and the HANDLE to it is kept server-side and never returned. A custody kind the deployment has not wired fails CLOSED with 503: a signature is never fabricated. The wallet is scoped to the org, the caller's ambient project, and optionally an agent and the named account; those narrowings are what its key ref is derived from, so each must be a url-safe segment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateWalletIn] createWalletIn (required):
  Future<Response> postWalletWithHttpInfo(CreateWalletIn createWalletIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/wallet';

    // ignore: prefer_final_locals
    Object? postBody = createWalletIn;

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

  /// Provisions a new signing identity under one of the caller org's accounts and answers the stored wallet including its on-chain address.
  ///
  /// Provisions a new signing identity under one of the caller org's accounts and answers the stored wallet including its on-chain address. The custody backend generates the key material — a KMS-sealed secp256k1 key, an MPC threshold key on the ring, or a Safe smart wallet owned by one — and the HANDLE to it is kept server-side and never returned. A custody kind the deployment has not wired fails CLOSED with 503: a signature is never fabricated. The wallet is scoped to the org, the caller's ambient project, and optionally an agent and the named account; those narrowings are what its key ref is derived from, so each must be a url-safe segment.
  ///
  /// Parameters:
  ///
  /// * [CreateWalletIn] createWalletIn (required):
  Future<Wallet?> postWallet(CreateWalletIn createWalletIn,) async {
    final response = await postWalletWithHttpInfo(createWalletIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Wallet',) as Wallet;
    
    }
    return null;
  }

  /// Opens a named wallet account for the caller's org.
  ///
  /// Opens a named wallet account for the caller's org. An account is a GROUPING of wallets, not a key or a balance: wallets are created under one and can be listed by it. The org is stamped by the server from the validated principal, so a request can never open an account in another tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateAccountIn] createAccountIn (required):
  Future<Response> postWalletAccountsWithHttpInfo(CreateAccountIn createAccountIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/wallet/accounts';

    // ignore: prefer_final_locals
    Object? postBody = createAccountIn;

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

  /// Opens a named wallet account for the caller's org.
  ///
  /// Opens a named wallet account for the caller's org. An account is a GROUPING of wallets, not a key or a balance: wallets are created under one and can be listed by it. The org is stamped by the server from the validated principal, so a request can never open an account in another tenant.
  ///
  /// Parameters:
  ///
  /// * [CreateAccountIn] createAccountIn (required):
  Future<WalletAccount?> postWalletAccounts(CreateAccountIn createAccountIn,) async {
    final response = await postWalletAccountsWithHttpInfo(createAccountIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WalletAccount',) as WalletAccount;
    
    }
    return null;
  }

  /// Rolls one wallet's signing material through its own custody backend and answers the wallet with whatever address that produced.
  ///
  /// Rolls one wallet's signing material through its own custody backend and answers the wallet with whatever address that produced. For KMS custody a fresh secp256k1 key is generated and sealed, which CHANGES the address — funds and approvals at the old address do not move. For a Safe the address is counterfactual and the owner shares are ring-managed, so rotation is a no-op and the address is unchanged. A backend that is not configured fails closed with 503 rather than leaving the wallet half-rotated.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> postWalletByIdKeysWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/wallet/{id}/keys'
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

  /// Rolls one wallet's signing material through its own custody backend and answers the wallet with whatever address that produced.
  ///
  /// Rolls one wallet's signing material through its own custody backend and answers the wallet with whatever address that produced. For KMS custody a fresh secp256k1 key is generated and sealed, which CHANGES the address — funds and approvals at the old address do not move. For a Safe the address is counterfactual and the owner shares are ring-managed, so rotation is a no-op and the address is unchanged. A backend that is not configured fails closed with 503 rather than leaving the wallet half-rotated.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Wallet?> postWalletByIdKeys(String id,) async {
    final response = await postWalletByIdKeysWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Wallet',) as Wallet;
    
    }
    return null;
  }

  /// Produces a secp256k1 signature from one of the caller org's wallets over a 32-byte digest, through whichever custody backend that wallet uses.
  ///
  /// Produces a secp256k1 signature from one of the caller org's wallets over a 32-byte digest, through whichever custody backend that wallet uses. Give it either a `digest` (32 bytes as hex, signed verbatim) or a `message` (hashed with Keccak256 first) — exactly one is required. The private key never leaves its backend: KMS custody opens the sealed key in-process, MPC custody produces a threshold signature on the ring. The answer carries the digest that was signed alongside the signature, so a caller can verify what it got.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SignIn] signIn (required):
  Future<Response> postWalletByIdSignWithHttpInfo(String id, SignIn signIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/wallet/{id}/sign'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = signIn;

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

  /// Produces a secp256k1 signature from one of the caller org's wallets over a 32-byte digest, through whichever custody backend that wallet uses.
  ///
  /// Produces a secp256k1 signature from one of the caller org's wallets over a 32-byte digest, through whichever custody backend that wallet uses. Give it either a `digest` (32 bytes as hex, signed verbatim) or a `message` (hashed with Keccak256 first) — exactly one is required. The private key never leaves its backend: KMS custody opens the sealed key in-process, MPC custody produces a threshold signature on the ring. The answer carries the digest that was signed alongside the signature, so a caller can verify what it got.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SignIn] signIn (required):
  Future<Signature?> postWalletByIdSign(String id, SignIn signIn,) async {
    final response = await postWalletByIdSignWithHttpInfo(id, signIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Signature',) as Signature;
    
    }
    return null;
  }

  /// Composes a Safe transaction on the MPC ring and answers its EIP-712 hash together with the owner approval the ring's threshold signature produced.
  ///
  /// Composes a Safe transaction on the MPC ring and answers its EIP-712 hash together with the owner approval the ring's threshold signature produced. Only a wallet whose custody is \"safe\" can do this — any other custody is a 400, because the backend itself is asked whether it can propose rather than the kind being switched on. The ring computes the Safe-tx hash bound to the Safe contract and the chain id, so the hash a caller gets back is the one the Safe will verify. This PROPOSES: it does not execute the transaction.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SafeTxIn] safeTxIn (required):
  Future<Response> postWalletByIdTransactionsWithHttpInfo(String id, SafeTxIn safeTxIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/wallet/{id}/transactions'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = safeTxIn;

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

  /// Composes a Safe transaction on the MPC ring and answers its EIP-712 hash together with the owner approval the ring's threshold signature produced.
  ///
  /// Composes a Safe transaction on the MPC ring and answers its EIP-712 hash together with the owner approval the ring's threshold signature produced. Only a wallet whose custody is \"safe\" can do this — any other custody is a 400, because the backend itself is asked whether it can propose rather than the kind being switched on. The ring computes the Safe-tx hash bound to the Safe contract and the chain id, so the hash a caller gets back is the one the Safe will verify. This PROPOSES: it does not execute the transaction.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SafeTxIn] safeTxIn (required):
  Future<SafeProposal?> postWalletByIdTransactions(String id, SafeTxIn safeTxIn,) async {
    final response = await postWalletByIdTransactionsWithHttpInfo(id, safeTxIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SafeProposal',) as SafeProposal;
    
    }
    return null;
  }
}
