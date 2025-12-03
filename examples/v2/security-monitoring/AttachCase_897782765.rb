# Attach security finding to a case returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::AttachCaseRequest.new({
  data: DatadogAPIClient::V2::AttachCaseRequestData.new({
    id: "7d16945b-baf8-411e-ab2a-20fe43af1ea3",
    relationships: DatadogAPIClient::V2::AttachCaseRequestDataRelationships.new({
      findings: DatadogAPIClient::V2::Findings.new({
        data: [
          DatadogAPIClient::V2::FindingData.new({
            id: "ZGZhMDI3ZjdjMDM3YjJmNzcxNTlhZGMwMjdmZWNiNTZ-MTVlYTNmYWU3NjNlOTNlYTE2YjM4N2JmZmI4Yjk5N2Y=",
            type: DatadogAPIClient::V2::FindingDataType::FINDINGS,
          }),
        ],
      }),
    }),
    type: DatadogAPIClient::V2::CaseDataType::CASES,
  }),
})
p api_instance.attach_case("7d16945b-baf8-411e-ab2a-20fe43af1ea3", body)
