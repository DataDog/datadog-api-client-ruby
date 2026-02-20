# Edit a test suite returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new

body = DatadogAPIClient::V2::SuiteCreateEditRequest.new({
  data: DatadogAPIClient::V2::SuiteCreateEdit.new({
    attributes: DatadogAPIClient::V2::SyntheticsSuite.new({
      message: "Notification message",
      name: "Example suite name",
      options: DatadogAPIClient::V2::SyntheticsSuiteOptions.new({}),
      tags: [
        "env:production",
      ],
      tests: [
        DatadogAPIClient::V2::SyntheticsSuiteTest.new({
          alerting_criticality: DatadogAPIClient::V2::SyntheticsSuiteTestAlertingCriticality::CRITICAL,
          public_id: "",
        }),
      ],
      type: DatadogAPIClient::V2::SyntheticsSuiteType::SUITE,
    }),
    type: DatadogAPIClient::V2::SyntheticsSuiteTypes::SUITES,
  }),
})
p api_instance.edit_synthetics_suite("public_id", body)
