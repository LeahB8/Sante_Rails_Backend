class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :firstName, :string
    add_column :users, :weight, :integer
    add_column :users, :height, :integer
    add_column :users, :age, :integer
  end
end
