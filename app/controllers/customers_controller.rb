class CustomersController < ApplicationController
  before_action :set_customer, only: [:edit, :update, :show, :destroy ]
  before_action :authenticate_user!

  def index
    #@customers = Customer.page(params[:page])
    @q = Customer.ransack(params[:q])
    @customers = @q.result.page(params[:page])
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to @customer
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @customer.update(customer_params)
      redirect_to @customer
    else
      render :edit
    end
  end

  def show
    @comment = Comment.new
  end

  def destroy
    @customer.delete
    redirect_to customers_url
  end

  private

  def customer_params
    params.require(:customer).permit(
      :family_name,
      :given_name,
      :email,
      :company_id,
    )
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end

end
