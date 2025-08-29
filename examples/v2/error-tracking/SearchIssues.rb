# Search error tracking issues returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ErrorTrackingAPI.new

body = DatadogAPIClient::V2::IssuesSearchRequest.new({
  data: DatadogAPIClient::V2::IssuesSearchRequestData.new({
    attributes: DatadogAPIClient::V2::IssuesSearchRequestDataAttributes.new({
      query: "service:orders-* AND @language:go",
      from: 1671612804000,
      to: 1671620004000,
      track: DatadogAPIClient::V2::IssuesSearchRequestDataAttributesTrack::TRACE,
    }),
    type: DatadogAPIClient::V2::IssuesSearchRequestDataType::SEARCH_REQUEST,
  }),
})
p api_instance.search_issues(body)
