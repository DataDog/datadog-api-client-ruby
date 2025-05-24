# Update a monitor user template to a new version returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MonitorsAPI.new

# there is a valid "monitor_user_template" in the system
MONITOR_USER_TEMPLATE_DATA_ID = ENV["MONITOR_USER_TEMPLATE_DATA_ID"]

body = DatadogAPIClient::V2::MonitorUserTemplateUpdateRequest.new({
  data: DatadogAPIClient::V2::MonitorUserTemplateUpdateData.new({
    attributes: DatadogAPIClient::V2::MonitorUserTemplateRequestAttributes.new({
      description: "A description.",
      monitor_definition: DatadogAPIClient::V2::MonitorUserTemplateMonitorDefinition.new({}),
      tags: [
        "integration:Azure",
      ],
      template_variables: [
        DatadogAPIClient::V2::MonitorUserTemplateTemplateVariablesItems.new({
          available_values: [
            "value1",
            "value2",
          ],
          defaults: [
            "defaultValue",
          ],
          name: "regionName",
          tag_key: "datacenter",
        }),
      ],
      title: "Postgres DB example-monitor",
    }),
    id: MONITOR_USER_TEMPLATE_DATA_ID,
    type: DatadogAPIClient::V2::MonitorUserTemplateResourceType::MONITOR_USER_TEMPLATE,
  }),
})
p api_instance.update_monitor_user_template(MONITOR_USER_TEMPLATE_DATA_ID, body)
