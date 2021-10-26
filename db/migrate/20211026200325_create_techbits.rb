class CreateTechbits < ActiveRecord::Migration[6.1]
  def change
    create_table :techbits do |t|
      t.text :bit

      t.timestamps
    end
  end
end
