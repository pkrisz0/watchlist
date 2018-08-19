# frozen_string_literal: true

class CreateSeries < ActiveRecord::Migration[5.1]
  def change
    create_table :series do |t|
      t.string :title
      t.integer :season_start
      t.integer :season_end
      t.integer :rating
      t.string :poster

      t.timestamps
    end
  end
end
