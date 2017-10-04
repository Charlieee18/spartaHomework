class RenameTypeToSort < ActiveRecord::Migration[5.1]
  def change
  	remove_column :varnishes, :type, :string
  	add_column :varnishes, :sort, :string
  end
end
