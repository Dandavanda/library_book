class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.date :publish
      t.date :year
      t.string :page

      t.timestamps
    end
  end
end
