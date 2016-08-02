class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.text :note
      t.integer :constituent_id
      t.string :cca

      t.timestamps
    end
  end
end
