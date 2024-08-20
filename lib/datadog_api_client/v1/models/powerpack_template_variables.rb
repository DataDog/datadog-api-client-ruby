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
  # Powerpack template variables.
  class PowerpackTemplateVariables
    include BaseGenericModel

    # Template variables controlled at the powerpack level.
    attr_accessor :controlled_by_powerpack

    # Template variables controlled by the external resource, such as the dashboard this powerpack is on.
    attr_accessor :controlled_externally

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'controlled_by_powerpack' => :'controlled_by_powerpack',
        :'controlled_externally' => :'controlled_externally'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'controlled_by_powerpack' => :'Array<PowerpackTemplateVariableContents>',
        :'controlled_externally' => :'Array<PowerpackTemplateVariableContents>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::PowerpackTemplateVariables` initialize method"
      end

      self.additional_properties = {}
      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          self.additional_properties[k.to_sym] = v
        else
          h[k.to_sym] = v
        end
      }

      if attributes.key?(:'controlled_by_powerpack')
        if (value = attributes[:'controlled_by_powerpack']).is_a?(Array)
          self.controlled_by_powerpack = value
        end
      end

      if attributes.key?(:'controlled_externally')
        if (value = attributes[:'controlled_externally']).is_a?(Array)
          self.controlled_externally = value
        end
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          controlled_by_powerpack == o.controlled_by_powerpack &&
          controlled_externally == o.controlled_externally
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [controlled_by_powerpack, controlled_externally].hash
    end
  end
end
