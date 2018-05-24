class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :name
      t.boolean :github

      t.timestamps
    end
  end
end
