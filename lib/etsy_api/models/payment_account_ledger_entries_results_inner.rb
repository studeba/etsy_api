=begin
#Etsy Open API v3

#<div class=\"wt-text-body-01\"><p class=\"wt-pt-xs-2 wt-pb-xs-2\">Etsy's Open API provides a simple RESTful interface for various Etsy.com features. The API endpoints are meant to replace Etsy's Open API v2, which is scheduled to end service in 2022.</p><p class=\"wt-pb-xs-2\">All of the endpoints are callable and the majority of the API endpoints are now in a beta phase. This means we do not expect to make any breaking changes before our general release. A handful of endpoints are currently interface stubs (labeled “Feedback Only”) and returns a \"501 Not Implemented\" response code when called.</p><p class=\"wt-pb-xs-2\">If you'd like to report an issue or provide feedback on the API design, <a target=\"_blank\" class=\"wt-text-link wt-p-xs-0\" href=\"https://github.com/etsy/open-api/issues/new/choose\">please add an issue in Github</a>.</p></div>&copy; 2021-2022 Etsy, Inc. All Rights Reserved. Use of this code is subject to Etsy's <a class='wt-text-link wt-p-xs-0' target='_blank' href='https://www.etsy.com/legal/api'>API Developer Terms of Use</a>.

