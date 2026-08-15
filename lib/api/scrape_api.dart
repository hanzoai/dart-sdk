//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;


class ScrapeApi {
  ScrapeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Fetch one page and get its extracted markdown, in the firecrawl envelope.
  ///
  /// Takes {url} and answers {success, data:{markdown, metadata}} — the exact contract a firecrawl client decodes. The fetch, extraction and optional browser render run in-process; there is no crawler pod to be down.  The shared service key is required as an Authorization Bearer, compared in constant time: unset on the deployment is 503, missing or wrong is 401. Unlike search, a validated principal does NOT substitute for it — this is the service-to-service door.  A page is archived under the caller's own org and project, taken from the verified principal when there is one, so a scrape lands in the same corpus /v1/crawl fills and a URL already read under that scope is answered from the archive without touching the network. A service caller carrying no principal shares the unscoped prefix.  The URL is caller-supplied and fetched from INSIDE the cluster, which makes this a request-forgery primitive by construction: in-namespace service DNS and a cloud metadata endpoint that hands credentials to anyone who asks are both a resolution away. Only http and https are accepted, and every address actually dialled must be public unicast — loopback, link-local, private and multicast are refused. The check lives in the DIALER rather than on the hostname, because resolving a name to validate it and then letting the transport resolve it again is a gap DNS rebinding walks straight through; redirects re-enter the same dialer, so a public URL that bounces to the metadata address is refused at the hop that matters.  The one thing to get right: FAILURE IS 200. A missing or unparseable url, a body over the 1 MiB read cap, and a fetch that could not be completed all answer HTTP 200 with success:false and a reason — a firecrawl client reads data.success, not the status line. Only the two auth refusals use a status code, so a caller that branches on HTTP status alone will read every failed scrape as a success.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postScrapeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/scrape';

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

  /// Fetch one page and get its extracted markdown, in the firecrawl envelope.
  ///
  /// Takes {url} and answers {success, data:{markdown, metadata}} — the exact contract a firecrawl client decodes. The fetch, extraction and optional browser render run in-process; there is no crawler pod to be down.  The shared service key is required as an Authorization Bearer, compared in constant time: unset on the deployment is 503, missing or wrong is 401. Unlike search, a validated principal does NOT substitute for it — this is the service-to-service door.  A page is archived under the caller's own org and project, taken from the verified principal when there is one, so a scrape lands in the same corpus /v1/crawl fills and a URL already read under that scope is answered from the archive without touching the network. A service caller carrying no principal shares the unscoped prefix.  The URL is caller-supplied and fetched from INSIDE the cluster, which makes this a request-forgery primitive by construction: in-namespace service DNS and a cloud metadata endpoint that hands credentials to anyone who asks are both a resolution away. Only http and https are accepted, and every address actually dialled must be public unicast — loopback, link-local, private and multicast are refused. The check lives in the DIALER rather than on the hostname, because resolving a name to validate it and then letting the transport resolve it again is a gap DNS rebinding walks straight through; redirects re-enter the same dialer, so a public URL that bounces to the metadata address is refused at the hop that matters.  The one thing to get right: FAILURE IS 200. A missing or unparseable url, a body over the 1 MiB read cap, and a fetch that could not be completed all answer HTTP 200 with success:false and a reason — a firecrawl client reads data.success, not the status line. Only the two auth refusals use a status code, so a caller that branches on HTTP status alone will read every failed scrape as a success.
  Future<void> postScrape() async {
    final response = await postScrapeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
