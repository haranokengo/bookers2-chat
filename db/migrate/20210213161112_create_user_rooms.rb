class CreateUserRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :user_rooms do |t|
      t.integer :user
      t.integer :room

      t.timestamps
    end
  end
end
