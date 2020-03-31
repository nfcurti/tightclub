require 'test_helper'

class TightclubControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tightclub_index_url
    assert_response :success
  end

end
