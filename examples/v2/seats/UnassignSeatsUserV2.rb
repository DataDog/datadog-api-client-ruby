# Unassign seats from users for a product code returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SeatsAPI.new

body = DatadogAPIClient::V2::UnassignSeatsUserRequest.new({
  data: DatadogAPIClient::V2::UnassignSeatsUserRequestData.new({
    attributes: DatadogAPIClient::V2::UnassignSeatsUserRequestDataAttributes.new({
      user_uuids: [],
    }),
    type: DatadogAPIClient::V2::SeatAssignmentsDataType::SEAT_ASSIGNMENTS,
  }),
})
api_instance.unassign_seats_user_v2(body)
