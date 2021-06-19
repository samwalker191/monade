# == Schema Information
#
# Table name: lemos
#
#  id         :bigint           not null, primary key
#  price      :integer          not null
#  store_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class LemoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
