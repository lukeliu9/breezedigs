class StaticPagesController < ApplicationController

  def home
    @buildings = Building.all
    @reviews = Review.all
    @rents = Rent.all
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
