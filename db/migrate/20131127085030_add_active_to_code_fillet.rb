class AddActiveToCodeFillet < ActiveRecord::Migration
  def change
    add_column :code_fillets, :active, :boolean
  end
end
