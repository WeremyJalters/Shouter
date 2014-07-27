class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :body
      t.belongs_to :user, index: true

      t.timestamps
    end
    #add_index :notes, :user_id
  end
end
