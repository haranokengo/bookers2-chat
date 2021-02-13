class RemoveRoomFromChats < ActiveRecord::Migration[5.2]
  def change
    remove_column :chats, :room, :integer
  end
end
