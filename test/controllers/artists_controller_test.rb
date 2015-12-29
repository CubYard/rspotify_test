require 'test_helper'

class ArtistsControllerTest < ActionController::TestCase
  test "index requires a query param" do
    get :index
    assert_response :bad_request
  end

  test "index should return ok with query param" do
    get :index, query: 'Big'
    assert_response :success
  end

end
