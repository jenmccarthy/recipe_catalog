class TagsController < ApplicationController

  def index
    @tags = Tag.all
    render("tags/index.html.erb")
  end
  
  def new
    @tag = Tag.new
    render("tags/new.html.erb")
  end
  
  def create
    @tag = Tag.create(params[:tag])
    if @tag.valid?
      flash[:notice] = "This tag has been saved"
      redirect_to("/tags")
    else
      render("tags/new.html.erb")
    end
  end

end
