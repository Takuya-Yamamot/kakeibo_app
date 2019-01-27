class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.date :date
      t.string :place
      t.integer :price

      t.timestamps
    end
  end
end
