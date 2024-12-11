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
  # Cost attributes data.
  class CostByOrgAttributes
    include BaseGenericModel

    # The account name.
    attr_accessor :account_name

    # The account public ID.
    attr_accessor :account_public_id

    # List of charges data reported for the requested month.
    attr_accessor :charges

    # The month requested.
    attr_accessor :date

    # The organization name.
    attr_accessor :org_name

    # The organization public ID.
    attr_accessor :public_id

    # The region of the Datadog instance that the organization belongs to.
    attr_accessor :region

    # The total cost of products for the month.
    attr_accessor :total_cost

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'account_name' => :'account_name',
        :'account_public_id' => :'account_public_id',
        :'charges' => :'charges',
        :'date' => :'date',
        :'org_name' => :'org_name',
        :'public_id' => :'public_id',
        :'region' => :'region',
        :'total_cost' => :'total_cost'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'account_name' => :'String',
        :'account_public_id' => :'String',
        :'charges' => :'Array<ChargebackBreakdown>',
        :'date' => :'Time',
        :'org_name' => :'String',
        :'public_id' => :'String',
        :'region' => :'String',
        :'total_cost' => :'Float'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::CostByOrgAttributes` initialize method"
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

      if attributes.key?(:'account_name')
        self.account_name = attributes[:'account_name']
      end

      if attributes.key?(:'account_public_id')
        self.account_public_id = attributes[:'account_public_id']
      end

      if attributes.key?(:'charges')
        if (value = attributes[:'charges']).is_a?(Array)
          self.charges = value
        end
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'org_name')
        self.org_name = attributes[:'org_name']
      end

      if attributes.key?(:'public_id')
        self.public_id = attributes[:'public_id']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.key?(:'total_cost')
        self.total_cost = attributes[:'total_cost']
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
          account_name == o.account_name &&
          account_public_id == o.account_public_id &&
          charges == o.charges &&
          date == o.date &&
          org_name == o.org_name &&
          public_id == o.public_id &&
          region == o.region &&
          total_cost == o.total_cost &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [account_name, account_public_id, charges, date, org_name, public_id, region, total_cost, additional_properties].hash
    end
  end
end
