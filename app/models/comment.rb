class Comment < ActiveRecord::Base
  validates :body, presence: true
  validates :customer_id, presence: true

  belongs_to :customer
  belongs_to :user

end
