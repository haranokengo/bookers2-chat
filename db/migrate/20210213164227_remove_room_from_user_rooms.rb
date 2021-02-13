class RemoveRoomFromUserRooms < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_rooms, :room, :integer
  end
end
