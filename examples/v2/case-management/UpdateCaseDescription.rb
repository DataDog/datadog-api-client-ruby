# Update case description returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

# there is a valid "case" in the system
CASE_ID = ENV["CASE_ID"]

body = DatadogAPIClient::V2::CaseUpdateDescriptionRequest.new({
  data: DatadogAPIClient::V2::CaseUpdateDescription.new({
    attributes: DatadogAPIClient::V2::CaseUpdateDescriptionAttributes.new({
      description: "Seeing some weird memory increase... Updating the description",
    }),
    type: DatadogAPIClient::V2::CaseResourceType::CASE,
  }),
})
p api_instance.update_case_description(CASE_ID, body)
