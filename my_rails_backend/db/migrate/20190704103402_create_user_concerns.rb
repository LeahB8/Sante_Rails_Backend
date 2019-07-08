class CreateUserConcerns < ActiveRecord::Migration[5.2]
  def change
    create_table :user_concerns do |t|
      t.references :user, foreign_key: true
      t.references :concern, foreign_key: true

      t.timestamps
    end
  end
end
