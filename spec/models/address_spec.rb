# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  public_key :string(255)
#  item_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  item_name  :string(255)
#  category   :string(255)
#

require 'spec_helper'

describe Address do
  pending "add some examples to (or delete) #{__FILE__}"
end
