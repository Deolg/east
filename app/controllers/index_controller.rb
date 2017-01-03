class IndexController < ApplicationController
  def index
    @request = Request.new
    @article_items = ArticleItem.all.order(:created_at)
    @service_items = ServiceItem.all.order(:created_at)
    @company_types = CompanyType.all.order(:created_at)
    @price_list = Price.all.order(:created_at)
    @why_we = Why.last
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
