require 'test_helper'

class WrthmasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wrthma = wrthmas(:one)
  end

  test "should get index" do
    get wrthmas_url
    assert_response :success
  end

  test "should get new" do
    get new_wrthma_url
    assert_response :success
  end

  test "should create wrthma" do
    assert_difference('Wrthma.count') do
      post wrthmas_url, params: { wrthma: { name: @wrthma.name, title: @wrthma.title } }
    end

    assert_redirected_to wrthma_url(Wrthma.last)
  end

  test "should show wrthma" do
    get wrthma_url(@wrthma)
    assert_response :success
  end

  test "should get edit" do
    get edit_wrthma_url(@wrthma)
    assert_response :success
  end

  test "should update wrthma" do
    patch wrthma_url(@wrthma), params: { wrthma: { name: @wrthma.name, title: @wrthma.title } }
    assert_redirected_to wrthma_url(@wrthma)
  end

  test "should destroy wrthma" do
    assert_difference('Wrthma.count', -1) do
      delete wrthma_url(@wrthma)
    end

    assert_redirected_to wrthmas_url
  end
end
