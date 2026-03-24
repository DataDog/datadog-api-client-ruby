# Edit a Data Access Control dataset returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_dataset".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DataAccessControlsAPI.new

body = DatadogAPIClient::V2::DatasetUpdateRequest.new({
  data: DatadogAPIClient::V2::DatasetRequest.new({
    attributes: DatadogAPIClient::V2::DatasetAttributesRequest.new({
      name: "Security Audit Dataset",
      principals: [
        "role:94172442-be03-11e9-a77a-3b7612558ac1",
      ],
      product_filters: [
        DatadogAPIClient::V2::FiltersPerProduct.new({
          filters: [
            "@application.id:ABCD",
          ],
          product: "logs",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::DatasetType::DATASET,
  }),
})
p api_instance.update_dataset("dataset_id", body)
