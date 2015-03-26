class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.text :name
      t.text :powers
      t.date :first_appearance
      t.boolean :good
      t.boolean :evil

      t.timestamps null: false
    end
  end
end
