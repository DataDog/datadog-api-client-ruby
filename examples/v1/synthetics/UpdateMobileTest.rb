# Edit a mobile test returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsMobileTest.new({
  config: DatadogAPIClient::V1::SyntheticsMobileTestConfig.new({
    variables: [
      DatadogAPIClient::V1::SyntheticsConfigVariable.new({
        name: "VARIABLE_NAME",
        secure: false,
        type: DatadogAPIClient::V1::SyntheticsConfigVariableType::TEXT,
      }),
    ],
  }),
  device_ids: [
    "chrome.laptop_large",
  ],
  message: "Notification message",
  name: "Example test name",
  options: DatadogAPIClient::V1::SyntheticsMobileTestOptions.new({
    bindings: [
      DatadogAPIClient::V1::SyntheticsTestRestrictionPolicyBinding.new({
        principals: [],
        relation: DatadogAPIClient::V1::SyntheticsTestRestrictionPolicyBindingRelation::EDITOR,
      }),
    ],
    ci: DatadogAPIClient::V1::SyntheticsTestCiOptions.new({
      execution_rule: DatadogAPIClient::V1::SyntheticsTestExecutionRule::BLOCKING,
    }),
    device_ids: [
      "synthetics:mobile:device:apple_ipad_10th_gen_2022_ios_16",
    ],
    mobile_application: DatadogAPIClient::V1::SyntheticsMobileTestsMobileApplication.new({
      application_id: "00000000-0000-0000-0000-aaaaaaaaaaaa",
      reference_id: "00000000-0000-0000-0000-aaaaaaaaaaab",
      reference_type: DatadogAPIClient::V1::SyntheticsMobileTestsMobileApplicationReferenceType::LATEST,
    }),
    monitor_options: DatadogAPIClient::V1::SyntheticsTestOptionsMonitorOptions.new({
      notification_preset_name: DatadogAPIClient::V1::SyntheticsTestOptionsMonitorOptionsNotificationPresetName::SHOW_ALL,
    }),
    restricted_roles: [
      "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    ],
    _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({}),
    scheduling: DatadogAPIClient::V1::SyntheticsTestOptionsScheduling.new({
      timeframes: [
        DatadogAPIClient::V1::SyntheticsTestOptionsSchedulingTimeframe.new({
          day: 1,
          from: "07:00",
          to: "16:00",
        }),
        DatadogAPIClient::V1::SyntheticsTestOptionsSchedulingTimeframe.new({
          day: 3,
          from: "07:00",
          to: "16:00",
        }),
      ],
      timezone: "America/New_York",
    }),
    tick_every: 300,
  }),
  status: DatadogAPIClient::V1::SyntheticsTestPauseStatus::LIVE,
  steps: [
    DatadogAPIClient::V1::SyntheticsMobileStep.new({
      name: "",
      params: DatadogAPIClient::V1::SyntheticsMobileStepParams.new({
        check: DatadogAPIClient::V1::SyntheticsCheckType::EQUALS,
        direction: DatadogAPIClient::V1::SyntheticsMobileStepParamsDirection::UP,
        element: DatadogAPIClient::V1::SyntheticsMobileStepParamsElement.new({
          context_type: DatadogAPIClient::V1::SyntheticsMobileStepParamsElementContextType::NATIVE,
          relative_position: DatadogAPIClient::V1::SyntheticsMobileStepParamsElementRelativePosition.new({}),
          user_locator: DatadogAPIClient::V1::SyntheticsMobileStepParamsElementUserLocator.new({
            values: [
              DatadogAPIClient::V1::SyntheticsMobileStepParamsElementUserLocatorValuesItems.new({
                type: DatadogAPIClient::V1::SyntheticsMobileStepParamsElementUserLocatorValuesItemsType::ACCESSIBILITY_ID,
              }),
            ],
          }),
        }),
        positions: [
          DatadogAPIClient::V1::SyntheticsMobileStepParamsPositionsItems.new({}),
        ],
        variable: DatadogAPIClient::V1::SyntheticsMobileStepParamsVariable.new({
          example: "",
          name: "VAR_NAME",
        }),
      }),
      public_id: "pub-lic-id0",
      type: DatadogAPIClient::V1::SyntheticsMobileStepType::ASSERTELEMENTCONTENT,
    }),
  ],
  tags: [
    "env:production",
  ],
  type: DatadogAPIClient::V1::SyntheticsMobileTestType::MOBILE,
})
p api_instance.update_mobile_test("public_id", body)
