require 'test_helper'

class Accounts::UsernamesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get accounts_usernames_edit_url
    assert_response :success
  end

  test "should get update" do
    get accounts_usernames_update_url
    assert_response :success
  end

end
