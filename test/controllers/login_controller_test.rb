require 'test_helper'

class LoginControllerTest < ActionController::TestCase
  test "should not login user if user is not present" do
    get :create, email: 'bo@boiscool.com',  password: 'password'
    assert_redirected_to login_path
  end

  test "should login user if user is present" do
    get :create, email: 'mike@mikeiscool.com',  password: 'password'
    assert_redirected_to root_path
  end

  test "should logout" do
    get :destroy
    assert_redirected_to login_path
  end
end
