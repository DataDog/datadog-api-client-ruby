# Create tenancy config returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OCIIntegrationAPI.new

body = DatadogAPIClient::V2::CreateTenancyConfig.new({
  data: DatadogAPIClient::V2::CreateTenancyConfigData.new({
    attributes: DatadogAPIClient::V2::CreateTenancyConfigDataAttributes.new({
      auth_credentials: DatadogAPIClient::V2::AuthCredentials.new({
        fingerprint: "a7:b5:54:f2:da:a2:d7:b0:ed:f4:79:47:93:64:12:b1",
        private_key: '-----BEGIN PRIVATE KEY-----\no9kEwoumo8yHVn5Ztp4F2cxaD6+MzSJ/I6WesPyePUD7sPeorXByg1UNOXyzqDub\n/aU4/sNo2f8epM9l7QGiCtY=\n-----END PRIVATE KEY-----',
      }),
      config_version: 2,
      home_region: "us-ashburn-1",
      logs_config: DatadogAPIClient::V2::OCILogsConfig.new({
        compartment_tag_filters: [
          "datadog:true",
          "env:prod",
        ],
        enabled: true,
        enabled_services: [
          "oacnativeproduction",
        ],
      }),
      metrics_config: DatadogAPIClient::V2::OCIMetricsConfig.new({
        compartment_tag_filters: [
          "datadog:true",
          "env:prod",
        ],
        enabled: true,
        excluded_services: [
          "oci_compute",
        ],
      }),
      resource_collection_enabled: true,
      user_ocid: "ocid1.user.test",
    }),
    id: "ocid1.tenancy.dummy_value",
    type: DatadogAPIClient::V2::CreateTenancyConfigDataType::OCI_TENANCY,
  }),
})
p api_instance.create_tenancy_config(body)
