class EmailController < ApplicationController
  def create
    headers = params[:headers]
    text = params[:text]
    to = params[:to]
    from = params[:from]
    subject = params[:subject]

    Email.create({
      headers: headers,
      text: text,
      to: to,
      from: from,
      subject: subject,
    })

    render :nothing => true
  end
end
