class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.integer :year
      t.string :make
      t.string :color
      t.string :plate
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
