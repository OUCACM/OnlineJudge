class NoticesController < ApplicationController
  def index
    #@notices = Notice.all

    @@paginate
    @notices = Notice.paginate :page => params[:page], :per_page => 5, :order => "created_at desc"

    respond_to do |format|
      format.html
      format.json{render :json => @notices}
    end
  end

  def new

  end

  def create
    @notice = Notice.new params[:notice]

    @notice.save
    redirect_to notices_index_url
  end
  def show
    @notice = Notice.find params[:id]
  end

  def edit
  end

  private

end
