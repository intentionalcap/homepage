class PagesController < ApplicationController
  before_action :require_signed_in!, only: [:home]

  def home; end

  def welcome;end
  
end
