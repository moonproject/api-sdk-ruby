=begin
#Mooncard API

#Access Mooncard data from anywhere

OpenAPI spec version: 3.0.0
Contact: hello@mooncard.co
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.10

=end

require 'uri'

module SwaggerClient
  class ExpenseCategoriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_api_v3_expense_categories_id(id, opts = {})
      delete_api_v3_expense_categories_id_with_http_info(id, opts)
      nil
    end

    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_api_v3_expense_categories_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExpenseCategoriesApi.delete_api_v3_expense_categories_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ExpenseCategoriesApi.delete_api_v3_expense_categories_id"
      end
      # resource path
      local_var_path = '/api/v3/expense_categories/{id}'.sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpenseCategoriesApi#delete_api_v3_expense_categories_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page of results to fetch. (default to 1)
    # @option opts [Integer] :per_page Number of results to return per page.
    # @option opts [String] :expense_category_search_name_cont name LIKE %?%
    # @option opts [String] :expense_category_search_expense_category_template_equals expense_category_template &#x3D; ?
    # @option opts [String] :expense_category_search_charge_account_equals charge_account &#x3D; ?
    # @option opts [String] :expense_category_search_order_by Select which field you want to order the results by
    # @option opts [String] :expense_category_search_order Select whether the results should be sorted in ascending or descending order
    # @return [Array<ExpenseCategory>]
    def get_api_v3_expense_categories(opts = {})
      data, _status_code, _headers = get_api_v3_expense_categories_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page of results to fetch.
    # @option opts [Integer] :per_page Number of results to return per page.
    # @option opts [String] :expense_category_search_name_cont name LIKE %?%
    # @option opts [String] :expense_category_search_expense_category_template_equals expense_category_template &#x3D; ?
    # @option opts [String] :expense_category_search_charge_account_equals charge_account &#x3D; ?
    # @option opts [String] :expense_category_search_order_by Select which field you want to order the results by
    # @option opts [String] :expense_category_search_order Select whether the results should be sorted in ascending or descending order
    # @return [Array<(Array<ExpenseCategory>, Fixnum, Hash)>] Array<ExpenseCategory> data, response status code and response headers
    def get_api_v3_expense_categories_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExpenseCategoriesApi.get_api_v3_expense_categories ...'
      end
      if @api_client.config.client_side_validation && opts[:'expense_category_search_order_by'] && !['charge_account', 'created_at', 'group', 'name', 'updated_at'].include?(opts[:'expense_category_search_order_by'])
        fail ArgumentError, 'invalid value for "expense_category_search_order_by", must be one of charge_account, created_at, group, name, updated_at'
      end
      if @api_client.config.client_side_validation && opts[:'expense_category_search_order'] && !['asc', 'desc'].include?(opts[:'expense_category_search_order'])
        fail ArgumentError, 'invalid value for "expense_category_search_order", must be one of asc, desc'
      end
      # resource path
      local_var_path = '/api/v3/expense_categories'

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'expense_category_search[name_cont]'] = opts[:'expense_category_search_name_cont'] if !opts[:'expense_category_search_name_cont'].nil?
      query_params[:'expense_category_search[expense_category_template_equals]'] = opts[:'expense_category_search_expense_category_template_equals'] if !opts[:'expense_category_search_expense_category_template_equals'].nil?
      query_params[:'expense_category_search[charge_account_equals]'] = opts[:'expense_category_search_charge_account_equals'] if !opts[:'expense_category_search_charge_account_equals'].nil?
      query_params[:'expense_category_search[order_by]'] = opts[:'expense_category_search_order_by'] if !opts[:'expense_category_search_order_by'].nil?
      query_params[:'expense_category_search[order]'] = opts[:'expense_category_search_order'] if !opts[:'expense_category_search_order'].nil?

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
        :return_type => 'Array<ExpenseCategory>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpenseCategoriesApi#get_api_v3_expense_categories\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [ExpenseCategory]
    def get_api_v3_expense_categories_id(id, opts = {})
      data, _status_code, _headers = get_api_v3_expense_categories_id_with_http_info(id, opts)
      data
    end

    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpenseCategory, Fixnum, Hash)>] ExpenseCategory data, response status code and response headers
    def get_api_v3_expense_categories_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExpenseCategoriesApi.get_api_v3_expense_categories_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ExpenseCategoriesApi.get_api_v3_expense_categories_id"
      end
      # resource path
      local_var_path = '/api/v3/expense_categories/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ExpenseCategory')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpenseCategoriesApi#get_api_v3_expense_categories_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param expense_category 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def post_api_v3_expense_categories(expense_category, opts = {})
      post_api_v3_expense_categories_with_http_info(expense_category, opts)
      nil
    end

    # @param expense_category 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def post_api_v3_expense_categories_with_http_info(expense_category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExpenseCategoriesApi.post_api_v3_expense_categories ...'
      end
      # verify the required parameter 'expense_category' is set
      if @api_client.config.client_side_validation && expense_category.nil?
        fail ArgumentError, "Missing the required parameter 'expense_category' when calling ExpenseCategoriesApi.post_api_v3_expense_categories"
      end
      # resource path
      local_var_path = '/api/v3/expense_categories'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(expense_category)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpenseCategoriesApi#post_api_v3_expense_categories\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param id 
    # @param expense_category_body 
    # @param [Hash] opts the optional parameters
    # @return [ExpenseCategory]
    def put_api_v3_expense_categories_id(id, expense_category_body, opts = {})
      data, _status_code, _headers = put_api_v3_expense_categories_id_with_http_info(id, expense_category_body, opts)
      data
    end

    # @param id 
    # @param expense_category_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpenseCategory, Fixnum, Hash)>] ExpenseCategory data, response status code and response headers
    def put_api_v3_expense_categories_id_with_http_info(id, expense_category_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExpenseCategoriesApi.put_api_v3_expense_categories_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ExpenseCategoriesApi.put_api_v3_expense_categories_id"
      end
      # verify the required parameter 'expense_category_body' is set
      if @api_client.config.client_side_validation && expense_category_body.nil?
        fail ArgumentError, "Missing the required parameter 'expense_category_body' when calling ExpenseCategoriesApi.put_api_v3_expense_categories_id"
      end
      # resource path
      local_var_path = '/api/v3/expense_categories/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(expense_category_body)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExpenseCategory')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpenseCategoriesApi#put_api_v3_expense_categories_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end