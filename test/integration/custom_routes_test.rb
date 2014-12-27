require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that /login route open the login page" do
  	https!
  	get '/login'
  	assert_response :success
  end
end
