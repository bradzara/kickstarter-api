class UsersController < ApplicationController
  
  def create
    user = User.new(
      first: params[:first],
      last: params[:last],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      admin: params[:admin],
      image: params[:image] 
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end


  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def index
    @users = User.all
    render :index
  end

  def current

    if current_user
      @user = User.find_by(id: current_user.id)
      render :show
    else
      render json: {}, status: :unauthorized
    end

  end

end
