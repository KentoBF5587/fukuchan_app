class CreateTopic2s < ActiveRecord::Migration[7.1]
  def change
    create_table :topic2s do |t|
      t.integer :question

      t.timestamps
    end
  end
end
