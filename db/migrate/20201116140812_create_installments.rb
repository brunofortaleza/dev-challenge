class CreateInstallments < ActiveRecord::Migration[6.0]
  def change
    create_table :installments do |t|
      t.decimal :amount
      t.date :deadline
      t.references :loan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
