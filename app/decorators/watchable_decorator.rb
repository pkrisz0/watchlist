# frozen_string_literal: true

class WatchableDecorator
  attr_reader :watchable

  def initialize(watchable)
    @watchable = watchable
  end

  def fsub_text
    return if watchable.nil?
    output = []
    output << watchable.title.to_s
    output << year.to_s
    output << director_or_season.to_s
    output << watchable.rating.to_s
    output.join('<br />').html_safe
  end

  def seasons
    if watchable.season_end.present?
      "Seasons #{watchable.season_start}-#{watchable.season_end}"
    else
      "Season #{watchable.season_start}"
    end
  end

  def title
    watchable.is_a?(Movie) ? "Movie No. #{watchable.id}" : "Series No. #{watchable.id}"
  end

  def year
    if watchable.is_a?(Movie)
      watchable.year.to_s
    else
      watchable.year_end.present? ? "#{watchable.year_start}-#{watchable.year_end}" : watchable.year_start.to_s
    end
  end

  def director_or_season
    watchable.is_a?(Movie) ? watchable.director_name.to_s : seasons.to_s
  end
end
