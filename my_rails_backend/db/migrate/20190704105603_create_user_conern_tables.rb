class CreateUserConernTables < ActiveRecord::Migration[5.2]
  def change
    create_table :user_conern_tables do |t|

      t.timestamps
    end
  end
end
