require 'test_helper'

class AroundsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get arounds_index_url
    assert_response :success
  end

end
