class AutorizationsController < ApplicationController
  before_action :set_autorization, only: %i[ show update destroy ]

  # GET /autorizations
   def generate_token 
    random_number = rand(999...9999) 
    @autorization = Autorization.new(token_key: random_number )

    if @autorization.save
      render json: @autorization, status: :created, location: generate_token_autorizations_url(@autorization)
    else
      render json: @autorization.erros, status: :unprocessable_entity
    end
  end

end
