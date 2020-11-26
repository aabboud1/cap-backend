class Api::V1::AuthController < ApplicationController
    def create
        @user = Owner.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            token = encode("user_id": @user.id)
            render json: {
            authenticated: true,
            token: token,
            user: @user,
            }, status: :accepted
        else
            render json: {
            authenticated: false,
            message: "login failed"
            }, status: :unauthorized 
        end
    end
  end