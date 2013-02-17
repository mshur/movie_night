class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :link
      t.string :notes
      t.integer :vote
      t.string :event
      t.timestamps
      
    end
  end
end
