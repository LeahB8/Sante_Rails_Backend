class CreateRemedies < ActiveRecord::Migration[5.2]
  def change
    create_table :remedies do |t|
      t.text :remedy

      t.timestamps
    end
  end
end
