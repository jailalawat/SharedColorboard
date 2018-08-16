require 'test_helper'

class PalettesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get palettes_index_url
    assert_response :success
  end

end
