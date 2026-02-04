# Create a form version returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.upsert_form_version".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FormsAPI.new

body = DatadogAPIClient::V2::FormVersionRequest.new({
  data: DatadogAPIClient::V2::FormVersionDataRequest.new({
    attributes: DatadogAPIClient::V2::FormVersionAttributes.new({
      data_definition: {
        "updated": "true",
      },
      state: DatadogAPIClient::V2::FormVersionState::DRAFT,
      ui_definition: {},
      upsert_params: DatadogAPIClient::V2::FormVersionUpsertParams.new({
        etag: "b51f08b698d88d8027a935d9db649774949f5fb41a0c559bfee6a9a13225c72d",
        match_policy: "none",
      }),
    }),
    type: DatadogAPIClient::V2::FormVersionType::FORM_VERSIONS,
  }),
})
p api_instance.upsert_form_version("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
