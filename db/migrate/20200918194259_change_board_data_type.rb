class ChangeBoardDataType < ActiveRecord::Migration[6.0]
  def change
    change_column :boards, :state, :text
  end
end
