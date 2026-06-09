# Create a form returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_form".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FormsAPI.new

body = DatadogAPIClient::V2::CreateFormRequest.new({
  data: DatadogAPIClient::V2::CreateFormData.new({
    attributes: DatadogAPIClient::V2::CreateFormDataAttributes.new({
      anonymous: false,
      data_definition: DatadogAPIClient::V2::FormDataDefinition.new({}),
      description: "A form to collect user feedback.",
      idp_survey: false,
      name: "User Feedback Form",
      single_response: false,
      ui_definition: DatadogAPIClient::V2::FormUiDefinition.new({}),
    }),
    type: DatadogAPIClient::V2::FormType::FORMS,
  }),
})
p api_instance.create_form(body)
