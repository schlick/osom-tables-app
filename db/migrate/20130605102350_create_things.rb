class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string  :name
      t.string  :description
      t.integer :size

      t.timestamps
    end
  end
end
