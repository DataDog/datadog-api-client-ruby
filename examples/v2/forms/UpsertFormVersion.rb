# Create or update a form version returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.upsert_form_version".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FormsAPI.new

# there is a valid "form" in the system
FORM_DATA_ID = ENV["FORM_DATA_ID"]

body = DatadogAPIClient::V2::UpsertFormVersionRequest.new({
  data: DatadogAPIClient::V2::UpsertFormVersionData.new({
    attributes: DatadogAPIClient::V2::UpsertFormVersionDataAttributes.new({
      data_definition: DatadogAPIClient::V2::FormDataDefinition.new({
        description: "Welcome to the Engineering Experience Survey.",
        required: [],
        title: "Developer Experience Survey",
        type: DatadogAPIClient::V2::FormDataDefinitionType::OBJECT,
      }),
      state: DatadogAPIClient::V2::FormVersionState::FROZEN,
      ui_definition: DatadogAPIClient::V2::FormUiDefinition.new({
        ui_order: [],
        ui_theme: DatadogAPIClient::V2::FormUiDefinitionUiTheme.new({
          primary_color: DatadogAPIClient::V2::FormUiDefinitionUiThemePrimaryColor::GRAY,
        }),
      }),
      upsert_params: DatadogAPIClient::V2::UpsertFormVersionUpsertParams.new({
        etag: "b51f08b698d88d8027a935d9db649774949f5fb41a0c559bfee6a9a13225c72d",
        insert_only: false,
        match_policy: DatadogAPIClient::V2::LatestVersionMatchPolicy::NONE,
      }),
    }),
    type: DatadogAPIClient::V2::FormVersionType::FORM_VERSIONS,
  }),
})
p api_instance.upsert_form_version(FORM_DATA_ID, body)
