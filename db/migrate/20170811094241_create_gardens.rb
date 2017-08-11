class CreateGardens < ActiveRecord::Migration[5.1]
  def change
    create_table :gardens do |t|
      t.string :name
      t.string :city
      t.integer :capacity
      t.string :description
      t.integer :price
      t.string :photo

      t.timestamps
    end
  end
end
