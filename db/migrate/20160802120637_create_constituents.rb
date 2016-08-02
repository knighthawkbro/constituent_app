class CreateConstituents < ActiveRecord::Migration[5.0]
  def change
    create_table :constituents do |t|
      t.string :member_name
      t.text :issue
      t.string :status
      t.string :contact_info
      t.boolean :psi
      t.integer :contact_id
      t.string :assigned_to

      t.timestamps
    end
  end
end
