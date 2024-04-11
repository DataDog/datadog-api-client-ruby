# Update a retention filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::APMRetentionFiltersAPI.new

# there is a valid "retention_filter" in the system
RETENTION_FILTER_DATA_ID = ENV["RETENTION_FILTER_DATA_ID"]

body = DatadogAPIClient::V2::RetentionFilterUpdateRequest.new({
  data: DatadogAPIClient::V2::RetentionFilterUpdateData.new({
    attributes: DatadogAPIClient::V2::RetentionFilterUpdateAttributes.new({
      name: "test",
      rate: 0.9,
      filter: DatadogAPIClient::V2::SpansFilterCreate.new({
        query: "@_top_level:1 test:service-demo",
      }),
      enabled: true,
      filter_type: DatadogAPIClient::V2::RetentionFilterAllType::SPANS_SAMPLING_PROCESSOR,
    }),
    id: "test-id",
    type: DatadogAPIClient::V2::ApmRetentionFilterType::APM_RETENTION_FILTER,
  }),
})
p api_instance.update_apm_retention_filter(RETENTION_FILTER_DATA_ID, body)
