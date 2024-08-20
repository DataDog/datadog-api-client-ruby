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
  # Attributes describing the change of state for a given state.
  class SignalStateUpdateRequest
    include BaseGenericModel

    # Optional comment to explain why a signal is being archived.
    attr_accessor :archive_comment

    # Reason why a signal has been archived.
    attr_accessor :archive_reason

    # The new triage state of the signal.
    attr_reader :state

    # Version of the updated signal. If server side version is higher, update will be rejected.
    attr_accessor :version

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'archive_comment' => :'archiveComment',
        :'archive_reason' => :'archiveReason',
        :'state' => :'state',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'archive_comment' => :'String',
        :'archive_reason' => :'SignalArchiveReason',
        :'state' => :'SignalTriageState',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SignalStateUpdateRequest` initialize method"
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

      if attributes.key?(:'archive_comment')
        self.archive_comment = attributes[:'archive_comment']
      end

      if attributes.key?(:'archive_reason')
        self.archive_reason = attributes[:'archive_reason']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @state.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param state [Object] Object to be assigned
    # @!visibility private
    def state=(state)
      if state.nil?
        fail ArgumentError, 'invalid value for "state", state cannot be nil.'
      end
      @state = state
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
          archive_comment == o.archive_comment &&
          archive_reason == o.archive_reason &&
          state == o.state &&
          version == o.version
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [archive_comment, archive_reason, state, version].hash
    end
  end
end
