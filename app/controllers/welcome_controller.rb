class WelcomeController < ApplicationController
  skip_before_action :authorization
  def index
  end
end
