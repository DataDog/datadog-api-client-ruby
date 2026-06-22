# Create or replace a budget's custom forecast returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.upsert_custom_forecast".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::CustomForecastUpsertRequest.new({
  data: DatadogAPIClient::V2::CustomForecastUpsertRequestData.new({
    attributes: DatadogAPIClient::V2::CustomForecastUpsertRequestDataAttributes.new({
      budget_uid: "00000000-0000-0000-0000-000000000001",
      entries: [
        DatadogAPIClient::V2::CustomForecastEntry.new({
          amount: 400,
          month: 202501,
          tag_filters: [
            DatadogAPIClient::V2::CustomForecastEntryTagFilter.new({
              tag_key: "service",
              tag_value: "ec2",
            }),
          ],
        }),
      ],
    }),
    id: "",
    type: DatadogAPIClient::V2::CustomForecastType::CUSTOM_FORECAST,
  }),
})
p api_instance.upsert_custom_forecast(body)
