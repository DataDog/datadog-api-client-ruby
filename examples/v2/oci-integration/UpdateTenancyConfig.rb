# Update tenancy config returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OCIIntegrationAPI.new

# there is a valid "oci_tenancy" resource in the system
OCI_TENANCY_DATA_ID = ENV["OCI_TENANCY_DATA_ID"]

body = DatadogAPIClient::V2::UpdateTenancyConfig.new({
  data: DatadogAPIClient::V2::UpdateTenancyConfigData.new({
    attributes: DatadogAPIClient::V2::UpdateTenancyConfigDataAttributes.new({
      home_region: "us-sanjose-1",
      metrics_config: DatadogAPIClient::V2::OCIMetricsConfig.new({
        compartment_tag_filters: [
          "datadog:true",
          "env:prod",
        ],
        enabled: false,
        excluded_services: [],
      }),
      resource_collection_enabled: false,
      user_ocid: "ocid1.user.test_updated",
    }),
    id: OCI_TENANCY_DATA_ID,
    type: DatadogAPIClient::V2::UpdateTenancyConfigDataType::OCI_TENANCY,
  }),
})
p api_instance.update_tenancy_config(OCI_TENANCY_DATA_ID, body)
