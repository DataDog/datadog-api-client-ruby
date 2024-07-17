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
  # The device attributes
  class DeviceAttributes
    include BaseGenericModel

    # The device description
    attr_accessor :description

    # The device type
    attr_accessor :device_type

    # The device integration
    attr_accessor :integration

    # Count of the device interfaces by status
    attr_accessor :interface_statuses

    # The device IP address
    attr_accessor :ip_address

    # The device location
    attr_accessor :location

    # The device model
    attr_accessor :model

    # The device name
    attr_accessor :name

    # The device OS hostname
    attr_accessor :os_hostname

    # The device OS name
    attr_accessor :os_name

    # The device OS version
    attr_accessor :os_version

    # The device ping status
    attr_accessor :ping_status

    # The device product name
    attr_accessor :product_name

    # The device serial number
    attr_accessor :serial_number

    # The device SNMP status
    attr_accessor :status

    # The device subnet
    attr_accessor :subnet

    # The device `sys_object_id`
    attr_accessor :sys_object_id

    # The list of device tags
    attr_accessor :tags

    # The device vendor
    attr_accessor :vendor

    # The device version
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'description' => :'description',
        :'device_type' => :'device_type',
        :'integration' => :'integration',
        :'interface_statuses' => :'interface_statuses',
        :'ip_address' => :'ip_address',
        :'location' => :'location',
        :'model' => :'model',
        :'name' => :'name',
        :'os_hostname' => :'os_hostname',
        :'os_name' => :'os_name',
        :'os_version' => :'os_version',
        :'ping_status' => :'ping_status',
        :'product_name' => :'product_name',
        :'serial_number' => :'serial_number',
        :'status' => :'status',
        :'subnet' => :'subnet',
        :'sys_object_id' => :'sys_object_id',
        :'tags' => :'tags',
        :'vendor' => :'vendor',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'description' => :'String',
        :'device_type' => :'String',
        :'integration' => :'String',
        :'interface_statuses' => :'DeviceAttributesInterfaceStatuses',
        :'ip_address' => :'String',
        :'location' => :'String',
        :'model' => :'String',
        :'name' => :'String',
        :'os_hostname' => :'String',
        :'os_name' => :'String',
        :'os_version' => :'String',
        :'ping_status' => :'String',
        :'product_name' => :'String',
        :'serial_number' => :'String',
        :'status' => :'String',
        :'subnet' => :'String',
        :'sys_object_id' => :'String',
        :'tags' => :'Array<String>',
        :'vendor' => :'String',
        :'version' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::DeviceAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::DeviceAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'device_type')
        self.device_type = attributes[:'device_type']
      end

      if attributes.key?(:'integration')
        self.integration = attributes[:'integration']
      end

      if attributes.key?(:'interface_statuses')
        self.interface_statuses = attributes[:'interface_statuses']
      end

      if attributes.key?(:'ip_address')
        self.ip_address = attributes[:'ip_address']
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'model')
        self.model = attributes[:'model']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'os_hostname')
        self.os_hostname = attributes[:'os_hostname']
      end

      if attributes.key?(:'os_name')
        self.os_name = attributes[:'os_name']
      end

      if attributes.key?(:'os_version')
        self.os_version = attributes[:'os_version']
      end

      if attributes.key?(:'ping_status')
        self.ping_status = attributes[:'ping_status']
      end

      if attributes.key?(:'product_name')
        self.product_name = attributes[:'product_name']
      end

      if attributes.key?(:'serial_number')
        self.serial_number = attributes[:'serial_number']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'subnet')
        self.subnet = attributes[:'subnet']
      end

      if attributes.key?(:'sys_object_id')
        self.sys_object_id = attributes[:'sys_object_id']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'vendor')
        self.vendor = attributes[:'vendor']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          description == o.description &&
          device_type == o.device_type &&
          integration == o.integration &&
          interface_statuses == o.interface_statuses &&
          ip_address == o.ip_address &&
          location == o.location &&
          model == o.model &&
          name == o.name &&
          os_hostname == o.os_hostname &&
          os_name == o.os_name &&
          os_version == o.os_version &&
          ping_status == o.ping_status &&
          product_name == o.product_name &&
          serial_number == o.serial_number &&
          status == o.status &&
          subnet == o.subnet &&
          sys_object_id == o.sys_object_id &&
          tags == o.tags &&
          vendor == o.vendor &&
          version == o.version
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [description, device_type, integration, interface_statuses, ip_address, location, model, name, os_hostname, os_name, os_version, ping_status, product_name, serial_number, status, subnet, sys_object_id, tags, vendor, version].hash
    end
  end
end
