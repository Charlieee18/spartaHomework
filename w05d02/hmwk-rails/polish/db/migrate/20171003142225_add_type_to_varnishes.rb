class AddTypeToVarnishes < ActiveRecord::Migration[5.1]
  def change
  	add_column :varnishes, :type, :string
  end
end
