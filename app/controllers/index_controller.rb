# frozen_string_literal: true

class IndexController < ApplicationController
  def index
    @watchables = Movie.all + Series.all
    @watchables = @watchables.sort_by(&:id)
  end

  def new
    render 'new'
  end
end
