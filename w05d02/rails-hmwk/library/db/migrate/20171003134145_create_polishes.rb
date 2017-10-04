class CreatePolishes < ActiveRecord::Migration[5.1]
  def change
    create_table :polishes do |t|
      t.string :company
      t.string :colour
      t.string :shade

      t.timestamps
    end
  end
end
