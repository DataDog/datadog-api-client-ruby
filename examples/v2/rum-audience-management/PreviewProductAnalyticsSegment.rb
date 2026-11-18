# Preview a segment returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.preview_product_analytics_segment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumAudienceManagementAPI.new

body = DatadogAPIClient::V2::SegmentPreviewRequest.new({
  data: DatadogAPIClient::V2::SegmentPreviewData.new({
    attributes: DatadogAPIClient::V2::SegmentPreviewAttributes.new({
      data_query: DatadogAPIClient::V2::SegmentDataQuery.new({
        event_platform: [
          DatadogAPIClient::V2::SegmentEventPlatformBlock.new({
            facet: "@usr.id",
            from: "-2592000000",
            query: "@type:view @view.name:/logs",
            to: "0",
          }),
        ],
      }),
      limit: 50,
      user_store_columns: [
        "user_id",
        "user_email",
        "user_name",
      ],
    }),
    type: DatadogAPIClient::V2::SegmentPreviewRequestType::SEGMENT_PREVIEW_REQUEST,
  }),
})
p api_instance.preview_product_analytics_segment(body)
