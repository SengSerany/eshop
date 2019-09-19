require 'test_helper'

class DeliveryAdressesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get delivery_adresses_new_url
    assert_response :success
  end

  test "should get create" do
    get delivery_adresses_create_url
    assert_response :success
  end

  test "should get edit" do
    get delivery_adresses_edit_url
    assert_response :success
  end

  test "should get update" do
    get delivery_adresses_update_url
    assert_response :success
  end

  test "should get destroy" do
    get delivery_adresses_destroy_url
    assert_response :success
  end

end
