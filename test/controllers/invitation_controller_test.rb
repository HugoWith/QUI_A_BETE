require 'test_helper'

class InvitationControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get invitation_new_url
    assert_response :success
  end

  test "should get post" do
    get invitation_post_url
    assert_response :success
  end

end
