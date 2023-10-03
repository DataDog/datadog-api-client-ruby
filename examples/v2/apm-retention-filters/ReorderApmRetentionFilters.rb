# Re-order retention filters returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::APMRetentionFiltersAPI.new

body = DatadogAPIClient::V2::ReorderRetentionFiltersRequest.new({
  data: [
    DatadogAPIClient::V2::RetentionFilterWithoutAttributes.new({
      id: "jdZrilSJQLqzb6Cu7aub9Q",
      type: DatadogAPIClient::V2::ApmRetentionFilterType::APM_RETENTION_FILTER,
    }),
    DatadogAPIClient::V2::RetentionFilterWithoutAttributes.new({
      id: "7RBOb7dLSYWI01yc3pIH8w",
      type: DatadogAPIClient::V2::ApmRetentionFilterType::APM_RETENTION_FILTER,
    }),
  ],
})
p api_instance.reorder_apm_retention_filters(body)
