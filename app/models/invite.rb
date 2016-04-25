# == Schema Information
#
# Table name: invites
#
#  id         :integer          not null, primary key
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  giver_id   :integer
#  uses       :integer          default("1")
#

class Invite < ActiveRecord::Base
  validates :code, presence: true, uniqueness: true

  has_one :giver,
    class_name: "User",
    foreign_key: :giver_id
end
