class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :office
      t.string :phone

      t.timestamps
    end
  end
end
