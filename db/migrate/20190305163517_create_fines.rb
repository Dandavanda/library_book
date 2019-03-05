class CreateFines < ActiveRecord::Migration[5.2]
  def change
    create_table :fines do |t|
      t.date :date_borrower
      t.references :returns, foreign_key: true

      t.timestamps
    end
  end
end
