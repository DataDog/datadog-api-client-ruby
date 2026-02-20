# Edit a Mobile test returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

# there is a valid "synthetics_mobile_test" in the system
SYNTHETICS_MOBILE_TEST_PUBLIC_ID = ENV["SYNTHETICS_MOBILE_TEST_PUBLIC_ID"]

body = DatadogAPIClient::V1::SyntheticsMobileTest.new({
  name: "Example-Synthetic-updated",
  status: DatadogAPIClient::V1::SyntheticsTestPauseStatus::PAUSED,
  type: DatadogAPIClient::V1::SyntheticsMobileTestType::MOBILE,
  config: DatadogAPIClient::V1::SyntheticsMobileTestConfig.new({
    variables: [],
  }),
  message: "",
  options: DatadogAPIClient::V1::SyntheticsMobileTestOptions.new({
    device_ids: [
      "synthetics:mobile:device:iphone_15_ios_17",
    ],
    mobile_application: DatadogAPIClient::V1::SyntheticsMobileTestsMobileApplication.new({
      application_id: "ab0e0aed-536d-411a-9a99-5428c27d8f8e",
      reference_id: "6115922a-5f5d-455e-bc7e-7955a57f3815",
      reference_type: DatadogAPIClient::V1::SyntheticsMobileTestsMobileApplicationReferenceType::VERSION,
    }),
    tick_every: 3600,
  }),
  steps: [],
})
p api_instance.update_mobile_test(SYNTHETICS_MOBILE_TEST_PUBLIC_ID, body)
