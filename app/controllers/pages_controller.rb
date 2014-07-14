class PagesController < ApplicationController

  include HighVoltage::StaticPage

  layout :layout_for_page

  def resume
    render layout: "resume_layout"
  end

  private

  def layout_for_page
    case params[:id]
    when 'resume'
      'resume_layout'
    else
      'application'
    end
  end

end
