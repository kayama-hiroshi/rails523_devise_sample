require 'test_helper'

class Accounts::EmailsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get accounts_emails_edit_url
    assert_response :success
  end

  test "should get update" do
    get accounts_emails_update_url
    assert_response :success
  end

end
