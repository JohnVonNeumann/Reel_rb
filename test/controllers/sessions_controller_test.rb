require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get login_path
    # edited existing sessions_new_url path to make way for login contr changes
    assert_response :success
  end

end
