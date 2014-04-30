# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  public_key :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Address < ActiveRecord::Base
  attr_accessible :public_key
  belongs_to :user

  validates :user_id, presence: true
  validates_format_of :public_key, :with => /^[13][\S]{26,33}$/
  validates :public_key, presence: true, uniqueness: true

end
