class CreateMemes < ActiveRecord::Migration
  def change
    create_table :memes do |t|
      t.references :user, index: true
      t.string :photo
      t.string :category

      t.timestamps
    end
  end
end
