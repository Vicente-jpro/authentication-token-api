class AutorizationsController < ApplicationController
  before_action :set_autorization, only: %i[ show update destroy ]

  # GET /autorizations
  def index
    @autorizations = Autorization.all

    render json: @autorizations
  end

  # GET /autorizations/1
  def show
    render json: @autorization
  end

  # POST /autorizations
  def create
    @autorization = Autorization.new(autorization_params)

    if @autorization.save
      render json: @autorization, status: :created, location: @autorization
    else
      render json: @autorization.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /autorizations/1
  def update
    if @autorization.update(autorization_params)
      render json: @autorization
    else
      render json: @autorization.errors, status: :unprocessable_entity
    end
  end

  # DELETE /autorizations/1
  def destroy
    @autorization.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autorization
      @autorization = Autorization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def autorization_params
      params.require(:autorization).permit(:token_key)
    end
end
