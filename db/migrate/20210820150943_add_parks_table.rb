class AddParksTable < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.column :park_name, :string
      t.column :state, :string
      t.column :city, :string
      t.column :park_type, :string
      t.column :description, :string
    end
  end
end
