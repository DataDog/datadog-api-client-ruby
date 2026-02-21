# Create a static RUM segment returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_rum_static_segment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RUMUserSegmentsAPI.new

body = DatadogAPIClient::V2::RumStaticSegmentCreateRequest.new({
  data: DatadogAPIClient::V2::RumStaticSegmentCreateData.new({
    attributes: DatadogAPIClient::V2::RumStaticSegmentCreateAttributes.new({
      description: "Users from a specific journey.",
      journey_query_object: DatadogAPIClient::V2::RumStaticSegmentJourneyQueryObject.new({
        nodes: [
          DatadogAPIClient::V2::RumStaticSegmentJourneyNode.new({
            filters: [
              DatadogAPIClient::V2::RumStaticSegmentJourneyFilter.new({
                attribute: "@type",
                value: "view",
              }),
            ],
          }),
        ],
      }),
      name: "My Static Segment",
      tags: [
        "team:frontend",
      ],
    }),
    type: DatadogAPIClient::V2::RumStaticSegmentRequestType::CREATE_STATIC_SEGMENT_REQUEST,
  }),
})
p api_instance.create_rum_static_segment(body)
