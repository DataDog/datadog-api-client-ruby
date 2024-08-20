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
  # The attributes associated with the custom destination.
  class CustomDestinationResponseAttributes
    include BaseGenericModel

    # Whether logs matching this custom destination should be forwarded or not.
    attr_accessor :enabled

    # Whether tags from the forwarded logs should be forwarded or not.
    attr_accessor :forward_tags

    # List of [keys of tags](https://docs.datadoghq.com/getting_started/tagging/#define-tags) to be filtered.
    #
    # An empty list represents no restriction is in place and either all or no tags will be
    # forwarded depending on `forward_tags_restriction_list_type` parameter.
    attr_reader :forward_tags_restriction_list

    # How `forward_tags_restriction_list` parameter should be interpreted.
    # If `ALLOW_LIST`, then only tags whose keys on the forwarded logs match the ones on the restriction list
    # are forwarded.
    #
    # `BLOCK_LIST` works the opposite way. It does not forward the tags matching the ones on the list.
    attr_accessor :forward_tags_restriction_list_type

    # A custom destination's location to forward logs.
    attr_accessor :forwarder_destination

    # The custom destination name.
    attr_accessor :name

    # The custom destination query filter. Logs matching this query are forwarded to the destination.
    attr_accessor :query

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'enabled' => :'enabled',
        :'forward_tags' => :'forward_tags',
        :'forward_tags_restriction_list' => :'forward_tags_restriction_list',
        :'forward_tags_restriction_list_type' => :'forward_tags_restriction_list_type',
        :'forwarder_destination' => :'forwarder_destination',
        :'name' => :'name',
        :'query' => :'query'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'enabled' => :'Boolean',
        :'forward_tags' => :'Boolean',
        :'forward_tags_restriction_list' => :'Array<String>',
        :'forward_tags_restriction_list_type' => :'CustomDestinationAttributeTagsRestrictionListType',
        :'forwarder_destination' => :'CustomDestinationResponseForwardDestination',
        :'name' => :'String',
        :'query' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::CustomDestinationResponseAttributes` initialize method"
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

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'forward_tags')
        self.forward_tags = attributes[:'forward_tags']
      end

      if attributes.key?(:'forward_tags_restriction_list')
        if (value = attributes[:'forward_tags_restriction_list']).is_a?(Array)
          self.forward_tags_restriction_list = value
        end
      end

      if attributes.key?(:'forward_tags_restriction_list_type')
        self.forward_tags_restriction_list_type = attributes[:'forward_tags_restriction_list_type']
      end

      if attributes.key?(:'forwarder_destination')
        self.forwarder_destination = attributes[:'forwarder_destination']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@forward_tags_restriction_list.nil? && @forward_tags_restriction_list.length > 10
      return false if !@forward_tags_restriction_list.nil? && @forward_tags_restriction_list.length < 0
      true
    end

    # Custom attribute writer method with validation
    # @param forward_tags_restriction_list [Object] Object to be assigned
    # @!visibility private
    def forward_tags_restriction_list=(forward_tags_restriction_list)
      if !forward_tags_restriction_list.nil? && forward_tags_restriction_list.length > 10
        fail ArgumentError, 'invalid value for "forward_tags_restriction_list", number of items must be less than or equal to 10.'
      end
      if !forward_tags_restriction_list.nil? && forward_tags_restriction_list.length < 0
        fail ArgumentError, 'invalid value for "forward_tags_restriction_list", number of items must be greater than or equal to 0.'
      end
      @forward_tags_restriction_list = forward_tags_restriction_list
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          enabled == o.enabled &&
          forward_tags == o.forward_tags &&
          forward_tags_restriction_list == o.forward_tags_restriction_list &&
          forward_tags_restriction_list_type == o.forward_tags_restriction_list_type &&
          forwarder_destination == o.forwarder_destination &&
          name == o.name &&
          query == o.query
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [enabled, forward_tags, forward_tags_restriction_list, forward_tags_restriction_list_type, forwarder_destination, name, query].hash
    end
  end
end
