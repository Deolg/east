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
    @price_packs = price_packs
    @price_pack_items = price_pack_items
  end

  def create_request
    @request = Request.new request_params

    if verify_recaptcha(model: @request) && @request.save
      render :json => { :success => true, msg:'ok'}
    else
      render :json => { :success => false, msg:'error'}
    end

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

  def price_packs
    PricePack.includes([:price_pack_items]).order('order_index ASC').all
  end

  def price_pack_items
    PricePackItem.all
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
      Why.last.why_translations.where(language: locale).first
    else
      Why.last
    end
  end
end
