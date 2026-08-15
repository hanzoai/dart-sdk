//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class LegalApi {
  LegalApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the org's generated documents, newest first, WITHOUT their rendered content — fetch one document to read its body.
  ///
  /// Returns the org's generated documents, newest first, WITHOUT their rendered content — fetch one document to read its body.  The response is marked no-store: these records name the counterparties an org is contracting with, and must not sit in a shared cache.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit bounds the page. Absent or unparseable means the store's own default.
  Future<Response> getLegalDocumentsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/legal/documents';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Returns the org's generated documents, newest first, WITHOUT their rendered content — fetch one document to read its body.
  ///
  /// Returns the org's generated documents, newest first, WITHOUT their rendered content — fetch one document to read its body.  The response is marked no-store: these records name the counterparties an org is contracting with, and must not sit in a shared cache.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit bounds the page. Absent or unparseable means the store's own default.
  Future<DocumentPage?> getLegalDocuments({ int? limit, }) async {
    final response = await getLegalDocumentsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentPage',) as DocumentPage;
    
    }
    return null;
  }

  /// Returns one of the org's documents WITH its rendered body.
  ///
  /// Returns one of the org's documents WITH its rendered body. 404 when the org has no document with that id — a document is never readable across orgs.  The response is marked no-store: the body is contract text, sealed at rest and returned only to the owning org, and must not sit in a shared cache.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the document's server-minted handle, \"doc_\"-prefixed.
  Future<Response> getLegalDocumentsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/legal/documents/{id}'
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

  /// Returns one of the org's documents WITH its rendered body.
  ///
  /// Returns one of the org's documents WITH its rendered body. 404 when the org has no document with that id — a document is never readable across orgs.  The response is marked no-store: the body is contract text, sealed at rest and returned only to the owning org, and must not sit in a shared cache.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the document's server-minted handle, \"doc_\"-prefixed.
  Future<DocumentReply?> getLegalDocumentsById(String id,) async {
    final response = await getLegalDocumentsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentReply',) as DocumentReply;
    
    }
    return null;
  }

  /// Returns the org's filing records, newest first — which documents were filed where, through which provider, and what the filing's honest status is.
  ///
  /// Returns the org's filing records, newest first — which documents were filed where, through which provider, and what the filing's honest status is.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit bounds the page. Absent or unparseable means the store's own default.
  Future<Response> getLegalFilingsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/legal/filings';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Returns the org's filing records, newest first — which documents were filed where, through which provider, and what the filing's honest status is.
  ///
  /// Returns the org's filing records, newest first — which documents were filed where, through which provider, and what the filing's honest status is.
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Limit bounds the page. Absent or unparseable means the store's own default.
  Future<FilingPage?> getLegalFilings({ int? limit, }) async {
    final response = await getLegalFilingsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FilingPage',) as FilingPage;
    
    }
    return null;
  }

  /// Reports that the legal subsystem is serving and how many built-in templates its catalog carries.
  ///
  /// Reports that the legal subsystem is serving and how many built-in templates its catalog carries. It reads no tenant, so a liveness prober that sends no principal is answered rather than refused.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getLegalHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/legal/health';

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

  /// Reports that the legal subsystem is serving and how many built-in templates its catalog carries.
  ///
  /// Reports that the legal subsystem is serving and how many built-in templates its catalog carries. It reads no tenant, so a liveness prober that sends no principal is answered rather than refused.
  Future<LegalHealth?> getLegalHealth() async {
    final response = await getLegalHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LegalHealth',) as LegalHealth;
    
    }
    return null;
  }

  /// Returns the org's effective template catalog: every built-in template, with any the org has overridden replaced by its own latest version.
  ///
  /// Returns the org's effective template catalog: every built-in template, with any the org has overridden replaced by its own latest version.  The listing carries each template's metadata and its declared MERGE FIELDS — the keys a document generation must supply — but never the template bodies; fetch one template to get its body. Templates in the formation and equity categories are marked counselReview: every document rendered from them carries a counsel notice, and that posture cannot be dropped by an override.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getLegalTemplatesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/legal/templates';

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

  /// Returns the org's effective template catalog: every built-in template, with any the org has overridden replaced by its own latest version.
  ///
  /// Returns the org's effective template catalog: every built-in template, with any the org has overridden replaced by its own latest version.  The listing carries each template's metadata and its declared MERGE FIELDS — the keys a document generation must supply — but never the template bodies; fetch one template to get its body. Templates in the formation and equity categories are marked counselReview: every document rendered from them carries a counsel notice, and that posture cannot be dropped by an override.
  Future<TemplateCatalog?> getLegalTemplates() async {
    final response = await getLegalTemplatesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TemplateCatalog',) as TemplateCatalog;
    
    }
    return null;
  }

  /// Returns one template resolved for the caller's org — the org's own override if it has saved one, else the built-in — with its full text/template body and its declared merge fields.
  ///
  /// Returns one template resolved for the caller's org — the org's own override if it has saved one, else the built-in — with its full text/template body and its declared merge fields. 404 when neither exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the template's stable id, e.g. \"nda\" or \"safe\".
  Future<Response> getLegalTemplatesByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/legal/templates/{id}'
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

  /// Returns one template resolved for the caller's org — the org's own override if it has saved one, else the built-in — with its full text/template body and its declared merge fields.
  ///
  /// Returns one template resolved for the caller's org — the org's own override if it has saved one, else the built-in — with its full text/template body and its declared merge fields. 404 when neither exists.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the template's stable id, e.g. \"nda\" or \"safe\".
  Future<TemplateReply?> getLegalTemplatesById(String id,) async {
    final response = await getLegalTemplatesByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TemplateReply',) as TemplateReply;
    
    }
    return null;
  }

  /// Renders a document from a template and the caller's own merge data, seals it in the org's store, and returns it with its rendered body.
  ///
  /// Renders a document from a template and the caller's own merge data, seals it in the org's store, and returns it with its rendered body.  The render is PURE and deterministic — no clock, no I/O — so the same template version and the same data always produce identical bytes, which is what makes a generated contract reproducible. It fails CLOSED on a missing merge field: there is no blank-filled contract, only a 400 naming the fields that were absent. When the template is counsel-review the rendered body opens with the counsel notice, which no caller can suppress.  The document is a DRAFT. Hanzo Legal manages documents; it does not give legal advice and does not determine that a document is valid or sufficient.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GenerateRequest] generateRequest (required):
  Future<Response> postLegalDocumentsWithHttpInfo(GenerateRequest generateRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/legal/documents';

    // ignore: prefer_final_locals
    Object? postBody = generateRequest;

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

  /// Renders a document from a template and the caller's own merge data, seals it in the org's store, and returns it with its rendered body.
  ///
  /// Renders a document from a template and the caller's own merge data, seals it in the org's store, and returns it with its rendered body.  The render is PURE and deterministic — no clock, no I/O — so the same template version and the same data always produce identical bytes, which is what makes a generated contract reproducible. It fails CLOSED on a missing merge field: there is no blank-filled contract, only a 400 naming the fields that were absent. When the template is counsel-review the rendered body opens with the counsel notice, which no caller can suppress.  The document is a DRAFT. Hanzo Legal manages documents; it does not give legal advice and does not determine that a document is valid or sufficient.
  ///
  /// Parameters:
  ///
  /// * [GenerateRequest] generateRequest (required):
  Future<DocumentReply?> postLegalDocuments(GenerateRequest generateRequest,) async {
    final response = await postLegalDocumentsWithHttpInfo(generateRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DocumentReply',) as DocumentReply;
    
    }
    return null;
  }

  /// Opens an e-signature request over one document and moves it to out_for_signature, returning the provider's reference for the request.
  ///
  /// Opens an e-signature request over one document and moves it to out_for_signature, returning the provider's reference for the request.  The provider is whatever this deployment has wired. The honest default is \"manual\": the request is recorded and the org fulfils it out of band — nothing here fabricates a signature, and the stub never reports itself complete.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the document to send for signature, from the path.
  ///
  /// * [SignRequest] signRequest (required):
  Future<Response> postLegalDocumentsByIdSignWithHttpInfo(String id, SignRequest signRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/legal/documents/{id}/sign'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = signRequest;

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

  /// Opens an e-signature request over one document and moves it to out_for_signature, returning the provider's reference for the request.
  ///
  /// Opens an e-signature request over one document and moves it to out_for_signature, returning the provider's reference for the request.  The provider is whatever this deployment has wired. The honest default is \"manual\": the request is recorded and the org fulfils it out of band — nothing here fabricates a signature, and the stub never reports itself complete.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the document to send for signature, from the path.
  ///
  /// * [SignRequest] signRequest (required):
  Future<SignReply?> postLegalDocumentsByIdSign(String id, SignRequest signRequest,) async {
    final response = await postLegalDocumentsByIdSignWithHttpInfo(id, signRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SignReply',) as SignReply;
    
    }
    return null;
  }

  /// Record that a generated document's signature request completed
  ///
  /// Records completion of the signature request opened over a generated document and answers the document with a `signed` flag.  The e-sign provider's own status is consulted FIRST and is the default answer; an explicit `signed` field in the body overrides it. That override is the whole point: the default `manual` provider never self-completes, so a reviewer (or a real provider's webhook) is what moves the document. A completion flips the document to `signed`, stamps `signedAt`, and writes a `legal.document.signed` audit event; a provider still reporting incomplete answers 200 with the document unchanged, so the call is safe to repeat and never fabricates a signature.  Org-scoped and fails closed: a validated principal is required (403 without one), the document is read under the caller's OWN org so another tenant's id is a 404, a document with no open signature request is a 400, and a provider whose status call errors is a 502.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> postLegalDocumentsByIdSignCompleteWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/legal/documents/{id}/sign/complete'
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

  /// Record that a generated document's signature request completed
  ///
  /// Records completion of the signature request opened over a generated document and answers the document with a `signed` flag.  The e-sign provider's own status is consulted FIRST and is the default answer; an explicit `signed` field in the body overrides it. That override is the whole point: the default `manual` provider never self-completes, so a reviewer (or a real provider's webhook) is what moves the document. A completion flips the document to `signed`, stamps `signedAt`, and writes a `legal.document.signed` audit event; a provider still reporting incomplete answers 200 with the document unchanged, so the call is safe to repeat and never fabricates a signature.  Org-scoped and fails closed: a validated principal is required (403 without one), the document is read under the caller's OWN org so another tenant's id is a 404, a document with no open signature request is a 400, and a provider whose status call errors is a 502.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> postLegalDocumentsByIdSignComplete(String id,) async {
    final response = await postLegalDocumentsByIdSignCompleteWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Records a filing of one or more of the org's documents with a state or agency, and returns the tracking record.
  ///
  /// Records a filing of one or more of the org's documents with a state or agency, and returns the tracking record.  It is a TRACKING record, not an autonomous filing. With no filing partner wired the honest status is \"manual\" and the note says so: the documents were generated for signature, and the org files them through its registered agent. Nothing here invents a filing id it does not have.  Every document id must belong to the caller's org; one that does not is a 404 naming it, so a filing can never reach across tenants.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FilingRequest] filingRequest (required):
  Future<Response> postLegalFilingsWithHttpInfo(FilingRequest filingRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/legal/filings';

    // ignore: prefer_final_locals
    Object? postBody = filingRequest;

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

  /// Records a filing of one or more of the org's documents with a state or agency, and returns the tracking record.
  ///
  /// Records a filing of one or more of the org's documents with a state or agency, and returns the tracking record.  It is a TRACKING record, not an autonomous filing. With no filing partner wired the honest status is \"manual\" and the note says so: the documents were generated for signature, and the org files them through its registered agent. Nothing here invents a filing id it does not have.  Every document id must belong to the caller's org; one that does not is a 404 naming it, so a filing can never reach across tenants.
  ///
  /// Parameters:
  ///
  /// * [FilingRequest] filingRequest (required):
  Future<FilingReply?> postLegalFilings(FilingRequest filingRequest,) async {
    final response = await postLegalFilingsWithHttpInfo(filingRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FilingReply',) as FilingReply;
    
    }
    return null;
  }

  /// Saves the org's own version of a template — a custom NDA, a house MSA — and returns it with its new version number.
  ///
  /// Saves the org's own version of a template — a custom NDA, a house MSA — and returns it with its new version number. It takes effect for that org only; other orgs keep the built-in.  Two boundaries cannot be crossed here. Overriding a built-in INHERITS its category and its counsel-review posture, which can be raised but never dropped; and a formation or equity template is counsel-review whatever the caller sends, so no org can generate a securities-class document without the notice.  The body is validated on save, not at generation: a template that references an UNDECLARED merge field is refused with 400 rather than stored and rendered blank into a contract months later.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the template to override, from the path. Overriding a built-in id inherits that built-in's category, title and counsel-review posture.
  ///
  /// * [TemplateOverride] templateOverride (required):
  Future<Response> putLegalTemplatesByIdWithHttpInfo(String id, TemplateOverride templateOverride,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/legal/templates/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = templateOverride;

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

  /// Saves the org's own version of a template — a custom NDA, a house MSA — and returns it with its new version number.
  ///
  /// Saves the org's own version of a template — a custom NDA, a house MSA — and returns it with its new version number. It takes effect for that org only; other orgs keep the built-in.  Two boundaries cannot be crossed here. Overriding a built-in INHERITS its category and its counsel-review posture, which can be raised but never dropped; and a formation or equity template is counsel-review whatever the caller sends, so no org can generate a securities-class document without the notice.  The body is validated on save, not at generation: a template that references an UNDECLARED merge field is refused with 400 rather than stored and rendered blank into a contract months later.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the template to override, from the path. Overriding a built-in id inherits that built-in's category, title and counsel-review posture.
  ///
  /// * [TemplateOverride] templateOverride (required):
  Future<TemplateReply?> putLegalTemplatesById(String id, TemplateOverride templateOverride,) async {
    final response = await putLegalTemplatesByIdWithHttpInfo(id, templateOverride,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TemplateReply',) as TemplateReply;
    
    }
    return null;
  }
}
