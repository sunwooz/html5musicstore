class CreateMusicTable < ActiveRecord::Migration
  def self.up
    create_table :musics do |t|
      t.string :name
      t.string :price
      t.string :description
      t.integer :song_file_size
      t.string :song_content_type
      t.string :song_file_name
      t.timestamps
    end
  end

  def down
  end
end
