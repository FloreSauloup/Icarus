require 'test_helper'

class Owner::VehiclesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get owner_vehicles_new_url
    assert_response :success
  end

  test "should get create" do
    get owner_vehicles_create_url
    assert_response :success
  end

end
