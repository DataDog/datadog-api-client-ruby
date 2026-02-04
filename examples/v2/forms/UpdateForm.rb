# Update a form returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_form".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FormsAPI.new

body = DatadogAPIClient::V2::FormUpdateRequest.new({
  data: DatadogAPIClient::V2::FormUpdateDataRequest.new({
    attributes: DatadogAPIClient::V2::FormUpdateAttributes.new({
      form_update: DatadogAPIClient::V2::FormUpdateAttributesFormUpdate.new({
        description: "Updated description",
        name: "New Form Name",
      }),
    }),
    id: "00000000-0000-0000-0000-000000000000",
    type: DatadogAPIClient::V2::FormType::FORMS,
  }),
})
p api_instance.update_form("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
