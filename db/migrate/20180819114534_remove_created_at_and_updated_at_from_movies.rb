# frozen_string_literal: true

class RemoveCreatedAtAndUpdatedAtFromMovies < ActiveRecord::Migration[5.1]
  def change
    remove_column :movies, :created_at, :timestamp
    remove_column :movies, :updated_at, :timestamp
  end
end
