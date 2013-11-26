class AddUserIdToCodeFillets < ActiveRecord::Migration
  def change
    add_reference :code_fillets, :user, index: true
  end
end
