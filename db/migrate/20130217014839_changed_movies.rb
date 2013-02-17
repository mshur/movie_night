class ChangedMovies < ActiveRecord::Migration
  def up
    remove_column :movies, :event

    add_column :movies, :event_id, :integer
  end

  def down
    remove_column :movies, :event_id

    add_column :movies, :event, :string
  end
end
