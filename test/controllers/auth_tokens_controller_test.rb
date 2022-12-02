require "test_helper"

class AuthTokensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auth_token = auth_tokens(:one)
  end

  test "should get index" do
    get auth_tokens_url, as: :json
    assert_response :success
  end

  test "should create auth_token" do
    assert_difference("AuthToken.count") do
      post auth_tokens_url, params: { auth_token: { password_token: @auth_token.password_token } }, as: :json
    end

    assert_response :created
  end

  test "should show auth_token" do
    get auth_token_url(@auth_token), as: :json
    assert_response :success
  end

  test "should update auth_token" do
    patch auth_token_url(@auth_token), params: { auth_token: { password_token: @auth_token.password_token } }, as: :json
    assert_response :success
  end

  test "should destroy auth_token" do
    assert_difference("AuthToken.count", -1) do
      delete auth_token_url(@auth_token), as: :json
    end

    assert_response :no_content
  end
end
