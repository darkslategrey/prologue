run 'rm spec/controllers/admin/users_controller_spec.rb'

create_file 'spec/controllers/admin/users_controller_spec.rb' do
<<-'FILE'
require 'spec_helper'
include Devise::TestHelpers

describe Admin::UsersController do
  
  before(:each) do
    @user = @user ||=Factory.create(:admin)
    sign_in @user
  end

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end
end

FILE
end