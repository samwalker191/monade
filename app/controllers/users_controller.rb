class UsersController < ApplicationController
  def index
    # fetch a bunch of stuff
    @users = User.all
    render json: @users
  end

  def show
    # fetch one stuff
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    # create one stuff
    # username
    # params are populated with info coming from
      # body
      # query string
      # wildcard
    @user = User.new(user_params) # username: 'Bubble'

    if @user.save
      render json: @user
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def update
    # update one stuff
      # stuff has to exist already
    
    # Find the thing being updated
    # update it
    @user = User.find(params[:id])

    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def destroy
    # destroy one stuff

    # find the thing
    # destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:username, :name)
  end
end
