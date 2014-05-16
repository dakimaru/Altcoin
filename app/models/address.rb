# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  public_key :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  item_name  :string(255)
#  category   :string(255)
#

class Address < ActiveRecord::Base
  attr_accessible :public_key, :item_name, :category
  belongs_to :user

  validates :user_id, presence: true
  validates :item_name, presence: true
  validates :category, presence: true
  validates :public_key, presence: true, uniqueness: true
  validates :public_key, format: { with: /\A(1|3)[a-zA-Z1-9]{26,33}\z/,
    message: "invalid bitcoin address" }

end
