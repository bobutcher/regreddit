require 'test_helper'

class SignupControllerTest < ActionController::TestCase
  test "can signup" do
    get :create, user: {email: "bo@butcher.com", password: "password"}
    assert_redirected_to links_path
  end
end
