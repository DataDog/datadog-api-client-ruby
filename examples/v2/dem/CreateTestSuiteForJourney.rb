# Create a test suite for a DEM journey returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DEMAPI.new

body = DatadogAPIClient::V2::DemCreateJourneyTestSuiteRequest.new({
  data: DatadogAPIClient::V2::DemCreateJourneyTestSuiteData.new({
    attributes: DatadogAPIClient::V2::DemCreateJourneyTestSuiteAttributes.new({
      include_tests_from_journey_coverage: true,
      test_suite_name: "My Custom Suite",
    }),
    type: DatadogAPIClient::V2::DemCreateJourneyTestSuiteRequestType::CREATE_TEST_SUITE_FOR_JOURNEY_REQUEST,
  }),
})
p api_instance.create_test_suite_for_journey("public_journey_id", body)
