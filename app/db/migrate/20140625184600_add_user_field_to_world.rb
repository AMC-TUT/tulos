class AddUserFieldToWorld < ActiveRecord::Migration
  def change
    add_reference :worlds, :user, index: true
  end
end
