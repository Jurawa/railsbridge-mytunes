class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.references :artist, index: true
      t.string :name

      t.timestamps
    end
  end
end
