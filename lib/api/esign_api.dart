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

  /// Your org's documents, newest first
  ///
  /// Lists the caller org's documents with their status, recipients and timestamps, newest first, capped at 200 — there is no paging, so treat it as the recent window rather than a complete export. Requires a validated principal (403 without one) and reads the caller's own tenant store, so no other org's documents can appear in it.
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

  /// Your org's documents, newest first
  ///
  /// Lists the caller org's documents with their status, recipients and timestamps, newest first, capped at 200 — there is no paging, so treat it as the recent window rather than a complete export. Requires a validated principal (403 without one) and reads the caller's own tenant store, so no other org's documents can appear in it.
  Future<void> getEsignDocuments() async {
    final response = await getEsignDocumentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// One document with its recipients and field layout
  ///
  /// Answers the document, its recipients with each one's read and signing status, and every field with its type, page and position — the view a sender's UI renders, and where the field ids come from. Requires a validated principal (403 without one) and resolves the id in the caller's OWN tenant store, so another org's document id is a 404 rather than a refusal that would confirm it exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
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

  /// One document with its recipients and field layout
  ///
  /// Answers the document, its recipients with each one's read and signing status, and every field with its type, page and position — the view a sender's UI renders, and where the field ids come from. Requires a validated principal (403 without one) and resolves the id in the caller's OWN tenant store, so another org's document id is a 404 rather than a refusal that would confirm it exists.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> getEsignDocumentsById(String id,) async {
    final response = await getEsignDocumentsByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The document's full audit trail, oldest first
  ///
  /// Answers every recorded event for the document in order — created, recipient added, field created, sent, opened, each field inserted, each recipient completed or rejected, and completion — with the actor and timestamp on each. This is the evidence record behind a signature, so it is append-only and nothing in the surface edits it.  Requires a validated principal (403 without one) and resolves the id in the caller's OWN tenant store, so another org's document id is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
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

  /// The document's full audit trail, oldest first
  ///
  /// Answers every recorded event for the document in order — created, recipient added, field created, sent, opened, each field inserted, each recipient completed or rejected, and completion — with the actor and timestamp on each. This is the evidence record behind a signature, so it is append-only and nothing in the surface edits it.  Requires a validated principal (403 without one) and resolves the id in the caller's OWN tenant store, so another org's document id is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> getEsignDocumentsByIdAudit(String id,) async {
    final response = await getEsignDocumentsByIdAuditWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Download the document — the sealed PDF once it is complete
  ///
  /// Answers the document's current PDF as base64 with a `sealed` flag and a filename. Before completion that is the original upload; once every signer has finished it is the SEALED artifact — the field values rendered onto the page and a real x509 PKCS#7 digital signature applied — and `sealed` is true. There is one `pdfBase64` field either way, so `sealed` is what tells you which you are holding.  Requires a validated principal (403 without one) and resolves the id in the caller's OWN tenant store, so another org's document id is a 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
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

  /// Download the document — the sealed PDF once it is complete
  ///
  /// Answers the document's current PDF as base64 with a `sealed` flag and a filename. Before completion that is the original upload; once every signer has finished it is the SEALED artifact — the field values rendered onto the page and a real x509 PKCS#7 digital signature applied — and `sealed` is true. There is one `pdfBase64` field either way, so `sealed` is what tells you which you are holding.  Requires a validated principal (403 without one) and resolves the id in the caller's OWN tenant store, so another org's document id is a 404.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> getEsignDocumentsByIdDownload(String id,) async {
    final response = await getEsignDocumentsByIdDownloadWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Whether the e-signature surface is mounted
  ///
  /// Answers ok whenever the subsystem is mounted. It is unauthenticated and takes no tenant, and it is deliberately shallow: it is registered before the document host is built, so it still answers on a deployment that came up WITHOUT object storage and therefore serves nothing else. Read it as reachability, never as a promise that documents can be stored.
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

  /// Whether the e-signature surface is mounted
  ///
  /// Answers ok whenever the subsystem is mounted. It is unauthenticated and takes no tenant, and it is deliberately shallow: it is registered before the document host is built, so it still answers on a deployment that came up WITHOUT object storage and therefore serves nothing else. Read it as reachability, never as a promise that documents can be stored.
  Future<void> getEsignHealth() async {
    final response = await getEsignHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Open a document you were asked to sign, using your signing link
  ///
  /// Answers the document, the recipient it identifies, the fields THAT recipient must fill, and the PDF to display. The first open also marks the recipient as having opened it and records that on the audit trail, so this read has a side effect by design.  This is the signer's door and it takes NO account: the signing token is the entire credential, and it names the recipient, so a signer sees only their own fields and never the other recipients' tokens. The `:org` segment selects which tenant's store is opened, and the token is then looked up inside it — so a token presented under the wrong org simply does not resolve. An unknown or wrong-org token is a 401, never a hint that some other document exists.
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

  /// Open a document you were asked to sign, using your signing link
  ///
  /// Answers the document, the recipient it identifies, the fields THAT recipient must fill, and the PDF to display. The first open also marks the recipient as having opened it and records that on the audit trail, so this read has a side effect by design.  This is the signer's door and it takes NO account: the signing token is the entire credential, and it names the recipient, so a signer sees only their own fields and never the other recipients' tokens. The `:org` segment selects which tenant's store is opened, and the token is then looked up inside it — so a token presented under the wrong org simply does not resolve. An unknown or wrong-org token is a 401, never a hint that some other document exists.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] token (required):
  Future<void> getEsignOByOrgSignByToken(String org, String token,) async {
    final response = await getEsignOByOrgSignByTokenWithHttpInfo(org, token,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Upload a PDF and open a draft ready for recipients and fields
  ///
  /// Creates a document from a base64 PDF and answers 201 with it in `DRAFT` — the state where recipients and fields may still be added, and the only state they may. `title` and `pdfBase64` are required; `signingOrder` chooses `PARALLEL` (the default, everyone may sign at once) or `SEQUENTIAL`, and that choice is fixed for the document's life.  The bytes go to object storage, not into the tenant database, and the ORIGINAL is kept under its own key so it survives sealing untouched — a completed document can always be compared against what was uploaded. Creation is recorded on the audit trail.  This is the sender's door: a validated principal is required (403 without one) and the document lands in that principal's OWN org. Isolation is physical rather than a filter — each tenant has its own store — so another org's document id is simply not there. Bodies over 32 MiB are refused with 413.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postEsignDocumentsWithHttpInfo() async {
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Upload a PDF and open a draft ready for recipients and fields
  ///
  /// Creates a document from a base64 PDF and answers 201 with it in `DRAFT` — the state where recipients and fields may still be added, and the only state they may. `title` and `pdfBase64` are required; `signingOrder` chooses `PARALLEL` (the default, everyone may sign at once) or `SEQUENTIAL`, and that choice is fixed for the document's life.  The bytes go to object storage, not into the tenant database, and the ORIGINAL is kept under its own key so it survives sealing untouched — a completed document can always be compared against what was uploaded. Creation is recorded on the audit trail.  This is the sender's door: a validated principal is required (403 without one) and the document lands in that principal's OWN org. Isolation is physical rather than a filter — each tenant has its own store — so another org's document id is simply not there. Bodies over 32 MiB are refused with 413.
  Future<void> postEsignDocuments() async {
    final response = await postEsignDocumentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Place a field on the page for one recipient to fill
  ///
  /// Adds a field — a signature, date, name, email or text box — at a page and position for ONE named recipient, and answers 201 with its id. `recipientId` and a valid `type` are required, and the recipient must belong to this document (400 otherwise); page defaults to 1 and position defaults to the origin.  Fields are what make a recipient signable: a document cannot be sent while any signing recipient has none. Only while DRAFT — adding a field to a sent document is a 409. Requires a validated principal (403 without one), acts only on the caller's own tenant, and an unknown document is a 404. The addition is recorded on the audit trail.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> postEsignDocumentsByIdFieldsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/esign/documents/{id}/fields'
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

  /// Place a field on the page for one recipient to fill
  ///
  /// Adds a field — a signature, date, name, email or text box — at a page and position for ONE named recipient, and answers 201 with its id. `recipientId` and a valid `type` are required, and the recipient must belong to this document (400 otherwise); page defaults to 1 and position defaults to the origin.  Fields are what make a recipient signable: a document cannot be sent while any signing recipient has none. Only while DRAFT — adding a field to a sent document is a 409. Requires a validated principal (403 without one), acts only on the caller's own tenant, and an unknown document is a 404. The addition is recorded on the audit trail.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> postEsignDocumentsByIdFields(String id,) async {
    final response = await postEsignDocumentsByIdFieldsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Add someone to a draft and mint their signing token
  ///
  /// Adds a recipient and answers 201 with their id and their signing TOKEN — the crypto-random capability that is the only credential the signer's door accepts, so this response is where the signing link is built from. `email` is required; `role` defaults to `SIGNER`, and a `CC` recipient is recorded as already complete because they are never asked to sign. `signingOrder` sets this recipient's position for a sequential document.  Only while DRAFT: adding a recipient to a document already sent is a 409, because the field layout and the turn order were fixed when it went out. Requires a validated principal (403 without one), acts only on the caller's own tenant, and an unknown document is a 404. The addition is recorded on the audit trail.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> postEsignDocumentsByIdRecipientsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/esign/documents/{id}/recipients'
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

  /// Add someone to a draft and mint their signing token
  ///
  /// Adds a recipient and answers 201 with their id and their signing TOKEN — the crypto-random capability that is the only credential the signer's door accepts, so this response is where the signing link is built from. `email` is required; `role` defaults to `SIGNER`, and a `CC` recipient is recorded as already complete because they are never asked to sign. `signingOrder` sets this recipient's position for a sequential document.  Only while DRAFT: adding a recipient to a document already sent is a 409, because the field layout and the turn order were fixed when it went out. Requires a validated principal (403 without one), acts only on the caller's own tenant, and an unknown document is a 404. The addition is recorded on the audit trail.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> postEsignDocumentsByIdRecipients(String id,) async {
    final response = await postEsignDocumentsByIdRecipientsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Send the document out and get each signer's link
  ///
  /// Moves the document from `DRAFT` to `PENDING` and answers the signing tokens — one per signing recipient, with the path to hand them — which is how the links reach the people who must sign. Nothing is emailed by this call; delivering the links is the caller's.  It refuses to send an unsignable document: no recipients at all is a 400, and so is any signing recipient with no fields to fill, named in the error. Re-sending an already-pending document is allowed and re-issues the same links rather than restarting anything; a completed document is a 409. Requires a validated principal (403 without one) and acts only on the caller's own tenant; an unknown document is a 404. The send is recorded on the audit trail.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
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

  /// Send the document out and get each signer's link
  ///
  /// Moves the document from `DRAFT` to `PENDING` and answers the signing tokens — one per signing recipient, with the path to hand them — which is how the links reach the people who must sign. Nothing is emailed by this call; delivering the links is the caller's.  It refuses to send an unsignable document: no recipients at all is a 400, and so is any signing recipient with no fields to fill, named in the error. Re-sending an already-pending document is allowed and re-issues the same links rather than restarting anything; a completed document is a 409. Requires a validated principal (403 without one) and acts only on the caller's own tenant; an unknown document is a 404. The send is recorded on the audit trail.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> postEsignDocumentsByIdSend(String id,) async {
    final response = await postEsignDocumentsByIdSendWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Finish signing — and seal the document if you were the last
  ///
  /// Marks this recipient as done and answers whether the DOCUMENT sealed with it. When every signing recipient has completed, sealing happens right here in the same call: the collected values are rendered onto the PDF, a real x509 PKCS#7 signature is applied, the sealed bytes are stored beside the untouched original, and the document moves to `COMPLETED`. Until then the answer is the recipient's own completion with the document still pending.  It refuses to complete a half-filled signature: a recipient with any unfilled field is a 400 naming how many remain. A document not out for signature is a 409, as is a recipient who has already completed, and under SEQUENTIAL order a signer out of turn is a 403. The token is the whole credential — no account, and a token that does not resolve under `:org` is a 401. Sealing and completion are one transaction, so a failure anywhere leaves the document exactly as it was.
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

  /// Finish signing — and seal the document if you were the last
  ///
  /// Marks this recipient as done and answers whether the DOCUMENT sealed with it. When every signing recipient has completed, sealing happens right here in the same call: the collected values are rendered onto the PDF, a real x509 PKCS#7 signature is applied, the sealed bytes are stored beside the untouched original, and the document moves to `COMPLETED`. Until then the answer is the recipient's own completion with the document still pending.  It refuses to complete a half-filled signature: a recipient with any unfilled field is a 400 naming how many remain. A document not out for signature is a 409, as is a recipient who has already completed, and under SEQUENTIAL order a signer out of turn is a 403. The token is the whole credential — no account, and a token that does not resolve under `:org` is a 401. Sealing and completion are one transaction, so a failure anywhere leaves the document exactly as it was.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] token (required):
  Future<void> postEsignOByOrgSignByTokenComplete(String org, String token,) async {
    final response = await postEsignOByOrgSignByTokenCompleteWithHttpInfo(org, token,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fill in one of your fields
  ///
  /// Records a value for one field and marks it inserted. A signature field takes `value` with `isBase64` true for drawn image bytes, or false for a typed signature; a date, name or email field falls back to today, the recipient's name or their email when `value` is omitted; any other type requires one.  Nothing is sealed here — filling every field still leaves the document pending until the completion call. The token is the whole credential and it bounds what can be written: a field belonging to another recipient is refused with 401 even under a valid token, an unknown field is a 404, and a field already filled is a 409. A document not out for signature is a 409, as is a recipient who has already completed or rejected. Under SEQUENTIAL order a signer whose turn has not come is refused 403 until every earlier signer has signed. Each insertion is recorded on the audit trail.
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
  Future<Response> postEsignOByOrgSignByTokenFieldsByFieldidWithHttpInfo(String org, String token, String fieldId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/esign/o/{org}/sign/{token}/fields/{fieldId}'
      .replaceAll('{org}', org)
      .replaceAll('{token}', token)
      .replaceAll('{fieldId}', fieldId);

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

  /// Fill in one of your fields
  ///
  /// Records a value for one field and marks it inserted. A signature field takes `value` with `isBase64` true for drawn image bytes, or false for a typed signature; a date, name or email field falls back to today, the recipient's name or their email when `value` is omitted; any other type requires one.  Nothing is sealed here — filling every field still leaves the document pending until the completion call. The token is the whole credential and it bounds what can be written: a field belonging to another recipient is refused with 401 even under a valid token, an unknown field is a 404, and a field already filled is a 409. A document not out for signature is a 409, as is a recipient who has already completed or rejected. Under SEQUENTIAL order a signer whose turn has not come is refused 403 until every earlier signer has signed. Each insertion is recorded on the audit trail.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] token (required):
  ///
  /// * [String] fieldId (required):
  Future<void> postEsignOByOrgSignByTokenFieldsByFieldid(String org, String token, String fieldId,) async {
    final response = await postEsignOByOrgSignByTokenFieldsByFieldidWithHttpInfo(org, token, fieldId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Decline to sign, with an optional reason
  ///
  /// Records this recipient's refusal and moves the WHOLE DOCUMENT to `REJECTED` — one declining signer ends it for everyone, and there is no route back: the document cannot then be signed or completed. An optional `reason` is stored and written onto the audit trail with the rejection, which is what the sender sees.  A document not out for signature is a 409, and so is a recipient who has already signed or already rejected — a refusal cannot be taken back or repeated. The token is the whole credential; one that does not resolve under `:org` is a 401.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] token (required):
  Future<Response> postEsignOByOrgSignByTokenRejectWithHttpInfo(String org, String token,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/esign/o/{org}/sign/{token}/reject'
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

  /// Decline to sign, with an optional reason
  ///
  /// Records this recipient's refusal and moves the WHOLE DOCUMENT to `REJECTED` — one declining signer ends it for everyone, and there is no route back: the document cannot then be signed or completed. An optional `reason` is stored and written onto the audit trail with the rejection, which is what the sender sees.  A document not out for signature is a 409, and so is a recipient who has already signed or already rejected — a refusal cannot be taken back or repeated. The token is the whole credential; one that does not resolve under `:org` is a 401.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] token (required):
  Future<void> postEsignOByOrgSignByTokenReject(String org, String token,) async {
    final response = await postEsignOByOrgSignByTokenRejectWithHttpInfo(org, token,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
