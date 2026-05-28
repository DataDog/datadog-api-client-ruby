# Upsert a Cloud Cost Management tag description returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::CostTagDescriptionUpsertRequest.new({
  data: DatadogAPIClient::V2::CostTagDescriptionUpsertRequestData.new({
    attributes: DatadogAPIClient::V2::CostTagDescriptionUpsertRequestDataAttributes.new({
      cloud: "aws",
      description: "AWS account that owns this cost.",
    }),
    id: "account_id",
    type: DatadogAPIClient::V2::CostTagDescriptionType::COST_TAG_DESCRIPTION,
  }),
})
api_instance.upsert_cost_tag_description_by_key("tag_key", body)
