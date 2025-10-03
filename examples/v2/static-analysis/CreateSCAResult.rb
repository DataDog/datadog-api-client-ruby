# Post dependencies for analysis returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_sca_result".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new

body = DatadogAPIClient::V2::ScaRequest.new({
  data: DatadogAPIClient::V2::ScaRequestData.new({
    attributes: DatadogAPIClient::V2::ScaRequestDataAttributes.new({
      commit: DatadogAPIClient::V2::ScaRequestDataAttributesCommit.new({}),
      dependencies: [
        DatadogAPIClient::V2::ScaRequestDataAttributesDependenciesItems.new({
          exclusions: [],
          locations: [
            DatadogAPIClient::V2::ScaRequestDataAttributesDependenciesItemsLocationsItems.new({
              block: DatadogAPIClient::V2::ScaRequestDataAttributesDependenciesItemsLocationsItemsFilePosition.new({
                _end: DatadogAPIClient::V2::ScaRequestDataAttributesDependenciesItemsLocationsItemsPosition.new({}),
                start: DatadogAPIClient::V2::ScaRequestDataAttributesDependenciesItemsLocationsItemsPosition.new({}),
              }),
              name: DatadogAPIClient::V2::ScaRequestDataAttributesDependenciesItemsLocationsItemsFilePosition.new({
                _end: DatadogAPIClient::V2::ScaRequestDataAttributesDependenciesItemsLocationsItemsPosition.new({}),
                start: DatadogAPIClient::V2::ScaRequestDataAttributesDependenciesItemsLocationsItemsPosition.new({}),
              }),
              namespace: DatadogAPIClient::V2::ScaRequestDataAttributesDependenciesItemsLocationsItemsFilePosition.new({
                _end: DatadogAPIClient::V2::ScaRequestDataAttributesDependenciesItemsLocationsItemsPosition.new({}),
                start: DatadogAPIClient::V2::ScaRequestDataAttributesDependenciesItemsLocationsItemsPosition.new({}),
              }),
              version: DatadogAPIClient::V2::ScaRequestDataAttributesDependenciesItemsLocationsItemsFilePosition.new({
                _end: DatadogAPIClient::V2::ScaRequestDataAttributesDependenciesItemsLocationsItemsPosition.new({}),
                start: DatadogAPIClient::V2::ScaRequestDataAttributesDependenciesItemsLocationsItemsPosition.new({}),
              }),
            }),
          ],
          reachable_symbol_properties: [
            DatadogAPIClient::V2::ScaRequestDataAttributesDependenciesItemsReachableSymbolPropertiesItems.new({}),
          ],
        }),
      ],
      files: [
        DatadogAPIClient::V2::ScaRequestDataAttributesFilesItems.new({}),
      ],
      relations: [
        DatadogAPIClient::V2::ScaRequestDataAttributesRelationsItems.new({
          depends_on: [],
        }),
      ],
      repository: DatadogAPIClient::V2::ScaRequestDataAttributesRepository.new({}),
      vulnerabilities: [
        DatadogAPIClient::V2::ScaRequestDataAttributesVulnerabilitiesItems.new({
          affects: [
            DatadogAPIClient::V2::ScaRequestDataAttributesVulnerabilitiesItemsAffectsItems.new({}),
          ],
        }),
      ],
    }),
    type: DatadogAPIClient::V2::ScaRequestDataType::SCAREQUESTS,
  }),
})
p api_instance.create_sca_result(body)
