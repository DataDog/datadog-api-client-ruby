# Edit a dataset returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DatasetsAPI.new

body = DatadogAPIClient::V2::DatasetUpdateRequest.new({
  data: DatadogAPIClient::V2::Dataset.new({
    attributes: DatadogAPIClient::V2::DatasetAttributes.new({
      created_at: nil,
      name: "Security Audit Dataset",
      principals: [
        "role:86245fce-0a4e-11f0-92bd-da7ad0900002",
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
    id: "123e4567-e89b-12d3-a456-426614174000",
    type: "dataset",
  }),
})
p api_instance.update_dataset("dataset_id", body)
