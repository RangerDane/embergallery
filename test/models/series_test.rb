# == Schema Information
#
# Table name: series
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class SeriesTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
