# Order RUM retention filters returns "Ordered" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new

body = DatadogAPIClient::V2::RumRetentionFiltersOrderRequest.new({
  data: [
    DatadogAPIClient::V2::RumRetentionFiltersOrderData.new({
      type: DatadogAPIClient::V2::RumRetentionFilterType::RETENTION_FILTERS,
      id: "325631eb-94c9-49c0-93f9-ab7e4fd24529",
    }),
    DatadogAPIClient::V2::RumRetentionFiltersOrderData.new({
      type: DatadogAPIClient::V2::RumRetentionFilterType::RETENTION_FILTERS,
      id: "42d89430-5b80-426e-a44b-ba3b417ece25",
    }),
    DatadogAPIClient::V2::RumRetentionFiltersOrderData.new({
      type: DatadogAPIClient::V2::RumRetentionFilterType::RETENTION_FILTERS,
      id: "bff0bc34-99e9-4c16-adce-f47e71948c23",
    }),
  ],
})
p api_instance.order_retention_filters("1d4b9c34-7ac4-423a-91cf-9902d926e9b3", body)
