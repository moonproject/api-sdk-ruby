=begin
#Mooncard API

#Access Mooncard data from anywhere

OpenAPI spec version: 3.0.0
Contact: hello@mooncard.co
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module Mooncard
  class ExpensesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Expense]
    def find(id, opts = {})
      data, _status_code, _headers = find_with_http_info(id, opts)
      data
    end

    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Expense, Fixnum, Hash)>] Expense data, response status code and response headers
    def find_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExpensesApi.find ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ExpensesApi.find"
      end
      # resource path
      local_var_path = '/api/v3/expenses/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Expense')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpensesApi#find\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page of results to fetch. (default to 1)
    # @option opts [Integer] :per_page Number of results to return per page.
    # @option opts [String] :expense_search_user_profile_id_eq user_profile_id &#x3D; ?
    # @option opts [String] :expense_search_business_code_id_eq business_code_id &#x3D; ?
    # @option opts [String] :expense_search_supplier_id_eq supplier_id &#x3D; ?
    # @option opts [String] :expense_search_rebill_id_eq rebill_id &#x3D; ?
    # @option opts [String] :expense_search_department_id_eq department_id &#x3D; ?
    # @option opts [String] :expense_search_expense_category_id_eq expense_category_id &#x3D; ?
    # @option opts [String] :expense_search_expense_report_id_eq expense_report_id &#x3D; ?
    # @option opts [String] :expense_search_title_cont title LIKE %?%
    # @option opts [String] :expense_search_currency_in currency IN (?)
    # @option opts [String] :expense_search_source_type_eq source_type &#x3D; IN (?)
    # @option opts [String] :expense_search_accountability_in accountability &#x3D; IN (?)
    # @option opts [String] :expense_search_receipt_status_in receipt_status &#x3D; IN (?)
    # @option opts [String] :expense_search_step_in step &#x3D; IN (?)
    # @option opts [String] :expense_search_at_gteq at &gt;&#x3D; ?
    # @option opts [String] :expense_search_at_lteq at &lt;&#x3D; ?
    # @option opts [String] :expense_search_order_by Select which field you want to order the results by
    # @option opts [String] :expense_search_order Select whether the results should be sorted in ascending or descending order
    # @return [Array<Expense>]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page of results to fetch.
    # @option opts [Integer] :per_page Number of results to return per page.
    # @option opts [String] :expense_search_user_profile_id_eq user_profile_id &#x3D; ?
    # @option opts [String] :expense_search_business_code_id_eq business_code_id &#x3D; ?
    # @option opts [String] :expense_search_supplier_id_eq supplier_id &#x3D; ?
    # @option opts [String] :expense_search_rebill_id_eq rebill_id &#x3D; ?
    # @option opts [String] :expense_search_department_id_eq department_id &#x3D; ?
    # @option opts [String] :expense_search_expense_category_id_eq expense_category_id &#x3D; ?
    # @option opts [String] :expense_search_expense_report_id_eq expense_report_id &#x3D; ?
    # @option opts [String] :expense_search_title_cont title LIKE %?%
    # @option opts [String] :expense_search_currency_in currency IN (?)
    # @option opts [String] :expense_search_source_type_eq source_type &#x3D; IN (?)
    # @option opts [String] :expense_search_accountability_in accountability &#x3D; IN (?)
    # @option opts [String] :expense_search_receipt_status_in receipt_status &#x3D; IN (?)
    # @option opts [String] :expense_search_step_in step &#x3D; IN (?)
    # @option opts [String] :expense_search_at_gteq at &gt;&#x3D; ?
    # @option opts [String] :expense_search_at_lteq at &lt;&#x3D; ?
    # @option opts [String] :expense_search_order_by Select which field you want to order the results by
    # @option opts [String] :expense_search_order Select whether the results should be sorted in ascending or descending order
    # @return [Array<(Array<Expense>, Fixnum, Hash)>] Array<Expense> data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExpensesApi.list ...'
      end
      if @api_client.config.client_side_validation && opts[:'expense_search_source_type_eq'] && !['CardExpense', 'ManualExpense', 'KmExpense'].include?(opts[:'expense_search_source_type_eq'])
        fail ArgumentError, 'invalid value for "expense_search_source_type_eq", must be one of CardExpense, ManualExpense, KmExpense'
      end
      if @api_client.config.client_side_validation && opts[:'expense_search_accountability_in'] && !['unaccountable', 'unaccounted', 'partially_accounted', 'accounted'].include?(opts[:'expense_search_accountability_in'])
        fail ArgumentError, 'invalid value for "expense_search_accountability_in", must be one of unaccountable, unaccounted, partially_accounted, accounted'
      end
      if @api_client.config.client_side_validation && opts[:'expense_search_receipt_status_in'] && !['attached', 'missing', 'not_required', 'lost'].include?(opts[:'expense_search_receipt_status_in'])
        fail ArgumentError, 'invalid value for "expense_search_receipt_status_in", must be one of attached, missing, not_required, lost'
      end
      if @api_client.config.client_side_validation && opts[:'expense_search_step_in'] && !['paid', 'verified', 'controlled', 'approved', 'rejected'].include?(opts[:'expense_search_step_in'])
        fail ArgumentError, 'invalid value for "expense_search_step_in", must be one of paid, verified, controlled, approved, rejected'
      end
      if @api_client.config.client_side_validation && opts[:'expense_search_order_by'] && !['amount', 'at', 'created_at', 'updated_at'].include?(opts[:'expense_search_order_by'])
        fail ArgumentError, 'invalid value for "expense_search_order_by", must be one of amount, at, created_at, updated_at'
      end
      if @api_client.config.client_side_validation && opts[:'expense_search_order'] && !['asc', 'desc'].include?(opts[:'expense_search_order'])
        fail ArgumentError, 'invalid value for "expense_search_order", must be one of asc, desc'
      end
      # resource path
      local_var_path = '/api/v3/expenses'

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'expense_search[user_profile_id_eq]'] = opts[:'expense_search_user_profile_id_eq'] if !opts[:'expense_search_user_profile_id_eq'].nil?
      query_params[:'expense_search[business_code_id_eq]'] = opts[:'expense_search_business_code_id_eq'] if !opts[:'expense_search_business_code_id_eq'].nil?
      query_params[:'expense_search[supplier_id_eq]'] = opts[:'expense_search_supplier_id_eq'] if !opts[:'expense_search_supplier_id_eq'].nil?
      query_params[:'expense_search[rebill_id_eq]'] = opts[:'expense_search_rebill_id_eq'] if !opts[:'expense_search_rebill_id_eq'].nil?
      query_params[:'expense_search[department_id_eq]'] = opts[:'expense_search_department_id_eq'] if !opts[:'expense_search_department_id_eq'].nil?
      query_params[:'expense_search[expense_category_id_eq]'] = opts[:'expense_search_expense_category_id_eq'] if !opts[:'expense_search_expense_category_id_eq'].nil?
      query_params[:'expense_search[expense_report_id_eq]'] = opts[:'expense_search_expense_report_id_eq'] if !opts[:'expense_search_expense_report_id_eq'].nil?
      query_params[:'expense_search[title_cont]'] = opts[:'expense_search_title_cont'] if !opts[:'expense_search_title_cont'].nil?
      query_params[:'expense_search[currency_in]'] = opts[:'expense_search_currency_in'] if !opts[:'expense_search_currency_in'].nil?
      query_params[:'expense_search[source_type_eq]'] = opts[:'expense_search_source_type_eq'] if !opts[:'expense_search_source_type_eq'].nil?
      query_params[:'expense_search[accountability_in]'] = opts[:'expense_search_accountability_in'] if !opts[:'expense_search_accountability_in'].nil?
      query_params[:'expense_search[receipt_status_in]'] = opts[:'expense_search_receipt_status_in'] if !opts[:'expense_search_receipt_status_in'].nil?
      query_params[:'expense_search[step_in]'] = opts[:'expense_search_step_in'] if !opts[:'expense_search_step_in'].nil?
      query_params[:'expense_search[at_gteq]'] = opts[:'expense_search_at_gteq'] if !opts[:'expense_search_at_gteq'].nil?
      query_params[:'expense_search[at_lteq]'] = opts[:'expense_search_at_lteq'] if !opts[:'expense_search_at_lteq'].nil?
      query_params[:'expense_search[order_by]'] = opts[:'expense_search_order_by'] if !opts[:'expense_search_order_by'].nil?
      query_params[:'expense_search[order]'] = opts[:'expense_search_order'] if !opts[:'expense_search_order'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Expense>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpensesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
