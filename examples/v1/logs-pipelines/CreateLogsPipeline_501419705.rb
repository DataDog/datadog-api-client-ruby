# Create a pipeline with schema processor

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

body = DatadogAPIClient::V1::LogsPipeline.new({
  filter: DatadogAPIClient::V1::LogsFilter.new({
    query: "source:python",
  }),
  name: "testSchemaProcessor",
  processors: [
    DatadogAPIClient::V1::LogsSchemaProcessor.new({
      type: DatadogAPIClient::V1::LogsSchemaProcessorType::SCHEMA_PROCESSOR,
      is_enabled: true,
      name: "Apply OCSF schema for 3001",
      schema: DatadogAPIClient::V1::LogsSchemaData.new({
        schema_type: "ocsf",
        version: "1.5.0",
        class_uid: 3001,
        class_name: "Account Change",
        profiles: [
          "cloud",
          "datetime",
        ],
      }),
      mappers: [
        DatadogAPIClient::V1::LogsSchemaCategoryMapper.new({
          type: DatadogAPIClient::V1::LogsSchemaCategoryMapperType::SCHEMA_CATEGORY_MAPPER,
          name: "activity_id and activity_name",
          categories: [
            DatadogAPIClient::V1::LogsSchemaCategoryMapperCategory.new({
              filter: DatadogAPIClient::V1::LogsFilter.new({
                query: "@eventName:(*Create*)",
              }),
              name: "Create",
              id: 1,
            }),
            DatadogAPIClient::V1::LogsSchemaCategoryMapperCategory.new({
              filter: DatadogAPIClient::V1::LogsFilter.new({
                query: "@eventName:(ChangePassword OR PasswordUpdated)",
              }),
              name: "Password Change",
              id: 3,
            }),
            DatadogAPIClient::V1::LogsSchemaCategoryMapperCategory.new({
              filter: DatadogAPIClient::V1::LogsFilter.new({
                query: "@eventName:(*Attach*)",
              }),
              name: "Attach Policy",
              id: 7,
            }),
            DatadogAPIClient::V1::LogsSchemaCategoryMapperCategory.new({
              filter: DatadogAPIClient::V1::LogsFilter.new({
                query: "@eventName:(*Detach* OR *Remove*)",
              }),
              name: "Detach Policy",
              id: 8,
            }),
            DatadogAPIClient::V1::LogsSchemaCategoryMapperCategory.new({
              filter: DatadogAPIClient::V1::LogsFilter.new({
                query: "@eventName:(*Delete*)",
              }),
              name: "Delete",
              id: 6,
            }),
            DatadogAPIClient::V1::LogsSchemaCategoryMapperCategory.new({
              filter: DatadogAPIClient::V1::LogsFilter.new({
                query: "@eventName:*",
              }),
              name: "Other",
              id: 99,
            }),
          ],
          targets: DatadogAPIClient::V1::LogsSchemaCategoryMapperTargets.new({
            name: "ocsf.activity_name",
            id: "ocsf.activity_id",
          }),
          fallback: DatadogAPIClient::V1::LogsSchemaCategoryMapperFallback.new({
            values: {
              "ocsf.activity_id" => "99", "ocsf.activity_name" => "Other",
            },
            sources: {
              "ocsf.activity_name" => [
                "eventName",
              ],
            },
          }),
        }),
        DatadogAPIClient::V1::LogsSchemaCategoryMapper.new({
          type: DatadogAPIClient::V1::LogsSchemaCategoryMapperType::SCHEMA_CATEGORY_MAPPER,
          name: "status",
          categories: [
            DatadogAPIClient::V1::LogsSchemaCategoryMapperCategory.new({
              filter: DatadogAPIClient::V1::LogsFilter.new({
                query: "-@errorCode:*",
              }),
              id: 1,
              name: "Success",
            }),
            DatadogAPIClient::V1::LogsSchemaCategoryMapperCategory.new({
              filter: DatadogAPIClient::V1::LogsFilter.new({
                query: "@errorCode:*",
              }),
              id: 2,
              name: "Failure",
            }),
          ],
          targets: DatadogAPIClient::V1::LogsSchemaCategoryMapperTargets.new({
            id: "ocsf.status_id",
            name: "ocsf.status",
          }),
        }),
        DatadogAPIClient::V1::LogsSchemaCategoryMapper.new({
          type: DatadogAPIClient::V1::LogsSchemaCategoryMapperType::SCHEMA_CATEGORY_MAPPER,
          name: "Set default severity",
          categories: [
            DatadogAPIClient::V1::LogsSchemaCategoryMapperCategory.new({
              filter: DatadogAPIClient::V1::LogsFilter.new({
                query: "@eventName:*",
              }),
              name: "Informational",
              id: 1,
            }),
          ],
          targets: DatadogAPIClient::V1::LogsSchemaCategoryMapperTargets.new({
            name: "ocsf.severity",
            id: "ocsf.severity_id",
          }),
        }),
        DatadogAPIClient::V1::LogsSchemaRemapper.new({
          type: DatadogAPIClient::V1::LogsSchemaRemapperType::SCHEMA_REMAPPER,
          name: "Map userIdentity to ocsf.user.uid",
          sources: [
            "userIdentity.principalId",
            "responseElements.role.roleId",
            "responseElements.user.userId",
          ],
          target: "ocsf.user.uid",
        }),
        DatadogAPIClient::V1::LogsSchemaRemapper.new({
          type: DatadogAPIClient::V1::LogsSchemaRemapperType::SCHEMA_REMAPPER,
          name: "Map userName to ocsf.user.name",
          sources: [
            "requestParameters.userName",
            "responseElements.role.roleName",
            "requestParameters.roleName",
            "responseElements.user.userName",
          ],
          target: "ocsf.user.name",
        }),
        DatadogAPIClient::V1::LogsSchemaRemapper.new({
          type: DatadogAPIClient::V1::LogsSchemaRemapperType::SCHEMA_REMAPPER,
          name: "Map api to ocsf.api",
          sources: [
            "api",
          ],
          target: "ocsf.api",
        }),
        DatadogAPIClient::V1::LogsSchemaRemapper.new({
          type: DatadogAPIClient::V1::LogsSchemaRemapperType::SCHEMA_REMAPPER,
          name: "Map user to ocsf.user",
          sources: [
            "user",
          ],
          target: "ocsf.user",
        }),
        DatadogAPIClient::V1::LogsSchemaRemapper.new({
          type: DatadogAPIClient::V1::LogsSchemaRemapperType::SCHEMA_REMAPPER,
          name: "Map actor to ocsf.actor",
          sources: [
            "actor",
          ],
          target: "ocsf.actor",
        }),
        DatadogAPIClient::V1::LogsSchemaRemapper.new({
          type: DatadogAPIClient::V1::LogsSchemaRemapperType::SCHEMA_REMAPPER,
          name: "Map cloud to ocsf.cloud",
          sources: [
            "cloud",
          ],
          target: "ocsf.cloud",
        }),
        DatadogAPIClient::V1::LogsSchemaRemapper.new({
          type: DatadogAPIClient::V1::LogsSchemaRemapperType::SCHEMA_REMAPPER,
          name: "Map http_request to ocsf.http_request",
          sources: [
            "http_request",
          ],
          target: "ocsf.http_request",
        }),
        DatadogAPIClient::V1::LogsSchemaRemapper.new({
          type: DatadogAPIClient::V1::LogsSchemaRemapperType::SCHEMA_REMAPPER,
          name: "Map metadata to ocsf.metadata",
          sources: [
            "metadata",
          ],
          target: "ocsf.metadata",
        }),
        DatadogAPIClient::V1::LogsSchemaRemapper.new({
          type: DatadogAPIClient::V1::LogsSchemaRemapperType::SCHEMA_REMAPPER,
          name: "Map time to ocsf.time",
          sources: [
            "time",
          ],
          target: "ocsf.time",
        }),
        DatadogAPIClient::V1::LogsSchemaRemapper.new({
          type: DatadogAPIClient::V1::LogsSchemaRemapperType::SCHEMA_REMAPPER,
          name: "Map src_endpoint to ocsf.src_endpoint",
          sources: [
            "src_endpoint",
          ],
          target: "ocsf.src_endpoint",
        }),
        DatadogAPIClient::V1::LogsSchemaRemapper.new({
          type: DatadogAPIClient::V1::LogsSchemaRemapperType::SCHEMA_REMAPPER,
          name: "Map severity to ocsf.severity",
          sources: [
            "severity",
          ],
          target: "ocsf.severity",
        }),
        DatadogAPIClient::V1::LogsSchemaRemapper.new({
          type: DatadogAPIClient::V1::LogsSchemaRemapperType::SCHEMA_REMAPPER,
          name: "Map severity_id to ocsf.severity_id",
          sources: [
            "severity_id",
          ],
          target: "ocsf.severity_id",
        }),
      ],
    }),
  ],
  tags: [],
})
p api_instance.create_logs_pipeline(body)
