class EmailController < ApplicationController
  def create
    text = params[:text]
    from = params[:from]
    subject = params[:subject]

    Email.create({
      text: text,
      from: from,
      subject: subject,
    })

    render :nothing => true
  end
end
