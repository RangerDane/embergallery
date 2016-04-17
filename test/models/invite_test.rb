# == Schema Information
#
# Table name: invites
#
#  id          :integer          not null, primary key
#  code        :string
#  email       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  giver_id    :integer
#  receiver_id :integer
#

require 'test_helper'

class InviteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
