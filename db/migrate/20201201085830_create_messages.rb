class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.references :rooms, foreign_key: true
      t.references :users, foreign_key: true
      t.string     :content
      t.timestamps
    end
  end
end
