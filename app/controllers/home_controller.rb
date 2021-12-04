class HomeController < ApplicationController
  include ActionController::Live

  # Method to stream data and time to home page.
  def clock
    response.headers['Content-Type'] = 'text/event-stream'
    sse = SSE.new(response.stream, retry: 1000, event: "clock")
    sse.write({value: Time.now.strftime("%Y-%m-%d %H:%M:%S")})
  ensure
    response.stream.close
  end

  def home
  end

  # For Contact page so user can send an email.
  def contact
  end

  def request_contact
    name = params[:name]
    email = params[:email]
    telephone = params[:telephone]
    message = params[:message]
    if email.blank?
      flash[:alert] = I18n.t('home.request_contact.no_email')
    else
      ContactMailer.contact_email(email, name, telephone, message).deliver_now
      flash[:notice] = I18n.t('home.request_contact.email_sent')
    end
    redirect_to root_path
  end

end
