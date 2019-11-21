require 'test_helper'

class UsergroupsControllerTest < ActionDispatch::IntegrationTest
  test "should get join_crew" do
    get usergroups_join_crew_url
    assert_response :success
  end

end
