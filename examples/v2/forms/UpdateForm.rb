# Update a form returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_form".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FormsAPI.new

# there is a valid "form" in the system
FORM_DATA_ID = ENV["FORM_DATA_ID"]

body = DatadogAPIClient::V2::UpdateFormRequest.new({
  data: DatadogAPIClient::V2::UpdateFormData.new({
    attributes: DatadogAPIClient::V2::UpdateFormDataAttributes.new({
      form_update: DatadogAPIClient::V2::FormUpdateAttributes.new({
        datastore_config: DatadogAPIClient::V2::FormDatastoreConfigAttributes.new({
          datastore_id: "5108ea24-dd83-4696-9caa-f069f73d0fad",
          primary_column_name: "id",
          primary_key_generation_strategy: "none",
        }),
        description: "An updated description.",
        name: "Updated Form Name",
      }),
    }),
    id: FORM_DATA_ID,
    type: DatadogAPIClient::V2::FormType::FORMS,
  }),
})
p api_instance.update_form(FORM_DATA_ID, body)
