class AddressesController < ApplicationController
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

  def destroy
  end

  def show
    @address = Address.find(params[:id]).public_key
  end
end