The version of the OpenAPI document: 3.0.0
Contact: developers@etsy.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module EtsyApi
  # The PaymentAccountLedgerEntry resources found.
  class PaymentAccountLedgerEntriesResultsInner
    # The ledger entry's numeric ID.
    attr_accessor :entry_id

    # The ledger's numeric ID.
    attr_accessor :ledger_id

    # The sequence allows ledger entries to be sorted chronologically. The higher the sequence, the more recent the entry.
    attr_accessor :sequence_number

    # The amount of money credited to the ledger.
    attr_accessor :amount

    # The currency of the entry on the ledger.
    attr_accessor :currency

    # Details what kind of ledger entry this is: a payment, refund, reversal of a failed refund, disbursement, returned disbursement, recoupment, miscellaneous credit, miscellaneous debit, or bill payment.
    attr_accessor :description

    # The amount of money in the shop's ledger the moment after this entry was applied.
    attr_accessor :balance

    # The date and time the ledger entry was created in Epoch seconds.
    attr_accessor :create_date

    # The date and time the ledger entry was created in Epoch seconds.
    attr_accessor :created_timestamp

    # The original reference type for the ledger entry.
    attr_accessor :ledger_type

    # The object type the ledger entry refers to.
    attr_accessor :reference_type

    # The object id the ledger entry refers to.
    attr_accessor :reference_id

    # List of refund objects on an Etsy Payments transaction. All monetary amounts are in USD pennies unless otherwise specified.
    attr_accessor :payment_adjustments

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'entry_id' => :'entry_id',
        :'ledger_id' => :'ledger_id',
        :'sequence_number' => :'sequence_number',
        :'amount' => :'amount',
        :'currency' => :'currency',
        :'description' => :'description',
        :'balance' => :'balance',
        :'create_date' => :'create_date',
        :'created_timestamp' => :'created_timestamp',
        :'ledger_type' => :'ledger_type',
        :'reference_type' => :'reference_type',
        :'reference_id' => :'reference_id',
        :'payment_adjustments' => :'payment_adjustments'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'entry_id' => :'Integer',
        :'ledger_id' => :'Integer',
        :'sequence_number' => :'Integer',
        :'amount' => :'Integer',
        :'currency' => :'String',
        :'description' => :'String',
        :'balance' => :'Integer',
        :'create_date' => :'Integer',
        :'created_timestamp' => :'Integer',
        :'ledger_type' => :'String',
        :'reference_type' => :'String',
        :'reference_id' => :'String',
        :'payment_adjustments' => :'Array<PaymentAccountLedgerEntryPaymentAdjustmentsInner>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'reference_id',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'PaymentAccountLedgerEntry'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `EtsyApi::PaymentAccountLedgerEntriesResultsInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `EtsyApi::PaymentAccountLedgerEntriesResultsInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'entry_id')
        self.entry_id = attributes[:'entry_id']
      end

      if attributes.key?(:'ledger_id')
        self.ledger_id = attributes[:'ledger_id']
      end

      if attributes.key?(:'sequence_number')
        self.sequence_number = attributes[:'sequence_number']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'balance')
        self.balance = attributes[:'balance']
      end

      if attributes.key?(:'create_date')
        self.create_date = attributes[:'create_date']
      end

      if attributes.key?(:'created_timestamp')
        self.created_timestamp = attributes[:'created_timestamp']
      end

      if attributes.key?(:'ledger_type')
        self.ledger_type = attributes[:'ledger_type']
      end

      if attributes.key?(:'reference_type')
        self.reference_type = attributes[:'reference_type']
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'payment_adjustments')
        if (value = attributes[:'payment_adjustments']).is_a?(Array)
          self.payment_adjustments = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@entry_id.nil? && @entry_id < 1
        invalid_properties.push('invalid value for "entry_id", must be greater than or equal to 1.')
      end

      if !@ledger_id.nil? && @ledger_id < 1
        invalid_properties.push('invalid value for "ledger_id", must be greater than or equal to 1.')
      end

      if !@sequence_number.nil? && @sequence_number < 0
        invalid_properties.push('invalid value for "sequence_number", must be greater than or equal to 0.')
      end

      if !@create_date.nil? && @create_date < 0
        invalid_properties.push('invalid value for "create_date", must be greater than or equal to 0.')
      end

      if !@created_timestamp.nil? && @created_timestamp < 0
        invalid_properties.push('invalid value for "created_timestamp", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@entry_id.nil? && @entry_id < 1
      return false if !@ledger_id.nil? && @ledger_id < 1
      return false if !@sequence_number.nil? && @sequence_number < 0
      return false if !@create_date.nil? && @create_date < 0
      return false if !@created_timestamp.nil? && @created_timestamp < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] entry_id Value to be assigned
    def entry_id=(entry_id)
      if !entry_id.nil? && entry_id < 1
        fail ArgumentError, 'invalid value for "entry_id", must be greater than or equal to 1.'
      end

      @entry_id = entry_id
    end

    # Custom attribute writer method with validation
    # @param [Object] ledger_id Value to be assigned
    def ledger_id=(ledger_id)
      if !ledger_id.nil? && ledger_id < 1
        fail ArgumentError, 'invalid value for "ledger_id", must be greater than or equal to 1.'
      end

      @ledger_id = ledger_id
    end

    # Custom attribute writer method with validation
    # @param [Object] sequence_number Value to be assigned
    def sequence_number=(sequence_number)
      if !sequence_number.nil? && sequence_number < 0
        fail ArgumentError, 'invalid value for "sequence_number", must be greater than or equal to 0.'
      end

      @sequence_number = sequence_number
    end

    # Custom attribute writer method with validation
    # @param [Object] create_date Value to be assigned
    def create_date=(create_date)
      if !create_date.nil? && create_date < 0
        fail ArgumentError, 'invalid value for "create_date", must be greater than or equal to 0.'
      end

      @create_date = create_date
    end

    # Custom attribute writer method with validation
    # @param [Object] created_timestamp Value to be assigned
    def created_timestamp=(created_timestamp)
      if !created_timestamp.nil? && created_timestamp < 0
        fail ArgumentError, 'invalid value for "created_timestamp", must be greater than or equal to 0.'
      end

      @created_timestamp = created_timestamp
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          entry_id == o.entry_id &&
          ledger_id == o.ledger_id &&
          sequence_number == o.sequence_number &&
          amount == o.amount &&
          currency == o.currency &&
          description == o.description &&
          balance == o.balance &&
          create_date == o.create_date &&
          created_timestamp == o.created_timestamp &&
          ledger_type == o.ledger_type &&
          reference_type == o.reference_type &&
          reference_id == o.reference_id &&
          payment_adjustments == o.payment_adjustments
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [entry_id, ledger_id, sequence_number, amount, currency, description, balance, create_date, created_timestamp, ledger_type, reference_type, reference_id, payment_adjustments].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = EtsyApi.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
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
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
