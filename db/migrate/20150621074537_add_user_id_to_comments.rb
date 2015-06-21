class AddUserIdToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :user, index: true, foreign_key: true
  end
end
#rails g migration AddUserIdToComments user:references