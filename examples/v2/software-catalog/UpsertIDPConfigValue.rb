# Create or update IDP configuration returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.upsert_idp_config_value".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SoftwareCatalogAPI.new

body = DatadogAPIClient::V2::IDPConfigRequest.new({
  data: DatadogAPIClient::V2::IDPConfigRequestData.new({
    attributes: DatadogAPIClient::V2::IDPConfigRequestAttributes.new({
      value: [
        DatadogAPIClient::V2::IDPConfigValueItem.new({}),
      ],
    }),
    type: DatadogAPIClient::V2::IDPConfigType::IDP_CONFIG,
  }),
})
api_instance.upsert_idp_config_value("idp_pinned_dashboards", body)
