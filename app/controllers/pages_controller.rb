class PagesController < ApplicationController
  skip_before_action :authenticate_usuario!, only: [:home, :about, :contact]

  def home
    render "pages/landingPage/home"
  end

  def about
  end

  def contact
  end
end
