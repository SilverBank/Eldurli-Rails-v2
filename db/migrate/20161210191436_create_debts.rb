class CreateDebts < ActiveRecord::Migration[5.0]
  def change
    create_table :debts do |t|
      t.string :name
      t.integer :balance
      t.integer :principal
      t.integer :interest
      t.integer :time
      t.integer :user_id

      t.timestamps
    end
  end
end
