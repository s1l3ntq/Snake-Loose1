class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :score
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
