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

require 'spec_helper'

describe Address do
  pending "add some examples to (or delete) #{__FILE__}"
end
