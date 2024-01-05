class CreateTopic3s < ActiveRecord::Migration[7.1]
  def change
    create_table :topic3s do |t|
      t.integer :question

      t.timestamps
    end
  end
end
