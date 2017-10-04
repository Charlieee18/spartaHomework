class RemoveCompanyFromVarnish < ActiveRecord::Migration[5.1]
  def change
  	remove_column :varnishes, :company
  end
end
