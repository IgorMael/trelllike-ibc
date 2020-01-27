class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.string :title
      t.integer :position
      t.references :board, foreign_key: true

      t.timestamps
    end
  end
end
