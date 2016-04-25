# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }

  has_many :galleries
  has_many :sessions

  attr_reader :password

  def self.find_by_credentials( params )
    user = User.find_by_email( params[:email] )
    user && user.valid_password?( params[:password] ) ? user : nil
  end

  def password=( password )
    @password = password
    self.password_digest = BCrypt::Password.create( password )
  end

  def valid_password?( password )
    BCrypt::Password.new( self.password_digest ).is_password?( password )
  end
end
