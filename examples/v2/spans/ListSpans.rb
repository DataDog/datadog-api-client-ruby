# Search spans returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SpansAPI.new

body = DatadogAPIClient::V2::SpansListRequest.new({
  data: DatadogAPIClient::V2::SpansListRequestData.new({
    attributes: DatadogAPIClient::V2::SpansListRequestAttributes.new({
      filter: DatadogAPIClient::V2::SpansQueryFilter.new({
        from: "now-15m",
        query: "*",
        to: "now",
      }),
      options: DatadogAPIClient::V2::SpansQueryOptions.new({
        timezone: "GMT",
      }),
      page: DatadogAPIClient::V2::SpansListRequestPage.new({
        limit: 25,
      }),
      sort: DatadogAPIClient::V2::SpansSort::TIMESTAMP_ASCENDING,
    }),
    type: DatadogAPIClient::V2::SpansListRequestType::SEARCH_REQUEST,
  }),
})
p api_instance.list_spans(body)
