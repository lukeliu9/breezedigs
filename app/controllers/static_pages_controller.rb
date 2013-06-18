class StaticPagesController < ApplicationController

  def home
    @buildings = Building.all.count
    @best = Building.has_reviews.get_best_buildings(6)
    @worst = Building.has_reviews.get_worst_buildings(6)
    @recent_reviews = Review.get_recent_reviews(5)
  end

  def terms
  end

  def contact
  end

  def careers
  end

  def about
  end

  def press
  end

  def partners
  end

  def privacy
  end

  def managers
  end

  def advertise
  end

  def guidelines
  end

  def abuse
  end

  def allcities
  end

end
