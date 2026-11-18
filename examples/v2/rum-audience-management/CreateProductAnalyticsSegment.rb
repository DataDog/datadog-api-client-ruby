# Create a segment returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_product_analytics_segment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumAudienceManagementAPI.new

body = DatadogAPIClient::V2::SegmentCreateRequest.new({
  data: DatadogAPIClient::V2::SegmentCreateData.new({
    attributes: DatadogAPIClient::V2::SegmentCreateAttributes.new({
      data_query: DatadogAPIClient::V2::SegmentDataQuery.new({
        event_platform: [
          DatadogAPIClient::V2::SegmentEventPlatformBlock.new({
            facet: "@usr.id",
            from: "-2592000000",
            name: "viewed_logs",
            query: "@type:view @view.name:/logs",
            to: "0",
          }),
        ],
      }),
      description: "Users who viewed the logs page in the last 30 days.",
      name: "High-value users",
      tags: [
        "team:growth",
      ],
    }),
    type: DatadogAPIClient::V2::SegmentResourceType::SEGMENT,
  }),
})
p api_instance.create_product_analytics_segment(body)
