class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name, null: false
      t.integer :category, default: 0
      t.text :description
      t.string :tags, array: true, default: []

      t.timestamps null: false
    end
  end
end
