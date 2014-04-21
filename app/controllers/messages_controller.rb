class MessagesController < ApplicationController
	def new
		@message=Message.new
	end

	def create
		@message = Message.new(params[:message])
		if @message.valid?
			ContactMailer.admin_message(@message).deliver
			ContactMailer.thankyou_message(@message).deliver
			redirect_to root_url, :flash => { :success => "Thank you for your interest. You will be notified on launch!" }
		else
			render 'new', :flash => { :danger => "Oups, something went wrong. Try again!" }
		end
	end
end
