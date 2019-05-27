require 'test_helper'

class RelationshipsControllerTest < ActionDispatch::IntegrationTest
  # def setup
  #   @user = users(:michael)
  #   log_in_as(@user)
  # end

  test "create should require logged-in user" do
    assert_no_difference 'Relationship.count' do
      post relationships_path
    end
    assert_redirected_to login_url
  end

  test "destroy should require logged-in user" do
    assert_no_difference 'Relationship.count' do
      delete relationship_path(relationships(:one))
    end
    assert_redirected_to login_url
  end
end
