require 'open-uri'

class UsersController < ApplicationController

  before_filter :signed_in_user, except: [:new,:create]
  before_filter :correct_user, except: [:new,:create]

  def show
    @user = User.find(params[:id])
    @addresses = @user.addresses 
    get_dashboard_data
  end

  def new
    @user=User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Coinbridge! Get started by adding a wallet address."
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
     :password_confirmation)
  end

  # Before filters

  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_url, notice: "Please sign in."
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(current_user) unless current_user?(@user)
  end
end
