# Batch get DEM journeys by test suite IDs returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DEMAPI.new

body = DatadogAPIClient::V2::DemBatchGetJourneysRequest.new({
  data: DatadogAPIClient::V2::DemBatchGetJourneysData.new({
    attributes: DatadogAPIClient::V2::DemBatchGetJourneysAttributes.new({
      test_suite_ids: [
        "suite-abc123",
        "suite-def456",
      ],
    }),
    type: DatadogAPIClient::V2::DemBatchGetJourneysRequestType::BATCH_GET_JOURNEYS_BY_TEST_SUITE_IDS_REQUEST,
  }),
})
p api_instance.batch_get_journeys_by_test_suite_i_ds(body)
