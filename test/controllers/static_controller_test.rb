require 'test_helper'

class StaticControllerTest < ActionDispatch::IntegrationTest

 test "should get help" do
   get help_path 
   assert_response :success
  end


end
