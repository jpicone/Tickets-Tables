#This is the welcome controller source code.
class WelcomeController < ApplicationController
  def home
    @restaurants = Restaurant.all
  end
end
