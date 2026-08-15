//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class CrawlApi {
  CrawlApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Fetch one URL and read it back as markdown
  ///
  /// Reads one URL and answers with the page as markdown.  It fetches a single URL from inside the cluster and answers with the address it actually landed on, the document's title, its content rendered to MARKDOWN, and whatever the page said about itself. One URL per call: batching would make the answer a partial-failure envelope every caller then has to unpack.  A PAGE THAT COULD NOT BE FETCHED IS A NORMAL ANSWER, not a fault. An unreachable host, a refused address and a content type that is not a document all answer 200 with `success:false` and the reason in `error`, because the caller sent a well-formed ask and gets a well-formed answer. Non-2xx is reserved for a caller problem — 400 with the same body when there is no url, 401 for a bad key, 503 when the surface is unconfigured — so error handling can trust the status. Check `success` before reading `data`.  Admission is either a validated principal or the shared service key, presented as X-API-Key or a Bearer; neither is refused, and an unset key fails closed rather than opening the fetcher to the private network. Pages are archived under the scope of the VERIFIED principal and NEVER a scope named in the body, so a URL already read under that scope is answered from the archive without touching the network; a service caller has no org and its pages land in the shared corpus.  The URL is caller-supplied and dialled from INSIDE the cluster, which makes this a request-forgery primitive by construction. Only http and https are accepted, and every address actually dialled must be public unicast — loopback, link-local, private and multicast are refused. The check lives in the DIALER rather than on the hostname, because resolving a name to validate it and then letting the transport resolve it again is a gap DNS rebinding walks straight through; redirects re-enter the same dialer.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CrawlRequest] crawlRequest (required):
  Future<Response> readPageWithHttpInfo(CrawlRequest crawlRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/crawl';

    // ignore: prefer_final_locals
    Object? postBody = crawlRequest;

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

  /// Fetch one URL and read it back as markdown
  ///
  /// Reads one URL and answers with the page as markdown.  It fetches a single URL from inside the cluster and answers with the address it actually landed on, the document's title, its content rendered to MARKDOWN, and whatever the page said about itself. One URL per call: batching would make the answer a partial-failure envelope every caller then has to unpack.  A PAGE THAT COULD NOT BE FETCHED IS A NORMAL ANSWER, not a fault. An unreachable host, a refused address and a content type that is not a document all answer 200 with `success:false` and the reason in `error`, because the caller sent a well-formed ask and gets a well-formed answer. Non-2xx is reserved for a caller problem — 400 with the same body when there is no url, 401 for a bad key, 503 when the surface is unconfigured — so error handling can trust the status. Check `success` before reading `data`.  Admission is either a validated principal or the shared service key, presented as X-API-Key or a Bearer; neither is refused, and an unset key fails closed rather than opening the fetcher to the private network. Pages are archived under the scope of the VERIFIED principal and NEVER a scope named in the body, so a URL already read under that scope is answered from the archive without touching the network; a service caller has no org and its pages land in the shared corpus.  The URL is caller-supplied and dialled from INSIDE the cluster, which makes this a request-forgery primitive by construction. Only http and https are accepted, and every address actually dialled must be public unicast — loopback, link-local, private and multicast are refused. The check lives in the DIALER rather than on the hostname, because resolving a name to validate it and then letting the transport resolve it again is a gap DNS rebinding walks straight through; redirects re-enter the same dialer.
  ///
  /// Parameters:
  ///
  /// * [CrawlRequest] crawlRequest (required):
  Future<CrawlResult?> readPage(CrawlRequest crawlRequest,) async {
    final response = await readPageWithHttpInfo(crawlRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CrawlResult',) as CrawlResult;
    
    }
    return null;
  }
}
