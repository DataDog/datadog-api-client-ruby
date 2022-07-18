# Change the related incidents of a security signal returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringSignalIncidentsUpdateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringSignalIncidentsUpdateData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringSignalIncidentsUpdateAttributes.new({
      incident_ids: [
        2066,
      ],
    }),
  }),
})
p api_instance.edit_security_monitoring_signal_incidents("AQAAAYG1bl5K4HuUewAAAABBWUcxYmw1S0FBQmt2RmhRN0V4ZUVnQUE", body)
