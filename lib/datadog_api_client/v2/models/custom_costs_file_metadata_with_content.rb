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
  # Schema of a cost file's metadata.
  class CustomCostsFileMetadataWithContent
    include BaseGenericModel

    # Total cost in the cost file.
    attr_accessor :billed_cost

    # Currency used in the Custom Costs file.
    attr_accessor :billing_currency

    # Usage charge period of a Custom Costs file.
    attr_accessor :charge_period

    # Detail of the line items from the Custom Costs file.
    attr_accessor :content

    # Name of the Custom Costs file.
    attr_accessor :name

    # Providers contained in the Custom Costs file.
    attr_accessor :provider_names

    # Status of the Custom Costs file.
    attr_accessor :status

    # Timestamp in millisecond of the upload time of the Custom Costs file.
    attr_accessor :uploaded_at

    # Metadata of the user that has uploaded the Custom Costs file.
    attr_accessor :uploaded_by

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'billed_cost' => :'billed_cost',
        :'billing_currency' => :'billing_currency',
        :'charge_period' => :'charge_period',
        :'content' => :'content',
        :'name' => :'name',
        :'provider_names' => :'provider_names',
        :'status' => :'status',
        :'uploaded_at' => :'uploaded_at',
        :'uploaded_by' => :'uploaded_by'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'billed_cost' => :'Float',
        :'billing_currency' => :'String',
        :'charge_period' => :'CustomCostsFileUsageChargePeriod',
        :'content' => :'Array<CustomCostsFileLineItem>',
        :'name' => :'String',
        :'provider_names' => :'Array<String>',
        :'status' => :'String',
        :'uploaded_at' => :'Float',
        :'uploaded_by' => :'CustomCostsUser'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::CustomCostsFileMetadataWithContent` initialize method"
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

      if attributes.key?(:'billed_cost')
        self.billed_cost = attributes[:'billed_cost']
      end

      if attributes.key?(:'billing_currency')
        self.billing_currency = attributes[:'billing_currency']
      end

      if attributes.key?(:'charge_period')
        self.charge_period = attributes[:'charge_period']
      end

      if attributes.key?(:'content')
        if (value = attributes[:'content']).is_a?(Array)
          self.content = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'provider_names')
        if (value = attributes[:'provider_names']).is_a?(Array)
          self.provider_names = value
        end
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'uploaded_at')
        self.uploaded_at = attributes[:'uploaded_at']
      end

      if attributes.key?(:'uploaded_by')
        self.uploaded_by = attributes[:'uploaded_by']
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
          billed_cost == o.billed_cost &&
          billing_currency == o.billing_currency &&
          charge_period == o.charge_period &&
          content == o.content &&
          name == o.name &&
          provider_names == o.provider_names &&
          status == o.status &&
          uploaded_at == o.uploaded_at &&
          uploaded_by == o.uploaded_by &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [billed_cost, billing_currency, charge_period, content, name, provider_names, status, uploaded_at, uploaded_by, additional_properties].hash
    end
  end
end
