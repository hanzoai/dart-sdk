//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class EsignApi {
  EsignApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns your org's documents, newest first.
  ///
  /// Returns your org's documents, newest first.  Each carries its status, recipients and field layout. The listing is capped at 200 and there is no paging, so treat it as the recent window rather than a complete export. It reads the caller's own tenant store, so no other org's documents can appear in it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getEsignDocumentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/esign/documents';

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

  /// Returns your org's documents, newest first.
  ///
  /// Returns your org's documents, newest first.  Each carries its status, recipients and field layout. The listing is capped at 200 and there is no paging, so treat it as the recent window rather than a complete export. It reads the caller's own tenant store, so no other org's documents can appear in it.
  Future<EsignDocuments?> getEsignDocuments() async {
    final response = await getEsignDocumentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EsignDocuments',) as EsignDocuments;
    
    }
    return null;
  }

  /// Returns one document with its recipients and field layout.
  ///
  /// Returns one document with its recipients and field layout.  It answers the document, its recipients with each one's read and signing status, and every field with its type, page and position — the view a sender's UI renders, and where the field ids come from. The id is resolved in the caller's OWN tenant store, so another org's document id is a 404 rather than a refusal that would confirm it exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the document to act on. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id belonging to another tenant is simply not found.
  Future<Response> getEsignDocumentsByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/esign/documents/{id}'
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

  /// Returns one document with its recipients and field layout.
  ///
  /// Returns one document with its recipients and field layout.  It answers the document, its recipients with each one's read and signing status, and every field with its type, page and position — the view a sender's UI renders, and where the field ids come from. The id is resolved in the caller's OWN tenant store, so another org's document id is a 404 rather than a refusal that would confirm it exists.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the document to act on. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id belonging to another tenant is simply not found.
  Future<EsignDocument?> getEsignDocumentsById(String id,) async {
    final response = await getEsignDocumentsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EsignDocument',) as EsignDocument;
    
    }
    return null;
  }

  /// Returns the document's full audit trail, oldest first.
  ///
  /// Returns the document's full audit trail, oldest first.  It answers every recorded event for the document in order — created, recipient added, field created, sent, opened, each field inserted, each recipient completed or rejected, and completion — with the actor and timestamp on each. This is the evidence record behind a signature, so it is append-only and nothing in the surface edits it.  The id is resolved in the caller's OWN tenant store, so another org's document id is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the document to act on. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id belonging to another tenant is simply not found.
  Future<Response> getEsignDocumentsByIdAuditWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/esign/documents/{id}/audit'
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

  /// Returns the document's full audit trail, oldest first.
  ///
  /// Returns the document's full audit trail, oldest first.  It answers every recorded event for the document in order — created, recipient added, field created, sent, opened, each field inserted, each recipient completed or rejected, and completion — with the actor and timestamp on each. This is the evidence record behind a signature, so it is append-only and nothing in the surface edits it.  The id is resolved in the caller's OWN tenant store, so another org's document id is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the document to act on. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id belonging to another tenant is simply not found.
  Future<EsignTrail?> getEsignDocumentsByIdAudit(String id,) async {
    final response = await getEsignDocumentsByIdAuditWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EsignTrail',) as EsignTrail;
    
    }
    return null;
  }

  /// Returns the document — the sealed PDF once it is complete.
  ///
  /// Returns the document — the sealed PDF once it is complete.  It answers the document's current PDF as base64 with a sealed flag and a filename. Before completion that is the original upload; once every signer has finished it is the SEALED artifact, with the field values rendered onto the page and a real x509 PKCS#7 digital signature applied. There is one pdfBase64 field either way, so sealed is what tells you which you are holding.  The id is resolved in the caller's OWN tenant store, so another org's document id is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the document to act on. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id belonging to another tenant is simply not found.
  Future<Response> getEsignDocumentsByIdDownloadWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/esign/documents/{id}/download'
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

  /// Returns the document — the sealed PDF once it is complete.
  ///
  /// Returns the document — the sealed PDF once it is complete.  It answers the document's current PDF as base64 with a sealed flag and a filename. Before completion that is the original upload; once every signer has finished it is the SEALED artifact, with the field values rendered onto the page and a real x509 PKCS#7 digital signature applied. There is one pdfBase64 field either way, so sealed is what tells you which you are holding.  The id is resolved in the caller's OWN tenant store, so another org's document id is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the document to act on. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id belonging to another tenant is simply not found.
  Future<EsignPDF?> getEsignDocumentsByIdDownload(String id,) async {
    final response = await getEsignDocumentsByIdDownloadWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EsignPDF',) as EsignPDF;
    
    }
    return null;
  }

  /// Reports whether the e-signature surface is mounted.
  ///
  /// Reports whether the e-signature surface is mounted.  It answers ok whenever the subsystem is mounted, takes no tenant and needs no principal. It is deliberately shallow: it is registered before the document host is built, so it still answers on a deployment that came up WITHOUT object storage and therefore serves nothing else. Read it as reachability, never as a promise that documents can be stored.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getEsignHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/esign/health';

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

  /// Reports whether the e-signature surface is mounted.
  ///
  /// Reports whether the e-signature surface is mounted.  It answers ok whenever the subsystem is mounted, takes no tenant and needs no principal. It is deliberately shallow: it is registered before the document host is built, so it still answers on a deployment that came up WITHOUT object storage and therefore serves nothing else. Read it as reachability, never as a promise that documents can be stored.
  Future<EsignHealth?> getEsignHealth() async {
    final response = await getEsignHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EsignHealth',) as EsignHealth;
    
    }
    return null;
  }

  /// Opens a document you were asked to sign, using your signing link.
  ///
  /// Opens a document you were asked to sign, using your signing link.  It answers the document, the recipient the link identifies, the fields THAT recipient must fill, and the PDF to display. The first open also marks the recipient as having opened it and records that on the audit trail, so this read has a side effect by design.  This door takes NO account: the signing token is the entire credential, and it names the recipient, so a signer sees only their own fields and never the other recipients' tokens. The token resolves to its owning tenant FIRST, before any per-tenant store is opened, and the org segment is only checked against that answer. An unknown or wrong-org token is one and the same 404, never a hint that some other document exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] token (required):
  Future<Response> getEsignOByOrgSignByTokenWithHttpInfo(String org, String token,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/esign/o/{org}/sign/{token}'
      .replaceAll('{org}', org)
      .replaceAll('{token}', token);

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

  /// Opens a document you were asked to sign, using your signing link.
  ///
  /// Opens a document you were asked to sign, using your signing link.  It answers the document, the recipient the link identifies, the fields THAT recipient must fill, and the PDF to display. The first open also marks the recipient as having opened it and records that on the audit trail, so this read has a side effect by design.  This door takes NO account: the signing token is the entire credential, and it names the recipient, so a signer sees only their own fields and never the other recipients' tokens. The token resolves to its owning tenant FIRST, before any per-tenant store is opened, and the org segment is only checked against that answer. An unknown or wrong-org token is one and the same 404, never a hint that some other document exists.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] token (required):
  Future<EsignSession?> getEsignOByOrgSignByToken(String org, String token,) async {
    final response = await getEsignOByOrgSignByTokenWithHttpInfo(org, token,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EsignSession',) as EsignSession;
    
    }
    return null;
  }

  /// Uploads a PDF and opens a draft ready for recipients and fields.
  ///
  /// Uploads a PDF and opens a draft ready for recipients and fields.  It answers 201 with the document in DRAFT — the state where recipients and fields may still be added, and the only state they may. The bytes go to object storage rather than into the tenant database, and the original is kept under its own key so it survives sealing untouched: a completed document can always be compared against what was uploaded. Creation is recorded on the audit trail.  This is the sender's door: a validated principal is required, and the document lands in that principal's OWN org. Isolation is physical rather than a filter — each tenant has its own store — so another org's document id is simply not there. A body over 32 MiB is refused with 413.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EsignUploadIn] esignUploadIn (required):
  Future<Response> postEsignDocumentsWithHttpInfo(EsignUploadIn esignUploadIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/esign/documents';

    // ignore: prefer_final_locals
    Object? postBody = esignUploadIn;

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

  /// Uploads a PDF and opens a draft ready for recipients and fields.
  ///
  /// Uploads a PDF and opens a draft ready for recipients and fields.  It answers 201 with the document in DRAFT — the state where recipients and fields may still be added, and the only state they may. The bytes go to object storage rather than into the tenant database, and the original is kept under its own key so it survives sealing untouched: a completed document can always be compared against what was uploaded. Creation is recorded on the audit trail.  This is the sender's door: a validated principal is required, and the document lands in that principal's OWN org. Isolation is physical rather than a filter — each tenant has its own store — so another org's document id is simply not there. A body over 32 MiB is refused with 413.
  ///
  /// Parameters:
  ///
  /// * [EsignUploadIn] esignUploadIn (required):
  Future<EsignDocument?> postEsignDocuments(EsignUploadIn esignUploadIn,) async {
    final response = await postEsignDocumentsWithHttpInfo(esignUploadIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EsignDocument',) as EsignDocument;
    
    }
    return null;
  }

  /// Places a field on the page for one recipient to fill.
  ///
  /// Places a field on the page for one recipient to fill.  It adds a signature, date, name, email or text box at a page and position for ONE named recipient, and answers 201 with its id. The recipient must belong to this document; one from elsewhere is refused.  Fields are what make a recipient signable: a document cannot be sent while any signing recipient has none. Only while DRAFT — adding a field to a sent document is a 409 — and an unknown document is a 404. The addition is recorded on the audit trail.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EsignFieldIn] esignFieldIn (required):
  Future<Response> postEsignDocumentsByIdFieldsWithHttpInfo(String id, EsignFieldIn esignFieldIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/esign/documents/{id}/fields'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = esignFieldIn;

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

  /// Places a field on the page for one recipient to fill.
  ///
  /// Places a field on the page for one recipient to fill.  It adds a signature, date, name, email or text box at a page and position for ONE named recipient, and answers 201 with its id. The recipient must belong to this document; one from elsewhere is refused.  Fields are what make a recipient signable: a document cannot be sent while any signing recipient has none. Only while DRAFT — adding a field to a sent document is a 409 — and an unknown document is a 404. The addition is recorded on the audit trail.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EsignFieldIn] esignFieldIn (required):
  Future<EsignPlacement?> postEsignDocumentsByIdFields(String id, EsignFieldIn esignFieldIn,) async {
    final response = await postEsignDocumentsByIdFieldsWithHttpInfo(id, esignFieldIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EsignPlacement',) as EsignPlacement;
    
    }
    return null;
  }

  /// Adds someone to a draft and mints their signing token.
  ///
  /// Adds someone to a draft and mints their signing token.  It answers 201 with the recipient's id and their signing TOKEN — the crypto-random capability that is the only credential the signer's door accepts — so this response is where the signing link is built from. A CC recipient is recorded as already complete, because they are never asked to sign.  Only while DRAFT: adding a recipient to a document already sent is a 409, because the field layout and the turn order were fixed when it went out. An unknown document is a 404. The addition is recorded on the audit trail.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EsignRecipientIn] esignRecipientIn (required):
  Future<Response> postEsignDocumentsByIdRecipientsWithHttpInfo(String id, EsignRecipientIn esignRecipientIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/esign/documents/{id}/recipients'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = esignRecipientIn;

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

  /// Adds someone to a draft and mints their signing token.
  ///
  /// Adds someone to a draft and mints their signing token.  It answers 201 with the recipient's id and their signing TOKEN — the crypto-random capability that is the only credential the signer's door accepts — so this response is where the signing link is built from. A CC recipient is recorded as already complete, because they are never asked to sign.  Only while DRAFT: adding a recipient to a document already sent is a 409, because the field layout and the turn order were fixed when it went out. An unknown document is a 404. The addition is recorded on the audit trail.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [EsignRecipientIn] esignRecipientIn (required):
  Future<EsignInvite?> postEsignDocumentsByIdRecipients(String id, EsignRecipientIn esignRecipientIn,) async {
    final response = await postEsignDocumentsByIdRecipientsWithHttpInfo(id, esignRecipientIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EsignInvite',) as EsignInvite;
    
    }
    return null;
  }

  /// Sends the document out and answers each signer's link.
  ///
  /// Sends the document out and answers each signer's link.  It moves the document from DRAFT to PENDING and answers the signing tokens — one per signing recipient, with the path to hand them — which is how the links reach the people who must sign. Nothing is emailed by this call; delivering the links is the caller's.  It refuses to send an unsignable document: no recipients at all is a 400, and so is any signing recipient with no fields to fill, named in the error. Re-sending an already-pending document is allowed and re-issues the same links rather than restarting anything; a completed document is a 409, and an unknown one a 404. The send is recorded on the audit trail.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the document to send. The URL is the addressing authority.
  Future<Response> postEsignDocumentsByIdSendWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/esign/documents/{id}/send'
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

  /// Sends the document out and answers each signer's link.
  ///
  /// Sends the document out and answers each signer's link.  It moves the document from DRAFT to PENDING and answers the signing tokens — one per signing recipient, with the path to hand them — which is how the links reach the people who must sign. Nothing is emailed by this call; delivering the links is the caller's.  It refuses to send an unsignable document: no recipients at all is a 400, and so is any signing recipient with no fields to fill, named in the error. Re-sending an already-pending document is allowed and re-issues the same links rather than restarting anything; a completed document is a 409, and an unknown one a 404. The send is recorded on the audit trail.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the document to send. The URL is the addressing authority.
  Future<EsignLinks?> postEsignDocumentsByIdSend(String id,) async {
    final response = await postEsignDocumentsByIdSendWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EsignLinks',) as EsignLinks;
    
    }
    return null;
  }

  /// Finishes your signing — and seals the document if you were the last.
  ///
  /// Finishes your signing — and seals the document if you were the last.  It marks this recipient as done and answers whether the DOCUMENT sealed with it. When every signing recipient has completed, sealing happens right here in the same call: the collected values are rendered onto the PDF, a real x509 PKCS#7 signature is applied, the sealed bytes are stored beside the untouched original, and the document moves to COMPLETED. Until then the answer is the recipient's own completion with the document still pending.  It refuses to complete a half-filled signature: a recipient with any unfilled field is a 400 naming how many remain. A document not out for signature is a 409, as is a recipient who has already completed, and under SEQUENTIAL order a signer out of turn is a 403. The token is the whole credential — no account, and a token that does not resolve under the org segment is a 404. Sealing and completion are one transaction, so a failure anywhere leaves the document exactly as it was.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] token (required):
  Future<Response> postEsignOByOrgSignByTokenCompleteWithHttpInfo(String org, String token,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/esign/o/{org}/sign/{token}/complete'
      .replaceAll('{org}', org)
      .replaceAll('{token}', token);

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

  /// Finishes your signing — and seals the document if you were the last.
  ///
  /// Finishes your signing — and seals the document if you were the last.  It marks this recipient as done and answers whether the DOCUMENT sealed with it. When every signing recipient has completed, sealing happens right here in the same call: the collected values are rendered onto the PDF, a real x509 PKCS#7 signature is applied, the sealed bytes are stored beside the untouched original, and the document moves to COMPLETED. Until then the answer is the recipient's own completion with the document still pending.  It refuses to complete a half-filled signature: a recipient with any unfilled field is a 400 naming how many remain. A document not out for signature is a 409, as is a recipient who has already completed, and under SEQUENTIAL order a signer out of turn is a 403. The token is the whole credential — no account, and a token that does not resolve under the org segment is a 404. Sealing and completion are one transaction, so a failure anywhere leaves the document exactly as it was.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] token (required):
  Future<EsignCompletion?> postEsignOByOrgSignByTokenComplete(String org, String token,) async {
    final response = await postEsignOByOrgSignByTokenCompleteWithHttpInfo(org, token,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EsignCompletion',) as EsignCompletion;
    
    }
    return null;
  }

  /// Fills in one of your fields.
  ///
  /// Fills in one of your fields.  It records a value for one field and marks it inserted. A signature field takes a value with isBase64 true for drawn image bytes, or false for a typed signature; a date, name or email field falls back to today, the recipient's name or their email when the value is omitted; any other type requires one.  Nothing is sealed here — filling every field still leaves the document pending until the completion call. The token is the whole credential and it bounds what can be written: a field belonging to another recipient is refused with 401 even under a valid token, an unknown field is a 404, and a field already filled is a 409. A document not out for signature is a 409, as is a recipient who has already completed or rejected. Under SEQUENTIAL order a signer whose turn has not come is refused 403 until every earlier signer has signed. Each insertion is recorded on the audit trail.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] token (required):
  ///
  /// * [String] fieldId (required):
  ///
  /// * [EsignValueIn] esignValueIn (required):
  Future<Response> postEsignOByOrgSignByTokenFieldsByFieldidWithHttpInfo(String org, String token, String fieldId, EsignValueIn esignValueIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/esign/o/{org}/sign/{token}/fields/{fieldId}'
      .replaceAll('{org}', org)
      .replaceAll('{token}', token)
      .replaceAll('{fieldId}', fieldId);

    // ignore: prefer_final_locals
    Object? postBody = esignValueIn;

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

  /// Fills in one of your fields.
  ///
  /// Fills in one of your fields.  It records a value for one field and marks it inserted. A signature field takes a value with isBase64 true for drawn image bytes, or false for a typed signature; a date, name or email field falls back to today, the recipient's name or their email when the value is omitted; any other type requires one.  Nothing is sealed here — filling every field still leaves the document pending until the completion call. The token is the whole credential and it bounds what can be written: a field belonging to another recipient is refused with 401 even under a valid token, an unknown field is a 404, and a field already filled is a 409. A document not out for signature is a 409, as is a recipient who has already completed or rejected. Under SEQUENTIAL order a signer whose turn has not come is refused 403 until every earlier signer has signed. Each insertion is recorded on the audit trail.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] token (required):
  ///
  /// * [String] fieldId (required):
  ///
  /// * [EsignValueIn] esignValueIn (required):
  Future<EsignInsertion?> postEsignOByOrgSignByTokenFieldsByFieldid(String org, String token, String fieldId, EsignValueIn esignValueIn,) async {
    final response = await postEsignOByOrgSignByTokenFieldsByFieldidWithHttpInfo(org, token, fieldId, esignValueIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EsignInsertion',) as EsignInsertion;
    
    }
    return null;
  }

  /// Declines to sign, with an optional reason.
  ///
  /// Declines to sign, with an optional reason.  It records this recipient's refusal and moves the WHOLE DOCUMENT to REJECTED — one declining signer ends it for everyone, and there is no route back: the document cannot then be signed or completed. An optional reason is stored and written onto the audit trail with the rejection, which is what the sender sees.  A document not out for signature is a 409, and so is a recipient who has already signed or already rejected — a refusal cannot be taken back or repeated. The token is the whole credential; one that does not resolve under the org segment is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] token (required):
  ///
  /// * [EsignRejectIn] esignRejectIn (required):
  Future<Response> postEsignOByOrgSignByTokenRejectWithHttpInfo(String org, String token, EsignRejectIn esignRejectIn,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/esign/o/{org}/sign/{token}/reject'
      .replaceAll('{org}', org)
      .replaceAll('{token}', token);

    // ignore: prefer_final_locals
    Object? postBody = esignRejectIn;

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

  /// Declines to sign, with an optional reason.
  ///
  /// Declines to sign, with an optional reason.  It records this recipient's refusal and moves the WHOLE DOCUMENT to REJECTED — one declining signer ends it for everyone, and there is no route back: the document cannot then be signed or completed. An optional reason is stored and written onto the audit trail with the rejection, which is what the sender sees.  A document not out for signature is a 409, and so is a recipient who has already signed or already rejected — a refusal cannot be taken back or repeated. The token is the whole credential; one that does not resolve under the org segment is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] token (required):
  ///
  /// * [EsignRejectIn] esignRejectIn (required):
  Future<EsignRejection?> postEsignOByOrgSignByTokenReject(String org, String token, EsignRejectIn esignRejectIn,) async {
    final response = await postEsignOByOrgSignByTokenRejectWithHttpInfo(org, token, esignRejectIn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EsignRejection',) as EsignRejection;
    
    }
    return null;
  }
}
