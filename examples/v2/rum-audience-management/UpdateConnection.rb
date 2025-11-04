# Update connection returns "Connection updated successfully" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_connection".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumAudienceManagementAPI.new

body = DatadogAPIClient::V2::UpdateConnectionRequest.new({
  data: DatadogAPIClient::V2::UpdateConnectionRequestData.new({
    attributes: DatadogAPIClient::V2::UpdateConnectionRequestDataAttributes.new({
      fields_to_add: [
        DatadogAPIClient::V2::CreateConnectionRequestDataAttributesFieldsItems.new({
          description: "Net Promoter Score from customer surveys",
          display_name: "NPS Score",
          groups: [
            "Satisfaction",
            "Metrics",
          ],
          id: "nps_score",
          source_name: "net_promoter_score",
          type: "number",
        }),
      ],
      fields_to_delete: [
        "old_revenue_field",
      ],
      fields_to_update: [
        DatadogAPIClient::V2::UpdateConnectionRequestDataAttributesFieldsToUpdateItems.new({
          field_id: "lifetime_value",
          updated_display_name: "Customer Lifetime Value (`USD`)",
          updated_groups: [
            "Financial",
            "Metrics",
          ],
        }),
      ],
    }),
    id: "crm-integration",
    type: DatadogAPIClient::V2::UpdateConnectionRequestDataType::CONNECTION_ID,
  }),
})
p api_instance.update_connection("users", body)
