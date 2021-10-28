class AddUserIdToTechbits < ActiveRecord::Migration[6.1]
  def change
    add_column :techbits, :user_id, :integer
  end
end
