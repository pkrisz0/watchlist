# frozen_string_literal: true

class MoviesController < ApplicationController
  inherit_resources

  def create
    create!(notice: 'A new movieeeee!')
    redirect_to root_path
  end
end
