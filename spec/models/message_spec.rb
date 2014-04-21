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

require 'spec_helper'

describe Message do
  pending "add some examples to (or delete) #{__FILE__}"
end
