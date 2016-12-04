class IndexController < ApplicationController
  def index
    @request = Request.new
    @article_items = ArticleItem.all
    @service_items = ServiceItem.all
    @company_types = CompanyType.all
  end

  def create_request
    @request = Request.new request_params
    if @request.save
      redirect_to :back
    else
      redirect_to :back
    end
  end

  private
  def request_params
    params.require(:request).permit(:from, :body, :address)
  end


end
