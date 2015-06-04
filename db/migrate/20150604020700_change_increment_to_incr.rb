class ChangeIncrementToIncr < ActiveRecord::Migration
  def change
    rename_column :items, :increment, :incr
  end
end
