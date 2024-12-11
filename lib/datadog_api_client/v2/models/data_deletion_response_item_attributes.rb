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
  # Deletion attribute for data deletion response.
  class DataDeletionResponseItemAttributes
    include BaseGenericModel

    # Creation time of the deletion request.
    attr_reader :created_at

    # User who created the deletion request.
    attr_reader :created_by

    # Start of requested time window, milliseconds since Unix epoch.
    attr_reader :from_time

    # List of indexes for the search. If not provided, the search is performed in all indexes.
    attr_accessor :indexes

    # Whether the deletion request is fully created or not. It can take several minutes to fully create a deletion request depending on the target query and timeframe.
    attr_reader :is_created

    # Organization ID.
    attr_reader :org_id

    # Product name.
    attr_reader :product

    # Query for creating a data deletion request.
    attr_reader :query

    # Starting time of the process to delete the requested data.
    attr_reader :starting_at

    # Status of the deletion request.
    attr_reader :status

    # End of requested time window, milliseconds since Unix epoch.
    attr_reader :to_time

    # Total number of elements to be deleted. Only the data accessible to the current user that matches the query and timeframe provided will be deleted.
    attr_reader :total_unrestricted

    # Update time of the deletion request.
    attr_reader :updated_at

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'created_at' => :'created_at',
        :'created_by' => :'created_by',
        :'from_time' => :'from_time',
        :'indexes' => :'indexes',
        :'is_created' => :'is_created',
        :'org_id' => :'org_id',
        :'product' => :'product',
        :'query' => :'query',
        :'starting_at' => :'starting_at',
        :'status' => :'status',
        :'to_time' => :'to_time',
        :'total_unrestricted' => :'total_unrestricted',
        :'updated_at' => :'updated_at'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'created_at' => :'String',
        :'created_by' => :'String',
        :'from_time' => :'Integer',
        :'indexes' => :'Array<String>',
        :'is_created' => :'Boolean',
        :'org_id' => :'Integer',
        :'product' => :'String',
        :'query' => :'String',
        :'starting_at' => :'String',
        :'status' => :'String',
        :'to_time' => :'Integer',
        :'total_unrestricted' => :'Integer',
        :'updated_at' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::DataDeletionResponseItemAttributes` initialize method"
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

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'from_time')
        self.from_time = attributes[:'from_time']
      end

      if attributes.key?(:'indexes')
        if (value = attributes[:'indexes']).is_a?(Array)
          self.indexes = value
        end
      end

      if attributes.key?(:'is_created')
        self.is_created = attributes[:'is_created']
      end

      if attributes.key?(:'org_id')
        self.org_id = attributes[:'org_id']
      end

      if attributes.key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.key?(:'starting_at')
        self.starting_at = attributes[:'starting_at']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'to_time')
        self.to_time = attributes[:'to_time']
      end

      if attributes.key?(:'total_unrestricted')
        self.total_unrestricted = attributes[:'total_unrestricted']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @created_at.nil?
      return false if @created_by.nil?
      return false if @from_time.nil?
      return false if @is_created.nil?
      return false if @org_id.nil?
      return false if @product.nil?
      return false if @query.nil?
      return false if @starting_at.nil?
      return false if @status.nil?
      return false if @to_time.nil?
      return false if @total_unrestricted.nil?
      return false if @updated_at.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param created_at [Object] Object to be assigned
    # @!visibility private
    def created_at=(created_at)
      if created_at.nil?
        fail ArgumentError, 'invalid value for "created_at", created_at cannot be nil.'
      end
      @created_at = created_at
    end

    # Custom attribute writer method with validation
    # @param created_by [Object] Object to be assigned
    # @!visibility private
    def created_by=(created_by)
      if created_by.nil?
        fail ArgumentError, 'invalid value for "created_by", created_by cannot be nil.'
      end
      @created_by = created_by
    end

    # Custom attribute writer method with validation
    # @param from_time [Object] Object to be assigned
    # @!visibility private
    def from_time=(from_time)
      if from_time.nil?
        fail ArgumentError, 'invalid value for "from_time", from_time cannot be nil.'
      end
      @from_time = from_time
    end

    # Custom attribute writer method with validation
    # @param is_created [Object] Object to be assigned
    # @!visibility private
    def is_created=(is_created)
      if is_created.nil?
        fail ArgumentError, 'invalid value for "is_created", is_created cannot be nil.'
      end
      @is_created = is_created
    end

    # Custom attribute writer method with validation
    # @param org_id [Object] Object to be assigned
    # @!visibility private
    def org_id=(org_id)
      if org_id.nil?
        fail ArgumentError, 'invalid value for "org_id", org_id cannot be nil.'
      end
      @org_id = org_id
    end

    # Custom attribute writer method with validation
    # @param product [Object] Object to be assigned
    # @!visibility private
    def product=(product)
      if product.nil?
        fail ArgumentError, 'invalid value for "product", product cannot be nil.'
      end
      @product = product
    end

    # Custom attribute writer method with validation
    # @param query [Object] Object to be assigned
    # @!visibility private
    def query=(query)
      if query.nil?
        fail ArgumentError, 'invalid value for "query", query cannot be nil.'
      end
      @query = query
    end

    # Custom attribute writer method with validation
    # @param starting_at [Object] Object to be assigned
    # @!visibility private
    def starting_at=(starting_at)
      if starting_at.nil?
        fail ArgumentError, 'invalid value for "starting_at", starting_at cannot be nil.'
      end
      @starting_at = starting_at
    end

    # Custom attribute writer method with validation
    # @param status [Object] Object to be assigned
    # @!visibility private
    def status=(status)
      if status.nil?
        fail ArgumentError, 'invalid value for "status", status cannot be nil.'
      end
      @status = status
    end

    # Custom attribute writer method with validation
    # @param to_time [Object] Object to be assigned
    # @!visibility private
    def to_time=(to_time)
      if to_time.nil?
        fail ArgumentError, 'invalid value for "to_time", to_time cannot be nil.'
      end
      @to_time = to_time
    end

    # Custom attribute writer method with validation
    # @param total_unrestricted [Object] Object to be assigned
    # @!visibility private
    def total_unrestricted=(total_unrestricted)
      if total_unrestricted.nil?
        fail ArgumentError, 'invalid value for "total_unrestricted", total_unrestricted cannot be nil.'
      end
      @total_unrestricted = total_unrestricted
    end

    # Custom attribute writer method with validation
    # @param updated_at [Object] Object to be assigned
    # @!visibility private
    def updated_at=(updated_at)
      if updated_at.nil?
        fail ArgumentError, 'invalid value for "updated_at", updated_at cannot be nil.'
      end
      @updated_at = updated_at
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
          created_at == o.created_at &&
          created_by == o.created_by &&
          from_time == o.from_time &&
          indexes == o.indexes &&
          is_created == o.is_created &&
          org_id == o.org_id &&
          product == o.product &&
          query == o.query &&
          starting_at == o.starting_at &&
          status == o.status &&
          to_time == o.to_time &&
          total_unrestricted == o.total_unrestricted &&
          updated_at == o.updated_at &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [created_at, created_by, from_time, indexes, is_created, org_id, product, query, starting_at, status, to_time, total_unrestricted, updated_at, additional_properties].hash
    end
  end
end
