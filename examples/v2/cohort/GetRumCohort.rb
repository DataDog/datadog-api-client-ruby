# Get rum cohort returns "Successful response with cohort analysis data" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_rum_cohort".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CohortAPI.new

body = DatadogAPIClient::V2::GetCohortRequest.new({
  data: DatadogAPIClient::V2::GetCohortRequestData.new({
    attributes: DatadogAPIClient::V2::GetCohortRequestDataAttributes.new({
      definition: DatadogAPIClient::V2::GetCohortRequestDataAttributesDefinition.new({
        audience_filters: DatadogAPIClient::V2::GetCohortRequestDataAttributesDefinitionAudienceFilters.new({
          accounts: [
            DatadogAPIClient::V2::GetCohortRequestDataAttributesDefinitionAudienceFiltersAccountsItems.new({
              name: "",
            }),
          ],
          segments: [
            DatadogAPIClient::V2::GetCohortRequestDataAttributesDefinitionAudienceFiltersSegmentsItems.new({
              name: "",
              segment_id: "",
            }),
          ],
          users: [
            DatadogAPIClient::V2::GetCohortRequestDataAttributesDefinitionAudienceFiltersUsersItems.new({
              name: "",
            }),
          ],
        }),
      }),
      time: DatadogAPIClient::V2::GetCohortRequestDataAttributesTime.new({}),
    }),
    type: DatadogAPIClient::V2::GetCohortRequestDataType::COHORT_REQUEST,
  }),
})
p api_instance.get_rum_cohort(body)
