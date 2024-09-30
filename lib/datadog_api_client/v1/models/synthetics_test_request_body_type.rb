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
  # Type of the request body.
  class SyntheticsTestRequestBodyType
    include BaseEnumModel

    TEXT_PLAIN = "text/plain".freeze
    APPLICATION_JSON = "application/json".freeze
    TEXT_XML = "text/xml".freeze
    TEXT_HTML = "text/html".freeze
    APPLICATION_X_WWW_FORM_URLENCODED = "application/x-www-form-urlencoded".freeze
    GRAPHQL = "graphql".freeze
    APPLICATION_OCTET_STREAM = "application/octet-stream".freeze
    MULTIPART_FORM_DATA = "multipart/form-data".freeze
  end
end