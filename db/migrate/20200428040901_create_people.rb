class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name
      t.date :birthday
      t.date :deathday
      t.references :city, null: true, foreign_key: true

      t.timestamps
    end
  end
end
