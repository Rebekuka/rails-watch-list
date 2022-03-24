class RemoveReferenceToBookmarks < ActiveRecord::Migration[6.1]
  def change
    remove_reference :bookmarks, :movies, foreign_key: true
    add_reference :bookmarks, :movie, foreign_key: true
  end
end
