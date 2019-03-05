class CreateReturns < ActiveRecord::Migration[5.2]
  def change
    create_table :returns do |t|
      t.date :date_borrower
      t.references :borrower, foreign_key: true

      t.timestamps
    end
  end
end
