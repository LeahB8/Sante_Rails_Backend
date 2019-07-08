class CreateConcerns < ActiveRecord::Migration[5.2]
  def change
    create_table :concerns do |t|
      t.text :problem
      t.integer :problemID

      t.timestamps
    end
  end
end
