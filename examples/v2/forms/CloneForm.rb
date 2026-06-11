# Clone a form returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.clone_form".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FormsAPI.new

body = DatadogAPIClient::V2::CloneFormRequest.new({
  data: DatadogAPIClient::V2::CloneFormData.new({
    attributes: DatadogAPIClient::V2::CloneFormDataAttributes.new({
      name: "Copy of My Form",
    }),
    type: DatadogAPIClient::V2::FormType::FORMS,
  }),
})
p api_instance.clone_form("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
