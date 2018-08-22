class OrdersMailer < ApplicationMailer
  default from: "No-reply <No-reply@sandboxb134b26c1929471b89ae6670e912c7e6.com>"
  
  def send_email(order)
    key = "key-c491a97241838291db7b4670deff2394"
    domain = "sandboxb134b26c1929471b89ae6670e912c7e6.mailgun.org"
    post = "https://api:#{key}@api.mailgun.net/v3/#{domain}/messages".to_s
    RestClient.post post, 
      from: "No-reply <No-reply@dummy.com>", 
      to: "vestniki@tut.by", 
      subject: "Сообщение".to_s, 
      text: "  от: #{order.email}
              тел: #{order.mobile}
      сообщение: #{order.message}".to_s
  end
end
