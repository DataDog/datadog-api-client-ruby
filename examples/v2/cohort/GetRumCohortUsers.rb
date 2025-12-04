# Get rum cohort users returns "Successful response with cohort users" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_rum_cohort_users".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CohortAPI.new

body = DatadogAPIClient::V2::GetCohortUsersRequest.new({
  data: DatadogAPIClient::V2::GetCohortUsersRequestData.new({
    attributes: DatadogAPIClient::V2::GetCohortUsersRequestDataAttributes.new({
      definition: DatadogAPIClient::V2::GetCohortUsersRequestDataAttributesDefinition.new({
        audience_filters: DatadogAPIClient::V2::GetCohortUsersRequestDataAttributesDefinitionAudienceFilters.new({
          accounts: [
            DatadogAPIClient::V2::GetCohortUsersRequestDataAttributesDefinitionAudienceFiltersAccountsItems.new({
              name: "",
            }),
          ],
          segments: [
            DatadogAPIClient::V2::GetCohortUsersRequestDataAttributesDefinitionAudienceFiltersSegmentsItems.new({
              name: "",
              segment_id: "",
            }),
          ],
          users: [
            DatadogAPIClient::V2::GetCohortUsersRequestDataAttributesDefinitionAudienceFiltersUsersItems.new({
              name: "",
            }),
          ],
        }),
      }),
      time: DatadogAPIClient::V2::GetCohortUsersRequestDataAttributesTime.new({}),
    }),
    type: DatadogAPIClient::V2::GetCohortUsersRequestDataType::COHORT_USERS_REQUEST,
  }),
})
p api_instance.get_rum_cohort_users(body)
