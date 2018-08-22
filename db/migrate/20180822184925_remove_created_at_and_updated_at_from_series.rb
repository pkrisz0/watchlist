# frozen_string_literal: true

class RemoveCreatedAtAndUpdatedAtFromSeries < ActiveRecord::Migration[5.1]
  def change
    remove_column :series, :created_at, :timestamp
    remove_column :series, :updated_at, :timestamp
  end
end
