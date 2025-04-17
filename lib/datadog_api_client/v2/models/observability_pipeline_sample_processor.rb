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
  # The `sample` processor allows probabilistic sampling of logs at a fixed rate.
  class ObservabilityPipelineSampleProcessor
    include BaseGenericModel

    # The unique identifier for this component. Used to reference this component in other parts of the pipeline (for example, as the `input` to downstream components).
    attr_reader :id

    # A Datadog search query used to determine which logs this processor targets.
    attr_reader :include

    # A list of component IDs whose output is used as the `input` for this component.
    attr_reader :inputs

    # Number of events to sample (1 in N).
    attr_reader :rate

    # The processor type. The value should always be `sample`.
    attr_reader :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'id' => :'id',
        :'include' => :'include',
        :'inputs' => :'inputs',
        :'rate' => :'rate',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'id' => :'String',
        :'include' => :'String',
        :'inputs' => :'Array<String>',
        :'rate' => :'Integer',
        :'type' => :'ObservabilityPipelineSampleProcessorType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ObservabilityPipelineSampleProcessor` initialize method"
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

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'include')
        self.include = attributes[:'include']
      end

      if attributes.key?(:'inputs')
        if (value = attributes[:'inputs']).is_a?(Array)
          self.inputs = value
        end
      end

      if attributes.key?(:'rate')
        self.rate = attributes[:'rate']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @id.nil?
      return false if @include.nil?
      return false if @inputs.nil?
      return false if @rate.nil?
      return false if @rate < 1
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param id [Object] Object to be assigned
    # @!visibility private
    def id=(id)
      if id.nil?
        fail ArgumentError, 'invalid value for "id", id cannot be nil.'
      end
      @id = id
    end

    # Custom attribute writer method with validation
    # @param include [Object] Object to be assigned
    # @!visibility private
    def include=(include)
      if include.nil?
        fail ArgumentError, 'invalid value for "include", include cannot be nil.'
      end
      @include = include
    end

    # Custom attribute writer method with validation
    # @param inputs [Object] Object to be assigned
    # @!visibility private
    def inputs=(inputs)
      if inputs.nil?
        fail ArgumentError, 'invalid value for "inputs", inputs cannot be nil.'
      end
      @inputs = inputs
    end

    # Custom attribute writer method with validation
    # @param rate [Object] Object to be assigned
    # @!visibility private
    def rate=(rate)
      if rate.nil?
        fail ArgumentError, 'invalid value for "rate", rate cannot be nil.'
      end
      if rate < 1
        fail ArgumentError, 'invalid value for "rate", must be greater than or equal to 1.'
      end
      @rate = rate
    end

    # Custom attribute writer method with validation
    # @param type [Object] Object to be assigned
    # @!visibility private
    def type=(type)
      if type.nil?
        fail ArgumentError, 'invalid value for "type", type cannot be nil.'
      end
      @type = type
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
          id == o.id &&
          include == o.include &&
          inputs == o.inputs &&
          rate == o.rate &&
          type == o.type &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [id, include, inputs, rate, type, additional_properties].hash
    end
  end
end
