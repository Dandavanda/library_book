class CreateBorrowers < ActiveRecord::Migration[5.2]
  def change
    create_table :borrowers do |t|
      t.date :date_borrower
      t.references :users, foreign_key: true
      t.references :books, foreign_key: true

      t.timestamps
    end
  end
end
