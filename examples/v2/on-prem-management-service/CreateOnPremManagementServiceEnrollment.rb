# Create an enrollment returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_on_prem_management_service_enrollment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OnPremManagementServiceAPI.new

body = DatadogAPIClient::V2::OnPremManagementServiceCreateEnrollmentRequest.new({
  data: DatadogAPIClient::V2::OnPremManagementServiceEnrollmentDataRequest.new({
    attributes: DatadogAPIClient::V2::OnPremManagementServiceEnrollmentAttributes.new({
      actions_allowlist: [
        "com.datadoghq.jenkins.*",
      ],
      runner_host: "runner.example.com",
      runner_modes: [
        DatadogAPIClient::V2::OnPremManagementServiceEnrollmentAttributesRunnerModesItems::WORKFLOW_AUTOMATION,
      ],
      runner_name: "my-runner",
    }),
    type: DatadogAPIClient::V2::OnPremManagementServiceEnrollmentType::ENROLLMENT,
  }),
})
p api_instance.create_on_prem_management_service_enrollment(body)
