class CreateUserConcernTables < ActiveRecord::Migration[5.2]
  def change
    create_table :user_concern_tables do |t|
      t.references :user, foreign_key: true
      t.references :concern, foreign_key: true

      t.timestamps
    end
  end
end
