class HomeController < ApplicationController
  def index
    @note = Note.new
    @notes = Note.all.order('created_at desc')
  end
end
