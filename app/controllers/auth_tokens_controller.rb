class AuthTokensController < ApplicationController
  
  # GET /authorization

  def create 
    @autorization = Autorization.new(set_params)
    if @autorization.save
      render json: @autorization, status: :created, location: autorizations_path
    else
      render json: @autorization.erros, status: :unprocessable_entity
    end
  end

  def set_params
    params.require(:autorization).permit(:oken_key)
  end
end
