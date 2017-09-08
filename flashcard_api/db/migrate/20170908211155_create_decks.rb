class CreateDecks < ActiveRecord::Migration[5.1]
  def change
    create_table :decks do |t|
      t.references :user, foreign_key: true
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
