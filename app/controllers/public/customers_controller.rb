class Public::CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit]
  def index
    @customers = Customer.all
  end

  def show
  end

  def edit
  end

  private

  def set_customer
    @custmer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email, :first_kana, :last_kana, :phone, :post_code, :address, :age, :is_deleted)
  end
end
