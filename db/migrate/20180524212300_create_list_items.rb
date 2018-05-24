class CreateListItems < ActiveRecord::Migration[5.1]
  def change
    create_table :list_items do |t|
      t.string :title
      t.string :url
      t.string :website
      t.integer :list_id


      t.timestamps
    end
  end
end
