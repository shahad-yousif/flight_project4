require 'test_helper'

class AirportlocsControllerTest < ActionController::TestCase
  setup do
    @airportloc = airportlocs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:airportlocs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create airportloc" do
    assert_difference('Airportloc.count') do
      post :create, airportloc: { address: @airportloc.address, latitude: @airportloc.latitude, longitude: @airportloc.longitude }
    end

    assert_redirected_to airportloc_path(assigns(:airportloc))
  end

  test "should show airportloc" do
    get :show, id: @airportloc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @airportloc
    assert_response :success
  end

  test "should update airportloc" do
    patch :update, id: @airportloc, airportloc: { address: @airportloc.address, latitude: @airportloc.latitude, longitude: @airportloc.longitude }
    assert_redirected_to airportloc_path(assigns(:airportloc))
  end

  test "should destroy airportloc" do
    assert_difference('Airportloc.count', -1) do
      delete :destroy, id: @airportloc
    end

    assert_redirected_to airportlocs_path
  end
end
