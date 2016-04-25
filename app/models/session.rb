# == Schema Information
#
# Table name: sessions
#
#  id         :integer          not null, primary key
#  token      :string
#  user_id    :integer
#  ip_address :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Session < ActiveRecord::Base
  belongs_to :user

  validates :token, presence: true

  after_initialize :ensure_token

  def self.generate_token
    SecureRandom::urlsafe_base64
  end

  private

  def ensure_token
    self.token ||= Session.generate_token
  end
end
