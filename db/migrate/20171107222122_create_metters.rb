class CreateMetters < ActiveRecord::Migration
  def change
    create_table :metters do |t|
      t.string :name
      t.references :program, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
