# Assign seats to users returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SeatsAPI.new

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

body = DatadogAPIClient::V2::AssignSeatsUserRequest.new({
  data: DatadogAPIClient::V2::AssignSeatsUserRequestData.new({
    type: DatadogAPIClient::V2::SeatAssignmentsDataType::SEAT_ASSIGNMENTS,
    attributes: DatadogAPIClient::V2::AssignSeatsUserRequestDataAttributes.new({
      product_code: "incident_response",
      user_uuids: [
        USER_DATA_ID,
      ],
    }),
  }),
})
p api_instance.assign_seats_user(body)
