class CreatePalettes < ActiveRecord::Migration[5.2]
  def change
    create_table :palettes do |t|
      t.references :user, foreign_key: true
      t.string :color_code
      t.integer :row
      t.integer :column

      t.timestamps
    end
  end
end
