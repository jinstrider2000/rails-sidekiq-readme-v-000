class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end
# what's happening, submit already!!
  def upload
    LeadsWorker.perform_async(params[:leads].path)
    redirect_to customers_path
  end

end
