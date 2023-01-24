class CreateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :schools do |t|
      t.string :address
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :open
      t.string :close

      t.timestamps
    end
  end
end
