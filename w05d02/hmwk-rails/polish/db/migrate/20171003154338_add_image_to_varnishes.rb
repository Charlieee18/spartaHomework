class AddImageToVarnishes < ActiveRecord::Migration[5.1]
  def change
  	add_column :varnishes, :image, :string
  end
end
