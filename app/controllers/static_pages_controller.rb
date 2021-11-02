class StaticPagesController < ApplicationController
  def landing_page
    @course = Course.all
  end

  def privacy_policy
  end
end
