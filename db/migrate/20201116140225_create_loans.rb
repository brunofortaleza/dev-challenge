class CreateLoans < ActiveRecord::Migration[6.0]
  def change
    create_table :loans do |t|
      t.decimal :amount
      t.integer :number_installments
      t.decimal :interest_rate
      t.references :requester, null: false, foreign_key: true

      t.timestamps
    end
  end
end
