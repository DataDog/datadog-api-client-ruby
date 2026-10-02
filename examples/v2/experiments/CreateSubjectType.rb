# Create subject type returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

body = DatadogAPIClient::V2::ExperimentsCreateSubjectTypeV2Request.new({
  data: DatadogAPIClient::V2::ExperimentsCreateSubjectTypeV2RequestData.new({
    type: DatadogAPIClient::V2::ExperimentsSubjectTypeV2DTODataType::SUBJECT_TYPES,
    attributes: DatadogAPIClient::V2::ExperimentsCreateSubjectTypeV2RequestDataAttributes.new({
      name: "ex-14bb9543f523edde",
      product_analytics_attribute: "@account.id",
      warehouse_column_names: [
        "account_id",
      ],
    }),
  }),
})
p api_instance.create_subject_type(body)
