require 'test_helper'

class CobradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cobrade = cobrades(:one)
  end

  test "should get index" do
    get cobrades_url
    assert_response :success
  end

  test "should get new" do
    get new_cobrade_url
    assert_response :success
  end

  test "should create cobrade" do
    assert_difference('Cobrade.count') do
      post cobrades_url, params: { cobrade: { cod: @cobrade.cod, description: @cobrade.description } }
    end

    assert_redirected_to cobrade_url(Cobrade.last)
  end

  test "should show cobrade" do
    get cobrade_url(@cobrade)
    assert_response :success
  end

  test "should get edit" do
    get edit_cobrade_url(@cobrade)
    assert_response :success
  end

  test "should update cobrade" do
    patch cobrade_url(@cobrade), params: { cobrade: { cod: @cobrade.cod, description: @cobrade.description } }
    assert_redirected_to cobrade_url(@cobrade)
  end

  test "should destroy cobrade" do
    assert_difference('Cobrade.count', -1) do
      delete cobrade_url(@cobrade)
    end

    assert_redirected_to cobrades_url
  end
end
