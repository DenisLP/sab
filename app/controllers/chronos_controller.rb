class ChronosController < ApplicationController
  def index
  end

  def management
    @vehicles = Vehicle.all
  end

  def detailing
    @vehicles = Vehicle.all
  end

  def painting
  end

  def rental
  end

  def waiting
  end
end
