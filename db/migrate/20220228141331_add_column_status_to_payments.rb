class AddColumnStatusToPayments < ActiveRecord::Migration[7.0]
  def change
    add_column :payments, :status, :string
  end
end
