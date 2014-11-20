class HomeController < ApplicationController
  def index
    @@paginate
    @notices = Notice.paginate :page => params[:page], :per_page => 5, :order => "created_at desc"
  end
end
