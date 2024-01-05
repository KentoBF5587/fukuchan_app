class CreateFamousQuotes < ActiveRecord::Migration[7.1]
  def change
    create_table :famous_quotes do |t|
      t.string :title,          null: false
      t.text :body,             null: false

      t.timestamps
    end
  end
end
