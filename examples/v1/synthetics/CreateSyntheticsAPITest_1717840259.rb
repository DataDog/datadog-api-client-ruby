# Create a multi-step api test with every type of basicAuth returns "OK - Returns the created test details." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsAPITest.new({
  config: DatadogAPIClient::V1::SyntheticsAPITestConfig.new({
    steps: [
      DatadogAPIClient::V1::SyntheticsAPITestStep.new({
        assertions: [
          DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
            operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::IS,
            type: DatadogAPIClient::V1::SyntheticsAssertionType::STATUS_CODE,
            target: 200,
          }),
        ],
        name: "request is sent",
        request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
          url: "https://httpbin.org/status/200",
          method: "GET",
          basic_auth: DatadogAPIClient::V1::SyntheticsBasicAuthWeb.new({
            password: "password",
            username: "username",
          }),
        }),
        subtype: DatadogAPIClient::V1::SyntheticsAPITestStepSubtype::HTTP,
      }),
      DatadogAPIClient::V1::SyntheticsAPITestStep.new({
        assertions: [
          DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
            operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::IS,
            type: DatadogAPIClient::V1::SyntheticsAssertionType::STATUS_CODE,
            target: 200,
          }),
        ],
        name: "request is sent",
        request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
          url: "https://httpbin.org/status/200",
          method: "GET",
          basic_auth: DatadogAPIClient::V1::SyntheticsBasicAuthWeb.new({
            password: "password",
            username: "username",
            type: DatadogAPIClient::V1::SyntheticsBasicAuthWebType::WEB,
          }),
        }),
        subtype: DatadogAPIClient::V1::SyntheticsAPITestStepSubtype::HTTP,
      }),
      DatadogAPIClient::V1::SyntheticsAPITestStep.new({
        assertions: [
          DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
            operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::IS,
            type: DatadogAPIClient::V1::SyntheticsAssertionType::STATUS_CODE,
            target: 200,
          }),
        ],
        name: "request is sent",
        request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
          url: "https://httpbin.org/status/200",
          method: "GET",
          basic_auth: DatadogAPIClient::V1::SyntheticsBasicAuthSigv4.new({
            access_key: "accessKey",
            secret_key: "secretKey",
            type: DatadogAPIClient::V1::SyntheticsBasicAuthSigv4Type::SIGV4,
          }),
        }),
        subtype: DatadogAPIClient::V1::SyntheticsAPITestStepSubtype::HTTP,
      }),
      DatadogAPIClient::V1::SyntheticsAPITestStep.new({
        assertions: [
          DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
            operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::IS,
            type: DatadogAPIClient::V1::SyntheticsAssertionType::STATUS_CODE,
            target: 200,
          }),
        ],
        name: "request is sent",
        request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
          url: "https://httpbin.org/status/200",
          method: "GET",
          basic_auth: DatadogAPIClient::V1::SyntheticsBasicAuthNTLM.new({
            type: DatadogAPIClient::V1::SyntheticsBasicAuthNTLMType::NTLM,
          }),
        }),
        subtype: DatadogAPIClient::V1::SyntheticsAPITestStepSubtype::HTTP,
      }),
      DatadogAPIClient::V1::SyntheticsAPITestStep.new({
        assertions: [
          DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
            operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::IS,
            type: DatadogAPIClient::V1::SyntheticsAssertionType::STATUS_CODE,
            target: 200,
          }),
        ],
        name: "request is sent",
        request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
          url: "https://httpbin.org/status/200",
          method: "GET",
          basic_auth: DatadogAPIClient::V1::SyntheticsBasicAuthDigest.new({
            password: "password",
            username: "username",
            type: DatadogAPIClient::V1::SyntheticsBasicAuthDigestType::DIGEST,
          }),
        }),
        subtype: DatadogAPIClient::V1::SyntheticsAPITestStepSubtype::HTTP,
      }),
      DatadogAPIClient::V1::SyntheticsAPITestStep.new({
        assertions: [
          DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
            operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::IS,
            type: DatadogAPIClient::V1::SyntheticsAssertionType::STATUS_CODE,
            target: 200,
          }),
        ],
        name: "request is sent",
        request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
          url: "https://httpbin.org/status/200",
          method: "GET",
          basic_auth: DatadogAPIClient::V1::SyntheticsBasicAuthOauthClient.new({
            access_token_url: "accessTokenUrl",
            token_api_authentication: DatadogAPIClient::V1::SyntheticsBasicAuthOauthTokenApiAuthentication::HEADER,
            client_id: "clientId",
            client_secret: "clientSecret",
            type: DatadogAPIClient::V1::SyntheticsBasicAuthOauthClientType::OAUTH_CLIENT,
          }),
        }),
        subtype: DatadogAPIClient::V1::SyntheticsAPITestStepSubtype::HTTP,
      }),
      DatadogAPIClient::V1::SyntheticsAPITestStep.new({
        assertions: [
          DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
            operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::IS,
            type: DatadogAPIClient::V1::SyntheticsAssertionType::STATUS_CODE,
            target: 200,
          }),
        ],
        name: "request is sent",
        request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
          url: "https://httpbin.org/status/200",
          method: "GET",
          basic_auth: DatadogAPIClient::V1::SyntheticsBasicAuthOauthROP.new({
            access_token_url: "accessTokenUrl",
            password: "password",
            token_api_authentication: DatadogAPIClient::V1::SyntheticsBasicAuthOauthTokenApiAuthentication::HEADER,
            username: "username",
            type: DatadogAPIClient::V1::SyntheticsBasicAuthOauthROPType::OAUTH_ROP,
          }),
        }),
        subtype: DatadogAPIClient::V1::SyntheticsAPITestStepSubtype::HTTP,
      }),
    ],
  }),
  locations: [
    "aws:us-east-2",
  ],
  message: "BDD test payload: synthetics_api_test_multi_step_with_every_type_of_basic_auth.json",
  name: "Example-Synthetic",
  options: DatadogAPIClient::V1::SyntheticsTestOptions.new({
    tick_every: 60,
  }),
  subtype: DatadogAPIClient::V1::SyntheticsTestDetailsSubType::MULTI,
  type: DatadogAPIClient::V1::SyntheticsAPITestType::API,
})
p api_instance.create_synthetics_api_test(body)
