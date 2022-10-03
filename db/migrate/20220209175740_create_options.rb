class CreateOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
      t.string :title, null: false
      t.references :poll, null: false, foreign_key: true
      t.integer :vote_count, null: false, default: 0

      t.timestamps
    end
  end
end
