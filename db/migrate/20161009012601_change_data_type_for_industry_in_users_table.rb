class ChangeDataTypeForIndustryInUsersTable < ActiveRecord::Migration
  def up
    change_column :users, :industry, :integer
  end

  def down
    change_column :users, :industry, :string
  end

end
