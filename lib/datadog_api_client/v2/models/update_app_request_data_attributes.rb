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
  # The definition of `UpdateAppRequestDataAttributes` object.
  class UpdateAppRequestDataAttributes
    include BaseGenericModel

    # The `attributes` `components`.
    attr_accessor :components

    # The `attributes` `description`.
    attr_accessor :description

    # The `attributes` `embeddedQueries`.
    attr_accessor :embedded_queries

    # The definition of `InputSchema` object.
    attr_accessor :input_schema

    # The `attributes` `name`.
    attr_accessor :name

    # The `attributes` `rootInstanceName`.
    attr_accessor :root_instance_name

    # The `attributes` `scripts`.
    attr_accessor :scripts

    # The `attributes` `tags`.
    attr_accessor :tags

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'components' => :'components',
        :'description' => :'description',
        :'embedded_queries' => :'embeddedQueries',
        :'input_schema' => :'inputSchema',
        :'name' => :'name',
        :'root_instance_name' => :'rootInstanceName',
        :'scripts' => :'scripts',
        :'tags' => :'tags'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'components' => :'Array<ComponentGrid>',
        :'description' => :'String',
        :'embedded_queries' => :'Array<Query>',
        :'input_schema' => :'InputSchema',
        :'name' => :'String',
        :'root_instance_name' => :'String',
        :'scripts' => :'Array<Script>',
        :'tags' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::UpdateAppRequestDataAttributes` initialize method"
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

      if attributes.key?(:'components')
        if (value = attributes[:'components']).is_a?(Array)
          self.components = value
        end
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'embedded_queries')
        if (value = attributes[:'embedded_queries']).is_a?(Array)
          self.embedded_queries = value
        end
      end

      if attributes.key?(:'input_schema')
        self.input_schema = attributes[:'input_schema']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'root_instance_name')
        self.root_instance_name = attributes[:'root_instance_name']
      end

      if attributes.key?(:'scripts')
        if (value = attributes[:'scripts']).is_a?(Array)
          self.scripts = value
        end
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end
    end

    # Returns the object in the form of hash, with additionalProperties support.
    # @return [Hash] Returns the object in the form of hash
    # @!visibility private
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      self.additional_properties.each_pair do |attr, value|
        hash[attr] = value
      end
      hash
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          components == o.components &&
          description == o.description &&
          embedded_queries == o.embedded_queries &&
          input_schema == o.input_schema &&
          name == o.name &&
          root_instance_name == o.root_instance_name &&
          scripts == o.scripts &&
          tags == o.tags &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [components, description, embedded_queries, input_schema, name, root_instance_name, scripts, tags, additional_properties].hash
    end
  end
end