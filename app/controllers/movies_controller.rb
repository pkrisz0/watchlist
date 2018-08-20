# frozen_string_literal: true

class MoviesController < ApplicationController
  inherit_resources

  def create
    create!(notice: 'A new movieeeee!')
  end
end
