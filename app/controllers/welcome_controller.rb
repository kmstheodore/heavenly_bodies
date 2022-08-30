class WelcomeController < ApplicationController
  def home
  end

  def marketplace
    @planets = Planet.all
  end
end
