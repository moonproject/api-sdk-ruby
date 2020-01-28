=begin
#Mooncard API

#Access Mooncard data from anywhere

OpenAPI spec version: 3.0.0
Contact: hello@mooncard.co
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.10

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::UserProfilesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserProfilesApi' do
  before do
    # run before each test
    @instance = SwaggerClient::UserProfilesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserProfilesApi' do
    it 'should create an instance of UserProfilesApi' do
      expect(@instance).to be_instance_of(SwaggerClient::UserProfilesApi)
    end
  end

  # unit tests for delete_api_v3_user_profiles_id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_api_v3_user_profiles_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_api_v3_user_profiles
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page of results to fetch.
  # @option opts [Integer] :per_page Number of results to return per page.
  # @option opts [Array<String>] :employee_search_id_in id &#x3D; IN (?)
  # @option opts [String] :employee_search_email_cont email &#x3D; %?%
  # @option opts [String] :employee_search_name_cont firstname &#x3D; %?% OR lastname &#x3D; %?%
  # @option opts [Array<String>] :employee_search_status_in status &#x3D; IN (?)
  # @option opts [String] :employee_search_accounting_charge_account_eq accounting_charge_account &#x3D; ?
  # @option opts [String] :employee_search_accounting_employee_account_eq accounting_employee_account &#x3D; ?
  # @option opts [String] :employee_search_active_eq active &#x3D; ?
  # @option opts [String] :employee_search_analytic_code_eq analytic_code &#x3D; ?
  # @option opts [String] :employee_search_code_eq code &#x3D; ?
  # @option opts [String] :employee_search_expense_type_eq expense_type &#x3D; ?
  # @option opts [Array<String>] :employee_search_role_in role &#x3D; IN (?)
  # @option opts [String] :employee_search_order_by Select which field you want to order the results by
  # @option opts [String] :employee_search_order Select whether the results should be sorted in ascending or descending order
  # @return [Array<UserProfile>]
  describe 'get_api_v3_user_profiles test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_api_v3_user_profiles_id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [UserProfile]
  describe 'get_api_v3_user_profiles_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_api_v3_user_profiles
  # @param user_profile 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'post_api_v3_user_profiles test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_api_v3_user_profiles_id
  # @param id 
  # @param user_profile_body 
  # @param [Hash] opts the optional parameters
  # @return [UserProfile]
  describe 'put_api_v3_user_profiles_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end