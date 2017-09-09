class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.references :person, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
