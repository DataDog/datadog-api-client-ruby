# Unassign seats from users returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SeatsAPI.new

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

body = DatadogAPIClient::V2::UnassignSeatsUserRequest.new({
  data: DatadogAPIClient::V2::UnassignSeatsUserRequestData.new({
    type: DatadogAPIClient::V2::SeatAssignmentsDataType::SEAT_ASSIGNMENTS,
    attributes: DatadogAPIClient::V2::UnassignSeatsUserRequestDataAttributes.new({
      product_code: "incident_response",
      user_uuids: [
        USER_DATA_ID,
      ],
    }),
  }),
})
api_instance.unassign_seats_user(body)
