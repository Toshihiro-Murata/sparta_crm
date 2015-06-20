class AddPostIdToCustomer < ActiveRecord::Migration
  def change
    add_reference :customers, :post, index: true, foreign_key: true
  end
end
