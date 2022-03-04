class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth
      t.string :phone_number
      t.string :genre
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
