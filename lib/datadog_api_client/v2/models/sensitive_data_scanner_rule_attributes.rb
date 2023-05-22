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
  # Attributes of the Sensitive Data Scanner rule.
  class SensitiveDataScannerRuleAttributes
    include BaseGenericModel

    # Description of the rule.
    attr_accessor :description

    # Attributes excluded from the scan. If namespaces is provided, it has to be a sub-path of the namespaces array.
    attr_accessor :excluded_namespaces

    # Whether or not the rule is enabled.
    attr_accessor :is_enabled

    # Name of the rule.
    attr_accessor :name

    # Attributes included in the scan. If namespaces is empty or missing, all attributes except excluded_namespaces are scanned.
    # If both are missing the whole event is scanned.
    attr_accessor :namespaces

    # Not included if there is a relationship to a standard pattern.
    attr_accessor :pattern

    # List of tags.
    attr_accessor :tags

    # Object describing how the scanned event will be replaced.
    attr_accessor :text_replacement

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'description' => :'description',
        :'excluded_namespaces' => :'excluded_namespaces',
        :'is_enabled' => :'is_enabled',
        :'name' => :'name',
        :'namespaces' => :'namespaces',
        :'pattern' => :'pattern',
        :'tags' => :'tags',
        :'text_replacement' => :'text_replacement'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'description' => :'String',
        :'excluded_namespaces' => :'Array<String>',
        :'is_enabled' => :'Boolean',
        :'name' => :'String',
        :'namespaces' => :'Array<String>',
        :'pattern' => :'String',
        :'tags' => :'Array<String>',
        :'text_replacement' => :'SensitiveDataScannerTextReplacement'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SensitiveDataScannerRuleAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::SensitiveDataScannerRuleAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'excluded_namespaces')
        if (value = attributes[:'excluded_namespaces']).is_a?(Array)
          self.excluded_namespaces = value
        end
      end

      if attributes.key?(:'is_enabled')
        self.is_enabled = attributes[:'is_enabled']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'namespaces')
        if (value = attributes[:'namespaces']).is_a?(Array)
          self.namespaces = value
        end
      end

      if attributes.key?(:'pattern')
        self.pattern = attributes[:'pattern']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'text_replacement')
        self.text_replacement = attributes[:'text_replacement']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          description == o.description &&
          excluded_namespaces == o.excluded_namespaces &&
          is_enabled == o.is_enabled &&
          name == o.name &&
          namespaces == o.namespaces &&
          pattern == o.pattern &&
          tags == o.tags &&
          text_replacement == o.text_replacement
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [description, excluded_namespaces, is_enabled, name, namespaces, pattern, tags, text_replacement].hash
    end
  end
end
