class HomeController < ApplicationController
  def index
    render text: "This is your home!"
  end
end