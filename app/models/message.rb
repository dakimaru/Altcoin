# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Message
	include ActiveModel::Validations
  	include ActiveModel::Conversion
  	extend ActiveModel::Naming
  
  	attr_accessor :content, :email, :name
  	
  	validates_presence_of :name
  	validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  	validates_length_of :content, :maximum => 500
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  
  def persisted?
    false
  end
end
