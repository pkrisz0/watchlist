# frozen_string_literal: true

class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :director_first_name
      t.string :director_last_name
      t.integer :rating
      t.string :poster

      t.timestamps
    end
  end
end
