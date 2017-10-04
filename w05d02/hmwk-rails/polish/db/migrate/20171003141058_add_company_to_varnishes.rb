class AddCompanyToVarnishes < ActiveRecord::Migration[5.1]
  def change
  	add_reference :varnishes, :company, index: true
  end
end
