class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :location
      t.datetime :hours_of_operation
      t.datetime :date

      t.timestamps
    end
  end
end
