# Submit a form returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.submit_form".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FormsAPI.new

body = DatadogAPIClient::V2::FormSubmissionRequest.new({
  data: DatadogAPIClient::V2::FormSubmissionDataRequest.new({
    attributes: DatadogAPIClient::V2::FormSubmissionAttributes.new({
      submission_data: {},
    }),
    type: DatadogAPIClient::V2::FormSubmissionType::FORM_SUBMISSIONS,
  }),
})
p api_instance.submit_form("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
