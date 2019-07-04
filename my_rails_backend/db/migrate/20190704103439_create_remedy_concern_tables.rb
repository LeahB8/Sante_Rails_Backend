class CreateRemedyConcernTables < ActiveRecord::Migration[5.2]
  def change
    create_table :remedy_concern_tables do |t|
      t.references :remedy, foreign_key: true
      t.references :concern, foreign_key: true

      t.timestamps
    end
  end
end
