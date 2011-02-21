# A minimal RESTfulcontroller. Notice how respond_to blocks and render() calls are optional.
# You can _think_ of the "default respond_to format" being html.
# Realize that without an explicit render() call, the controller will attempt
# to render app/views/controller_name/action_name.html.erb.
class ArticlesController < ApplicationController

  before_filter :set_edit_return_url, :only => [:edit]
  before_filter :load_authors, :only => [:new, :edit, :update]

  def index
  	 @num_articles = Article.count
	 @articles = Article.paginate(:page => params[:page])
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(params[:article])

    if @article.save
      redirect_to(@article, :flash => { :success => 'Article was successfully created.' })
    else
      flash[:error] = 'There was a problem creating the article.'
      render :action => "new"
    end

  end

  def update
    @article = Article.find(params[:id])

    if @article.update_attributes(params[:article])
      redirect_to(session[:edit_redirect], :flash => { :success => 'Article was successfully udpated.' })
    else
      flash[:error] = 'There was a problem updating the article.'
      render :action => "edit"
    end

  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to(articles_url, :flash => { :success => 'Article was successfully deleted.' })

  end

  private
  
    def set_edit_return_url
      session[:edit_redirect] = request.referer
    end

	 def load_authors
	 	@authors=Author.all.collect
	 end	

end
