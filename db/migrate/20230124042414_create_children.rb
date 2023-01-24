class CreateChildren < ActiveRecord::Migration[7.0]
  def change
    create_table :children do |t|
      t.references :parent, foreign_key: {to_table: :users}
      t.references :teacher, foreign_key: {to_table: :users}
      t.string :name
      t.string :image
      t.string :dob
      t.string :gender
      t.boolean :pick_up
      t.text :notes

      t.timestamps
    end
  end
end
