require "test_helper"

class AutorizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @autorization = autorizations(:one)
  end

  test "should get index" do
    get autorizations_url, as: :json
    assert_response :success
  end

  test "should create autorization" do
    assert_difference("Autorization.count") do
      post autorizations_url, params: { autorization: { token_key: @autorization.token_key } }, as: :json
    end

    assert_response :created
  end

  test "should show autorization" do
    get autorization_url(@autorization), as: :json
    assert_response :success
  end

  test "should update autorization" do
    patch autorization_url(@autorization), params: { autorization: { token_key: @autorization.token_key } }, as: :json
    assert_response :success
  end

  test "should destroy autorization" do
    assert_difference("Autorization.count", -1) do
      delete autorization_url(@autorization), as: :json
    end

    assert_response :no_content
  end
end
