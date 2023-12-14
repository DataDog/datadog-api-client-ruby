=begin
#Datadog API V2 Collection

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

module DatadogAPIClient::V2
  # Attributes of the Sensitive Data Scanner standard pattern.
  class SensitiveDataScannerStandardPatternAttributes
    include BaseGenericModel

    # Description of the standard pattern.
    attr_accessor :description

    # List of included keywords.
    attr_accessor :included_keywords

    # Name of the standard pattern.
    attr_accessor :name

    # Regex to match.
    attr_accessor :pattern

    # Integer from 1 (high) to 5 (low) indicating standard pattern issue severity.
    attr_reader :priority

    # List of tags.
    attr_accessor :tags

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'description' => :'description',
        :'included_keywords' => :'included_keywords',
        :'name' => :'name',
        :'pattern' => :'pattern',
        :'priority' => :'priority',
        :'tags' => :'tags'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'description' => :'String',
        :'included_keywords' => :'Array<String>',
        :'name' => :'String',
        :'pattern' => :'String',
        :'priority' => :'Integer',
        :'tags' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SensitiveDataScannerStandardPatternAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::SensitiveDataScannerStandardPatternAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'included_keywords')
        if (value = attributes[:'included_keywords']).is_a?(Array)
          self.included_keywords = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'pattern')
        self.pattern = attributes[:'pattern']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@priority.nil? && @priority > 5
      return false if !@priority.nil? && @priority < 1
      true
    end

    # Custom attribute writer method with validation
    # @param priority [Object] Object to be assigned
    # @!visibility private
    def priority=(priority)
      if !priority.nil? && priority > 5
        fail ArgumentError, 'invalid value for "priority", must be smaller than or equal to 5.'
      end
      if !priority.nil? && priority < 1
        fail ArgumentError, 'invalid value for "priority", must be greater than or equal to 1.'
      end
      @priority = priority
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          description == o.description &&
          included_keywords == o.included_keywords &&
          name == o.name &&
          pattern == o.pattern &&
          priority == o.priority &&
          tags == o.tags
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [description, included_keywords, name, pattern, priority, tags].hash
    end
  end
end
