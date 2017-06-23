class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name ,null: false
      t.string :type ,null: false
      t.float :price ,null: false
      t.string :color
      t.boolean :status, default: 0
      t.date :inward_date ,null: false
      t.string :description, null: false
      t.timestamps
    end
  end
end
