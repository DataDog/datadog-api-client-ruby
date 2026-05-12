# Create backfilled degradation returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

# there is a valid "status_page" in the system
STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_COMPONENTS_0_ID = ENV["STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_COMPONENTS_0_ID"]
STATUS_PAGE_DATA_ID = ENV["STATUS_PAGE_DATA_ID"]

body = DatadogAPIClient::V2::CreateBackfilledDegradationRequest.new({
  data: DatadogAPIClient::V2::CreateBackfilledDegradationRequestData.new({
    attributes: DatadogAPIClient::V2::CreateBackfilledDegradationRequestDataAttributes.new({
      title: "Past API Outage",
      updates: [
        DatadogAPIClient::V2::CreateBackfilledDegradationRequestDataAttributesUpdatesItems.new({
          components_affected: [
            DatadogAPIClient::V2::CreateDegradationRequestDataAttributesComponentsAffectedItems.new({
              id: STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_COMPONENTS_0_ID,
              status: DatadogAPIClient::V2::StatusPagesComponentDataAttributesStatus::DEGRADED,
            }),
          ],
          description: "We detected elevated error rates in the API.",
          started_at: (Time.now + -1 * 3600),
          status: DatadogAPIClient::V2::CreateDegradationRequestDataAttributesStatus::INVESTIGATING,
        }),
        DatadogAPIClient::V2::CreateBackfilledDegradationRequestDataAttributesUpdatesItems.new({
          components_affected: [
            DatadogAPIClient::V2::CreateDegradationRequestDataAttributesComponentsAffectedItems.new({
              id: STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_COMPONENTS_0_ID,
              status: DatadogAPIClient::V2::StatusPagesComponentDataAttributesStatus::DEGRADED,
            }),
          ],
          description: "Root cause identified as a misconfigured deployment.",
          started_at: (Time.now + -30 * 60),
          status: DatadogAPIClient::V2::CreateDegradationRequestDataAttributesStatus::IDENTIFIED,
        }),
        DatadogAPIClient::V2::CreateBackfilledDegradationRequestDataAttributesUpdatesItems.new({
          components_affected: [
            DatadogAPIClient::V2::CreateDegradationRequestDataAttributesComponentsAffectedItems.new({
              id: STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_COMPONENTS_0_ID,
              status: DatadogAPIClient::V2::StatusPagesComponentDataAttributesStatus::OPERATIONAL,
            }),
          ],
          description: "The issue has been resolved and API is operating normally.",
          started_at: Time.now,
          status: DatadogAPIClient::V2::CreateDegradationRequestDataAttributesStatus::RESOLVED,
        }),
      ],
    }),
    type: DatadogAPIClient::V2::PatchDegradationRequestDataType::DEGRADATIONS,
  }),
})
p api_instance.create_backfilled_degradation(STATUS_PAGE_DATA_ID, body)
