class CreateSharingYoutbeVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :sharing_youtbe_videos do |t|
      t.string :title
      t.string :link
      t.references :user, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
