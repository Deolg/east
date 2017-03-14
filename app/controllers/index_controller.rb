class IndexController < ApplicationController
  def index
    @request = Request.new
    @article_items = article_items
    @service_items = service_items
    @company_types = company_types
    @price_list = price_list
    @why_we = why_we
    @requisite = Requisite.last
    @contacts = Contact.last
  end

  def create_request
    @request = Request.new request_params
    @request.save
    redirect_to :back
  end

  private

  def request_params
    params.require(:request).permit(:from, :body, :address)
  end

  def article_items
    if locale != :ru
      ArticleItemsTranslation.all.where(language: locale).order(:created_at)
    else
      ArticleItem.all.order(:created_at)
    end
  end

  def service_items
    if locale != :ru
      ServiceItemTranslation.all.where(language: locale).order(:created_at)
    else
      ServiceItem.all.order(:created_at)
    end
  end

  def company_types
    if locale != :ru
      CompanyTypeTranslation.all.where(language: locale).order(:created_at)
    else
      CompanyType.all.order(:created_at)
    end
  end

  def price_list
    if locale != :ru
      PriceTranslation.all.where(language: locale).order(:created_at)
    else
      Price.all.order(:created_at)
    end
  end

  def why_we
    if locale != :ru
      Why.last.why_translations.where(language: locale)
    else
      Why.last
    end
  end
end
