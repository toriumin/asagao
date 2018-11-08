class AlterMembers < ActiveRecord::Migration[5.1]
  def change
    rename_column :members, :name, :nickname
    change_column :members, :sex, :integer, null: false, default: 2
  end

  def down
    change_column :members, :sex, :integer, null: false, default: 1
    rename_column :members, :nickname, :name
  end
end
