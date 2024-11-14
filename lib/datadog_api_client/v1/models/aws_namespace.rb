=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # The namespace associated with the tag filter entry.
  class AWSNamespace
    include BaseEnumModel

    ELB = "elb".freeze
    APPLICATION_ELB = "application_elb".freeze
    SQS = "sqs".freeze
    RDS = "rds".freeze
    CUSTOM = "custom".freeze
    NETWORK_ELB = "network_elb".freeze
    LAMBDA = "lambda".freeze
    STEP_FUNCTIONS = "step_functions".freeze
  end
end
