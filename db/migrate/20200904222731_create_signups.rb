class CreateSignups < ActiveRecord::Migration[6.0]
  def change
    create_table :signups do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :place, null: false, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
