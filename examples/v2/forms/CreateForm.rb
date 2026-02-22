# Create a new form returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_form".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FormsAPI.new

body = DatadogAPIClient::V2::FormCreateRequest.new({
  data: DatadogAPIClient::V2::FormDataRequest.new({
    attributes: DatadogAPIClient::V2::FormDataAttributesRequest.new({
      data_definition: {},
      description: "test description",
      name: "test form happy path",
      ui_definition: {},
    }),
    id: "00000000-0000-0000-0000-000000000000",
    type: DatadogAPIClient::V2::FormType::FORMS,
  }),
})
p api_instance.create_form(body)
