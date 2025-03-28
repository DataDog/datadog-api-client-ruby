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
  # The data attributes of a notebook.
  class NotebookUpdateDataAttributes
    include BaseGenericModel

    # List of cells to display in the notebook.
    attr_reader :cells

    # Metadata associated with the notebook.
    attr_accessor :metadata

    # The name of the notebook.
    attr_reader :name

    # Publication status of the notebook. For now, always "published".
    attr_accessor :status

    # Notebook global timeframe.
    attr_reader :time

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'cells' => :'cells',
        :'metadata' => :'metadata',
        :'name' => :'name',
        :'status' => :'status',
        :'time' => :'time'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'cells' => :'Array<NotebookUpdateCell>',
        :'metadata' => :'NotebookMetadata',
        :'name' => :'String',
        :'status' => :'NotebookStatus',
        :'time' => :'NotebookGlobalTime'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::NotebookUpdateDataAttributes` initialize method"
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

      if attributes.key?(:'cells')
        if (value = attributes[:'cells']).is_a?(Array)
          self.cells = value
        end
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'time')
        self.time = attributes[:'time']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @cells.nil?
      return false if @name.nil?
      return false if @name.to_s.length > 80
      return false if @name.to_s.length < 0
      return false if @time.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param cells [Object] Object to be assigned
    # @!visibility private
    def cells=(cells)
      if cells.nil?
        fail ArgumentError, 'invalid value for "cells", cells cannot be nil.'
      end
      @cells = cells
    end

    # Custom attribute writer method with validation
    # @param name [Object] Object to be assigned
    # @!visibility private
    def name=(name)
      if name.nil?
        fail ArgumentError, 'invalid value for "name", name cannot be nil.'
      end
      if name.to_s.length > 80
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 80.'
      end
      if name.to_s.length < 0
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 0.'
      end
      @name = name
    end

    # Custom attribute writer method with validation
    # @param time [Object] Object to be assigned
    # @!visibility private
    def time=(time)
      if time.nil?
        fail ArgumentError, 'invalid value for "time", time cannot be nil.'
      end
      @time = time
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
          cells == o.cells &&
          metadata == o.metadata &&
          name == o.name &&
          status == o.status &&
          time == o.time &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [cells, metadata, name, status, time, additional_properties].hash
    end
  end
end
