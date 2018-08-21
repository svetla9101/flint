class PagesController < ApplicationController
  
  skip_before_action :verify_authenticity_token

  def home
  end

  def contact
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      OrdersMailer.send_email(@order).deliver
      flash[:success] = "Сообщение успешно отправлено!"
    else
      flash.now[:error] ="Введите обязательные поля!" 
    end  
    render "contact"
  end

  def about
  end

  def inform
  end

  def important
  end

  def use
  end

  private
    def order_params
      params.require(:order).permit(:name, :email, :mobile, :message)
    end

end
