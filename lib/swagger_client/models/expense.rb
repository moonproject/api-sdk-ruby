=begin
#Mooncard API

#Access Mooncard data from anywhere

OpenAPI spec version: 3.0.0
Contact: hello@mooncard.co
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.10

=end

require 'date'

module SwaggerClient
  class Expense
    attr_accessor :id

    attr_accessor :user_profile_id

    attr_accessor :business_code_id

    attr_accessor :supplier_id

    attr_accessor :rebill_id

    attr_accessor :department_id

    attr_accessor :expense_category_id

    attr_accessor :expense_report_id

    attr_accessor :receipt_id

    attr_accessor :analytic_code_ids

    attr_accessor :created_at

    attr_accessor :updated_at

    # A few words to describe the reason behind this expense or the type of good or service purchased
    attr_accessor :title

    # The paid amount in EUR - or the amount that would have been paid for a payment error
    attr_accessor :amount

    # The amount in the local currency (referenced in the currency field)
    attr_accessor :amount_currency

    # ISO code alpha 3 for the local currency
    attr_accessor :currency

    # The fees paid for this expense (already included in the amount field)
    attr_accessor :amount_fees

    # The gain or loss of FX (already included in the amount field)
    attr_accessor :amount_fx_diff

    # The date and time of the expense
    attr_accessor :at

    # Wether the expense is billable or not
    attr_accessor :billable

    # Wether the user should provide a paper receipt
    attr_accessor :receipt_paper

    # Receipt code attributed to the expense that must be written down on the receipt
    attr_accessor :receipt_code

    # Wether the expense can be edited by a user
    attr_accessor :editable

    # ISO code alpha 3 for country selected for the VAT
    attr_accessor :invoice_country

    # Timezone used to display the date and time in local timezone (may be a little off for countries spaning multiple timezones)
    attr_accessor :timezone

    attr_accessor :step

    attr_accessor :accountability

    attr_accessor :receipt_status

    attr_accessor :source_type

    attr_accessor :expense_type

    attr_accessor :source

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'user_profile_id' => :'user_profile_id',
        :'business_code_id' => :'business_code_id',
        :'supplier_id' => :'supplier_id',
        :'rebill_id' => :'rebill_id',
        :'department_id' => :'department_id',
        :'expense_category_id' => :'expense_category_id',
        :'expense_report_id' => :'expense_report_id',
        :'receipt_id' => :'receipt_id',
        :'analytic_code_ids' => :'analytic_code_ids',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'title' => :'title',
        :'amount' => :'amount',
        :'amount_currency' => :'amount_currency',
        :'currency' => :'currency',
        :'amount_fees' => :'amount_fees',
        :'amount_fx_diff' => :'amount_fx_diff',
        :'at' => :'at',
        :'billable' => :'billable',
        :'receipt_paper' => :'receipt_paper',
        :'receipt_code' => :'receipt_code',
        :'editable' => :'editable',
        :'invoice_country' => :'invoice_country',
        :'timezone' => :'timezone',
        :'step' => :'step',
        :'accountability' => :'accountability',
        :'receipt_status' => :'receipt_status',
        :'source_type' => :'source_type',
        :'expense_type' => :'expense_type',
        :'source' => :'source'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'user_profile_id' => :'String',
        :'business_code_id' => :'String',
        :'supplier_id' => :'String',
        :'rebill_id' => :'String',
        :'department_id' => :'String',
        :'expense_category_id' => :'String',
        :'expense_report_id' => :'String',
        :'receipt_id' => :'String',
        :'analytic_code_ids' => :'Array<null>',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'title' => :'String',
        :'amount' => :'Float',
        :'amount_currency' => :'Float',
        :'currency' => :'String',
        :'amount_fees' => :'Float',
        :'amount_fx_diff' => :'Float',
        :'at' => :'DateTime',
        :'billable' => :'BOOLEAN',
        :'receipt_paper' => :'BOOLEAN',
        :'receipt_code' => :'String',
        :'editable' => :'BOOLEAN',
        :'invoice_country' => :'String',
        :'timezone' => :'String',
        :'step' => :'String',
        :'accountability' => :'String',
        :'receipt_status' => :'String',
        :'source_type' => :'String',
        :'expense_type' => :'String',
        :'source' => :'ExpenseSource'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'user_profile_id')
        self.user_profile_id = attributes[:'user_profile_id']
      end

      if attributes.has_key?(:'business_code_id')
        self.business_code_id = attributes[:'business_code_id']
      end

      if attributes.has_key?(:'supplier_id')
        self.supplier_id = attributes[:'supplier_id']
      end

      if attributes.has_key?(:'rebill_id')
        self.rebill_id = attributes[:'rebill_id']
      end

      if attributes.has_key?(:'department_id')
        self.department_id = attributes[:'department_id']
      end

      if attributes.has_key?(:'expense_category_id')
        self.expense_category_id = attributes[:'expense_category_id']
      end

      if attributes.has_key?(:'expense_report_id')
        self.expense_report_id = attributes[:'expense_report_id']
      end

      if attributes.has_key?(:'receipt_id')
        self.receipt_id = attributes[:'receipt_id']
      end

      if attributes.has_key?(:'analytic_code_ids')
        if (value = attributes[:'analytic_code_ids']).is_a?(Array)
          self.analytic_code_ids = value
        end
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'amount_currency')
        self.amount_currency = attributes[:'amount_currency']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'amount_fees')
        self.amount_fees = attributes[:'amount_fees']
      end

      if attributes.has_key?(:'amount_fx_diff')
        self.amount_fx_diff = attributes[:'amount_fx_diff']
      end

      if attributes.has_key?(:'at')
        self.at = attributes[:'at']
      end

      if attributes.has_key?(:'billable')
        self.billable = attributes[:'billable']
      end

      if attributes.has_key?(:'receipt_paper')
        self.receipt_paper = attributes[:'receipt_paper']
      end

      if attributes.has_key?(:'receipt_code')
        self.receipt_code = attributes[:'receipt_code']
      end

      if attributes.has_key?(:'editable')
        self.editable = attributes[:'editable']
      end

      if attributes.has_key?(:'invoice_country')
        self.invoice_country = attributes[:'invoice_country']
      end

      if attributes.has_key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.has_key?(:'step')
        self.step = attributes[:'step']
      end

      if attributes.has_key?(:'accountability')
        self.accountability = attributes[:'accountability']
      end

      if attributes.has_key?(:'receipt_status')
        self.receipt_status = attributes[:'receipt_status']
      end

      if attributes.has_key?(:'source_type')
        self.source_type = attributes[:'source_type']
      end

      if attributes.has_key?(:'expense_type')
        self.expense_type = attributes[:'expense_type']
      end

      if attributes.has_key?(:'source')
        self.source = attributes[:'source']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      step_validator = EnumAttributeValidator.new('String', ['paid', 'verified', 'controlled', 'approved', 'rejected'])
      return false unless step_validator.valid?(@step)
      accountability_validator = EnumAttributeValidator.new('String', ['unaccountable', 'unaccounted', 'partially_accounted', 'accounted'])
      return false unless accountability_validator.valid?(@accountability)
      receipt_status_validator = EnumAttributeValidator.new('String', ['attached', 'missing', 'not_required', 'lost'])
      return false unless receipt_status_validator.valid?(@receipt_status)
      source_type_validator = EnumAttributeValidator.new('String', ['CardExpense', 'ManualExpense', 'KmExpense'])
      return false unless source_type_validator.valid?(@source_type)
      expense_type_validator = EnumAttributeValidator.new('String', ['professional_expense', 'personal_expense'])
      return false unless expense_type_validator.valid?(@expense_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] step Object to be assigned
    def step=(step)
      validator = EnumAttributeValidator.new('String', ['paid', 'verified', 'controlled', 'approved', 'rejected'])
      unless validator.valid?(step)
        fail ArgumentError, 'invalid value for "step", must be one of #{validator.allowable_values}.'
      end
      @step = step
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] accountability Object to be assigned
    def accountability=(accountability)
      validator = EnumAttributeValidator.new('String', ['unaccountable', 'unaccounted', 'partially_accounted', 'accounted'])
      unless validator.valid?(accountability)
        fail ArgumentError, 'invalid value for "accountability", must be one of #{validator.allowable_values}.'
      end
      @accountability = accountability
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] receipt_status Object to be assigned
    def receipt_status=(receipt_status)
      validator = EnumAttributeValidator.new('String', ['attached', 'missing', 'not_required', 'lost'])
      unless validator.valid?(receipt_status)
        fail ArgumentError, 'invalid value for "receipt_status", must be one of #{validator.allowable_values}.'
      end
      @receipt_status = receipt_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_type Object to be assigned
    def source_type=(source_type)
      validator = EnumAttributeValidator.new('String', ['CardExpense', 'ManualExpense', 'KmExpense'])
      unless validator.valid?(source_type)
        fail ArgumentError, 'invalid value for "source_type", must be one of #{validator.allowable_values}.'
      end
      @source_type = source_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expense_type Object to be assigned
    def expense_type=(expense_type)
      validator = EnumAttributeValidator.new('String', ['professional_expense', 'personal_expense'])
      unless validator.valid?(expense_type)
        fail ArgumentError, 'invalid value for "expense_type", must be one of #{validator.allowable_values}.'
      end
      @expense_type = expense_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          user_profile_id == o.user_profile_id &&
          business_code_id == o.business_code_id &&
          supplier_id == o.supplier_id &&
          rebill_id == o.rebill_id &&
          department_id == o.department_id &&
          expense_category_id == o.expense_category_id &&
          expense_report_id == o.expense_report_id &&
          receipt_id == o.receipt_id &&
          analytic_code_ids == o.analytic_code_ids &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          title == o.title &&
          amount == o.amount &&
          amount_currency == o.amount_currency &&
          currency == o.currency &&
          amount_fees == o.amount_fees &&
          amount_fx_diff == o.amount_fx_diff &&
          at == o.at &&
          billable == o.billable &&
          receipt_paper == o.receipt_paper &&
          receipt_code == o.receipt_code &&
          editable == o.editable &&
          invoice_country == o.invoice_country &&
          timezone == o.timezone &&
          step == o.step &&
          accountability == o.accountability &&
          receipt_status == o.receipt_status &&
          source_type == o.source_type &&
          expense_type == o.expense_type &&
          source == o.source
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, user_profile_id, business_code_id, supplier_id, rebill_id, department_id, expense_category_id, expense_report_id, receipt_id, analytic_code_ids, created_at, updated_at, title, amount, amount_currency, currency, amount_fees, amount_fx_diff, at, billable, receipt_paper, receipt_code, editable, invoice_country, timezone, step, accountability, receipt_status, source_type, expense_type, source].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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