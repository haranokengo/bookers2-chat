class RemoveUserFromUserRooms < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_rooms, :user, :integer
  end
end
