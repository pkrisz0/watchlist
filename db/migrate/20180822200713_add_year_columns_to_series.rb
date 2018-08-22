# frozen_string_literal: true

class AddYearColumnsToSeries < ActiveRecord::Migration[5.1]
  def change
    add_column :series, :year_start, :integer
    add_column :series, :year_end, :integer
  end
end
