# == Schema Information
#
# Table name: galleries
#
#  id         :integer          not null, primary key
#  name       :string
#  subdomain  :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Gallery < ActiveRecord::Base
end
