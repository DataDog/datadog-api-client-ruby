# Create a monitor user template returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MonitorsAPI.new

body = DatadogAPIClient::V2::MonitorUserTemplateCreateRequest.new({
  data: DatadogAPIClient::V2::MonitorUserTemplateCreateData.new({
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
    type: DatadogAPIClient::V2::MonitorUserTemplateResourceType::MONITOR_USER_TEMPLATE,
  }),
})
p api_instance.create_monitor_user_template(body)
