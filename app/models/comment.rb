# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  body        :text
#  customer_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Comment < ActiveRecord::Base
  validates :body, presence: true
  validates :customer_id, presence: true

  belongs_to :customer
  belongs_to :user

end
