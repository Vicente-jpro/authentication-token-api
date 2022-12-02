class AuthTokensController < ApplicationController
  before_action :set_auth_token, only: %i[ show update destroy ]

  # GET /auth_tokens
  def index
    @auth_tokens = AuthToken.all

    render json: @auth_tokens
  end

  # GET /auth_tokens/1
  def show
    render json: @auth_token
  end

  # POST /auth_tokens
  def create
    @auth_token = AuthToken.new(auth_token_params)

    if @auth_token.save
      render json: @auth_token, status: :created, location: @auth_token
    else
      render json: @auth_token.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /auth_tokens/1
  def update
    if @auth_token.update(auth_token_params)
      render json: @auth_token
    else
      render json: @auth_token.errors, status: :unprocessable_entity
    end
  end

  # DELETE /auth_tokens/1
  def destroy
    @auth_token.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auth_token
      @auth_token = AuthToken.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def auth_token_params
      params.require(:auth_token).permit(:password_token)
    end
end
