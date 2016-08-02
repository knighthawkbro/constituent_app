class CreateCalls < ActiveRecord::Migration[5.0]
  def change
    create_table :calls do |t|
      t.integer :constituent_id
      t.integer :contact_id

      t.timestamps
    end
  end
end
