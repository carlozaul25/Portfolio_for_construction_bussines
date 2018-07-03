class CreateConstructions < ActiveRecord::Migration[5.2]
  def change
    create_table :constructions do |t|
      t.string :name
      t.references :portafolio, foreign_key: true

      t.timestamps
    end
  end
end
