class AuthTokensController < ApplicationController
     # GET /authorization
  def generate_token
    passwd = rand(999...9999)
    puts ">>>>>>>>>>>>>> #{passwd}"
    render json: passwd
  end
end
