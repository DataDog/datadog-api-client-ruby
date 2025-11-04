# Create connection returns "Connection created successfully" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_connection".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumAudienceManagementAPI.new

body = DatadogAPIClient::V2::CreateConnectionRequest.new({
  data: DatadogAPIClient::V2::CreateConnectionRequestData.new({
    attributes: DatadogAPIClient::V2::CreateConnectionRequestDataAttributes.new({
      fields: [
        DatadogAPIClient::V2::CreateConnectionRequestDataAttributesFieldsItems.new({
          description: "Customer subscription tier from `CRM`",
          display_name: "Customer Tier",
          id: "customer_tier",
          source_name: "subscription_tier",
          type: "string",
        }),
        DatadogAPIClient::V2::CreateConnectionRequestDataAttributesFieldsItems.new({
          description: "Customer lifetime value in `USD`",
          display_name: "Lifetime Value",
          id: "lifetime_value",
          source_name: "ltv",
          type: "number",
        }),
      ],
      join_attribute: "user_email",
      join_type: "email",
      type: "ref_table",
    }),
    id: "crm-integration",
    type: DatadogAPIClient::V2::UpdateConnectionRequestDataType::CONNECTION_ID,
  }),
})
p api_instance.create_connection("users", body)
