class AddressesController < ApplicationController
  before_filter :correct_user, except: [:new,:create]

  def new
  	@address=Address.new
  end

  def create
  	@address = current_user.addresses.build(params[:address])
    if @address.save
      flash[:success] = "Address created!"
      redirect_to current_user
    else
      render 'new'
    end
  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
    @address=Address.find(params[:id])
    if @address.update_attributes(params[:address])
      flash[:success] = "Profile updated"
      redirect_to @address
    else
      render 'edit'
    end
    
  end

  def destroy
    Address.find(params[:id]).destroy
    flash[:success] = "Address deleted."
    redirect_to current_user
  end


  def show
    @address = Address.find(params[:id])
  end

  private

  # Before filters

  def correct_user
    @address = Address.find(params[:id])
    redirect_to(current_user) unless current_user.id==@address.user_id
  end

end
