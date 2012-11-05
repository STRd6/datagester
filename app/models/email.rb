class Email < ActiveRecord::Base
  attr_accessible :from, :subject, :text, :to, :headers
end
