class InformationController < ApplicationController
  def index
    @courses = Course.all
  end
end
