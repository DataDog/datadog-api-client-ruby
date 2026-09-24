# Create a retention filter returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::APMRetentionFiltersAPI.new

body = DatadogAPIClient::V2::RetentionFilterCreateRequest.new({
  data: DatadogAPIClient::V2::RetentionFilterCreateData.new({
    attributes: DatadogAPIClient::V2::RetentionFilterCreateAttributes.new({
      enabled: true,
      filter: DatadogAPIClient::V2::SpansFilterCreate.new({
        query: "@http.status_code:200 service:my-service",
      }),
      filter_type: DatadogAPIClient::V2::RetentionFilterType::SPANS_SAMPLING_PROCESSOR,
      name: "my retention filter",
      rate: 1.0,
    }),
    type: DatadogAPIClient::V2::ApmRetentionFilterType::APM_RETENTION_FILTER,
  }),
})
p api_instance.create_apm_retention_filter(body)
