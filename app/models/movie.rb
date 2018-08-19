# frozen_string_literal: true

class Movie < ApplicationRecord
  def director_name
    "#{director_first_name} #{director_last_name}"
  end
end
