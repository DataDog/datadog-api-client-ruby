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
  # Azure config.
  class AzureUCConfig
    include BaseGenericModel

    # The tenant ID of the azure account.
    attr_reader :account_id

    # The client ID of the Azure account.
    attr_reader :client_id

    # The timestamp when the Azure config was created.
    attr_reader :created_at

    # The dataset type of the Azure config.
    attr_reader :dataset_type

    # The error messages for the Azure config.
    attr_accessor :error_messages

    # The name of the configured Azure Export.
    attr_reader :export_name

    # The path where the Azure Export is saved.
    attr_reader :export_path

    # The ID of the Azure config.
    attr_accessor :id

    # (deprecated) The number of months the report has been backfilled.
    attr_reader :months

    # The scope of your observed subscription.
    attr_reader :scope

    # The status of the Azure config.
    attr_reader :status

    # The timestamp when the Azure config status was last updated.
    attr_reader :status_updated_at

    # The name of the storage account where the Azure Export is saved.
    attr_reader :storage_account

    # The name of the storage container where the Azure Export is saved.
    attr_reader :storage_container

    # The timestamp when the Azure config was last updated.
    attr_reader :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'account_id' => :'account_id',
        :'client_id' => :'client_id',
        :'created_at' => :'created_at',
        :'dataset_type' => :'dataset_type',
        :'error_messages' => :'error_messages',
        :'export_name' => :'export_name',
        :'export_path' => :'export_path',
        :'id' => :'id',
        :'months' => :'months',
        :'scope' => :'scope',
        :'status' => :'status',
        :'status_updated_at' => :'status_updated_at',
        :'storage_account' => :'storage_account',
        :'storage_container' => :'storage_container',
        :'updated_at' => :'updated_at'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'account_id' => :'String',
        :'client_id' => :'String',
        :'created_at' => :'String',
        :'dataset_type' => :'String',
        :'error_messages' => :'Array<String>',
        :'export_name' => :'String',
        :'export_path' => :'String',
        :'id' => :'Integer',
        :'months' => :'Integer',
        :'scope' => :'String',
        :'status' => :'String',
        :'status_updated_at' => :'String',
        :'storage_account' => :'String',
        :'storage_container' => :'String',
        :'updated_at' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::AzureUCConfig` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::AzureUCConfig`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'dataset_type')
        self.dataset_type = attributes[:'dataset_type']
      end

      if attributes.key?(:'error_messages')
        if (value = attributes[:'error_messages']).is_a?(Array)
          self.error_messages = value
        end
      end

      if attributes.key?(:'export_name')
        self.export_name = attributes[:'export_name']
      end

      if attributes.key?(:'export_path')
        self.export_path = attributes[:'export_path']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'months')
        self.months = attributes[:'months']
      end

      if attributes.key?(:'scope')
        self.scope = attributes[:'scope']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'status_updated_at')
        self.status_updated_at = attributes[:'status_updated_at']
      end

      if attributes.key?(:'storage_account')
        self.storage_account = attributes[:'storage_account']
      end

      if attributes.key?(:'storage_container')
        self.storage_container = attributes[:'storage_container']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @account_id.nil?
      return false if @client_id.nil?
      pattern = Regexp.new(/^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}.\d{6}$/)
      return false if !@created_at.nil? && @created_at !~ pattern
      return false if @dataset_type.nil?
      return false if @export_name.nil?
      return false if @export_path.nil?
      return false if !@months.nil? && @months > 36
      return false if @scope.nil?
      return false if @status.nil?
      pattern = Regexp.new(/^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}.\d{6}$/)
      return false if !@status_updated_at.nil? && @status_updated_at !~ pattern
      return false if @storage_account.nil?
      return false if @storage_container.nil?
      pattern = Regexp.new(/^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}.\d{6}$/)
      return false if !@updated_at.nil? && @updated_at !~ pattern
      true
    end

    # Custom attribute writer method with validation
    # @param account_id [Object] Object to be assigned
    # @!visibility private
    def account_id=(account_id)
      if account_id.nil?
        fail ArgumentError, 'invalid value for "account_id", account_id cannot be nil.'
      end
      @account_id = account_id
    end

    # Custom attribute writer method with validation
    # @param client_id [Object] Object to be assigned
    # @!visibility private
    def client_id=(client_id)
      if client_id.nil?
        fail ArgumentError, 'invalid value for "client_id", client_id cannot be nil.'
      end
      @client_id = client_id
    end

    # Custom attribute writer method with validation
    # @param created_at [Object] Object to be assigned
    # @!visibility private
    def created_at=(created_at)
      pattern = Regexp.new(/^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}.\d{6}$/)
      if !created_at.nil? && created_at !~ pattern
        fail ArgumentError, "invalid value for \"created_at\", must conform to the pattern #{pattern}."
      end
      @created_at = created_at
    end

    # Custom attribute writer method with validation
    # @param dataset_type [Object] Object to be assigned
    # @!visibility private
    def dataset_type=(dataset_type)
      if dataset_type.nil?
        fail ArgumentError, 'invalid value for "dataset_type", dataset_type cannot be nil.'
      end
      @dataset_type = dataset_type
    end

    # Custom attribute writer method with validation
    # @param export_name [Object] Object to be assigned
    # @!visibility private
    def export_name=(export_name)
      if export_name.nil?
        fail ArgumentError, 'invalid value for "export_name", export_name cannot be nil.'
      end
      @export_name = export_name
    end

    # Custom attribute writer method with validation
    # @param export_path [Object] Object to be assigned
    # @!visibility private
    def export_path=(export_path)
      if export_path.nil?
        fail ArgumentError, 'invalid value for "export_path", export_path cannot be nil.'
      end
      @export_path = export_path
    end

    # Custom attribute writer method with validation
    # @param months [Object] Object to be assigned
    # @!visibility private
    def months=(months)
      if !months.nil? && months > 36
        fail ArgumentError, 'invalid value for "months", must be smaller than or equal to 36.'
      end
      @months = months
    end

    # Custom attribute writer method with validation
    # @param scope [Object] Object to be assigned
    # @!visibility private
    def scope=(scope)
      if scope.nil?
        fail ArgumentError, 'invalid value for "scope", scope cannot be nil.'
      end
      @scope = scope
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
    # @param status_updated_at [Object] Object to be assigned
    # @!visibility private
    def status_updated_at=(status_updated_at)
      pattern = Regexp.new(/^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}.\d{6}$/)
      if !status_updated_at.nil? && status_updated_at !~ pattern
        fail ArgumentError, "invalid value for \"status_updated_at\", must conform to the pattern #{pattern}."
      end
      @status_updated_at = status_updated_at
    end

    # Custom attribute writer method with validation
    # @param storage_account [Object] Object to be assigned
    # @!visibility private
    def storage_account=(storage_account)
      if storage_account.nil?
        fail ArgumentError, 'invalid value for "storage_account", storage_account cannot be nil.'
      end
      @storage_account = storage_account
    end

    # Custom attribute writer method with validation
    # @param storage_container [Object] Object to be assigned
    # @!visibility private
    def storage_container=(storage_container)
      if storage_container.nil?
        fail ArgumentError, 'invalid value for "storage_container", storage_container cannot be nil.'
      end
      @storage_container = storage_container
    end

    # Custom attribute writer method with validation
    # @param updated_at [Object] Object to be assigned
    # @!visibility private
    def updated_at=(updated_at)
      pattern = Regexp.new(/^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}.\d{6}$/)
      if !updated_at.nil? && updated_at !~ pattern
        fail ArgumentError, "invalid value for \"updated_at\", must conform to the pattern #{pattern}."
      end
      @updated_at = updated_at
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          client_id == o.client_id &&
          created_at == o.created_at &&
          dataset_type == o.dataset_type &&
          error_messages == o.error_messages &&
          export_name == o.export_name &&
          export_path == o.export_path &&
          id == o.id &&
          months == o.months &&
          scope == o.scope &&
          status == o.status &&
          status_updated_at == o.status_updated_at &&
          storage_account == o.storage_account &&
          storage_container == o.storage_container &&
          updated_at == o.updated_at
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [account_id, client_id, created_at, dataset_type, error_messages, export_name, export_path, id, months, scope, status, status_updated_at, storage_account, storage_container, updated_at].hash
    end
  end
end
