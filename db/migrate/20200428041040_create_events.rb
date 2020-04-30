class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :user, null: false, foreign_key: true
      t.references :city, null: true, foreign_key: true
      t.string :instance_type
      t.string :instance_id
      t.string :snippet
      t.string :details
      t.date :date
      t.string :scale
      t.string :link
      t.string :imageUrl
      t.string :imageText

      t.timestamps
    end
  end
end
