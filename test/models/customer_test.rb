# == Schema Information
#
# Table name: customers
#
#  id          :integer          not null, primary key
#  family_name :string           not null
#  given_name  :string           not null
#  email       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  company_id  :integer
#  post_id     :integer
#

require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
