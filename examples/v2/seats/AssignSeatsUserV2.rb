# Assign seats to users returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SeatsAPI.new

body = DatadogAPIClient::V2::AssignSeatsUserRequest.new({
  data: DatadogAPIClient::V2::AssignSeatsUserRequestData.new({
    attributes: DatadogAPIClient::V2::AssignSeatsUserRequestDataAttributes.new({
      product_code: "",
      user_uuids: [
        "",
      ],
    }),
    type: DatadogAPIClient::V2::SeatAssignmentsDataType::SEAT_ASSIGNMENTS,
  }),
})
p api_instance.assign_seats_user_v2(body)
