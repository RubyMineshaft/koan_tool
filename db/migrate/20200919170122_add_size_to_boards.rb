class AddSizeToBoards < ActiveRecord::Migration[6.0]
  def change
    add_column :boards, :size, :integer
  end
end
