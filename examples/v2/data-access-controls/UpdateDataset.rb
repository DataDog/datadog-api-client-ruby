# Edit a Data Access Control dataset returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DataAccessControlsAPI.new

# there is a valid "dataset" in the system
DATASET_DATA_ID = ENV["DATASET_DATA_ID"]

body = DatadogAPIClient::V2::DatasetUpdateRequest.new({
  data: DatadogAPIClient::V2::DatasetRequest.new({
    attributes: DatadogAPIClient::V2::DatasetAttributesRequest.new({
      name: "Security Audit DAC",
      principals: [
        "role:94172442-be03-11e9-a77a-3b7612558ac1",
      ],
      product_filters: [
        DatadogAPIClient::V2::FiltersPerProduct.new({
          filters: [
            "@application.id:1234",
          ],
          product: "logs",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::DatasetType::DATASET,
  }),
})
p api_instance.update_dataset(DATASET_DATA_ID, body)
