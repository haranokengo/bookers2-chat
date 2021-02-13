class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.integer :user
      t.integer :room
      t.text :message

      t.timestamps
    end
  end
end
