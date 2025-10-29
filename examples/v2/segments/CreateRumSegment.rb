# Create rum segment returns "Segment created successfully" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_rum_segment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SegmentsAPI.new

body = DatadogAPIClient::V2::Segment.new({
  data: DatadogAPIClient::V2::SegmentData.new({
    attributes: DatadogAPIClient::V2::SegmentDataAttributes.new({
      created_at: "0001-01-01T00:00:00Z",
      created_by: DatadogAPIClient::V2::SegmentDataSource.new({
        handle: "",
        id: "",
        uuid: "",
      }),
      data_query: DatadogAPIClient::V2::SegmentDataAttributesDataQuery.new({
        event_platform: [
          DatadogAPIClient::V2::SegmentDataAttributesDataQueryEventPlatformItems.new({
            facet: "@usr.id",
            from: "2025-08-01",
            name: "high_value_users",
            query: "@type:view @view.name:/logs @usr.session_duration:>300000",
            to: "2025-09-01",
          }),
        ],
      }),
      description: "Users who frequently visit logs and have high session duration",
      modified_at: "0001-01-01T00:00:00Z",
      modified_by: DatadogAPIClient::V2::SegmentDataSource.new({
        handle: "",
        id: "",
        uuid: "",
      }),
      name: "High-Value Users",
      org_id: 123456,
      source: 0,
      tags: [
        "high-value",
        "logs",
        "active",
      ],
      version: 1,
    }),
    id: "segment-12345",
    type: DatadogAPIClient::V2::SegmentDataType::SEGMENT,
  }),
})
p api_instance.create_rum_segment(body)
