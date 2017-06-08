class DropDoses < ActiveRecord::Migration[5.0]
  def change
    drop_table :doses
  end
end
