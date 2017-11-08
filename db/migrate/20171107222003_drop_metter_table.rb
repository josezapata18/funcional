class DropMetterTable < ActiveRecord::Migration
  def change
    drop_table :metters
  end
end
