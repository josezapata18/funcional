class DropProgramTable < ActiveRecord::Migration
  def change
    drop_table :programs
  end
end
