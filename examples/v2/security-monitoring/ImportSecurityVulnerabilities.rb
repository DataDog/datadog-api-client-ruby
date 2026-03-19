# Import vulnerabilities returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.import_security_vulnerabilities".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::CycloneDXBOM.new({
  bom_format: "CycloneDX",
  components: [
    DatadogAPIClient::V2::CycloneDXComponent.new({
      bom_ref: "a3390fca-c315-41ae-ae05-af5e7859cdee",
      name: "lodash",
      purl: "pkg:npm/lodash@4.17.21",
      type: DatadogAPIClient::V2::CycloneDXComponentType::LIBRARY,
      version: "4.17.21",
    }),
  ],
  metadata: DatadogAPIClient::V2::CycloneDXMetadata.new({
    component: DatadogAPIClient::V2::CycloneDXAssetComponent.new({
      bom_ref: "asset-ref-123",
      name: "i-12345",
      type: "operating-system",
    }),
    tools: DatadogAPIClient::V2::CycloneDXTools.new({
      components: [
        DatadogAPIClient::V2::CycloneDXToolComponent.new({
          name: "my-scanner",
          type: "application",
        }),
      ],
    }),
  }),
  spec_version: "1.5",
  version: 1,
  vulnerabilities: [
    DatadogAPIClient::V2::CycloneDXVulnerability.new({
      advisories: [
        DatadogAPIClient::V2::CycloneDXAdvisory.new({
          url: "https://example.com/advisory/CVE-2021-1234",
        }),
      ],
      affects: [
        DatadogAPIClient::V2::CycloneDXAffect.new({
          ref: "a3390fca-c315-41ae-ae05-af5e7859cdee",
        }),
      ],
      cwes: [
        123,
        345,
      ],
      description: "Sample vulnerability detected in the application.",
      detail: "Details about the vulnerability",
      id: "CVE-2021-1234",
      ratings: [
        DatadogAPIClient::V2::CycloneDXRating.new({
          score: 9.0,
          severity: "high",
          vector: "CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:C/C:H/I:H/A:N",
        }),
      ],
      references: [
        DatadogAPIClient::V2::CycloneDXReference.new({
          id: "GHSA-35m5-8cvj-8783",
          source: DatadogAPIClient::V2::CycloneDXReferenceSource.new({
            url: "https://example.com",
          }),
        }),
      ],
    }),
  ],
})
p api_instance.import_security_vulnerabilities(body)
