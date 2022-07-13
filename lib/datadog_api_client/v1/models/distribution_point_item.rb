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
  # List of distribution point.
  module DistributionPointItem
    class << self
      include DatadogAPIClient::BaseOneOfModel
      include DatadogAPIClient::BaseOneOfModelNoDiscriminator

      # List of class defined in oneOf (OpenAPI v3)
      def openapi_one_of
        [
          :'Float',
          :'Array<Float>'
        ]
      end
      # Builds the object
      # @param [Mixed] Data to be matched against the list of oneOf items
      # @return [Object] Returns the model or the data itself
      def build(data)
        # Go through the list of oneOf items and attempt to identify the appropriate one.
        # Note:
        # - We do not attempt to check whether exactly one item matches.
        # - No advanced validation of types in some cases (e.g. "x: { type: string }" will happily match { x: 123 })
        #   due to the way the deserialization is made in the base_object template (it just casts without verifying).
        # - TODO: scalar values are de facto behaving as if they were nullable.
        # - TODO: logging when debugging is set.
        openapi_one_of.each do |klass|
          begin
            next if klass == :AnyType # "nullable: true"
            typed_data = find_and_cast_into_type(klass, data)
            next if typed_data._unparsed
            return typed_data if typed_data
          rescue # rescue all errors so we keep iterating even if the current item lookup raises
          end
        end

        if openapi_one_of.include?(:AnyType)
          data
        else
          self._unparsed = true
          DatadogAPIClient::UnparsedObject.new(data)
        end
      end
    end
  end
end
