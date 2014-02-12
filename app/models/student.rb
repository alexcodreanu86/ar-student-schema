require_relative '../../db/config'
require 'sqlite3'

class Student < ActiveRecord::Base
# implement your Student model here
validates :email, :format => { :with => /\w+\W?\w+?\@\w+\.\w+/,
    :message => "Invalid email" }
validates :email, :uniqueness => true, :on => :create
validates :age, :numericality  => {:greater_than => 3 }
validates :phone, :format => {:with => /\d?(\W|\s)+?\d{3}(\W|\s)+?\d+(\W|\s)+?\d{4}/,
    :message => "Invalid phone number"}
  def name
    first_name + " " + last_name
  end


  def age
    ((Date.today - birthday) / 365).to_i
  end

  # def valid_phone?
  #   phone =~ /\d?\W?\d{3}\W?\d{3}\W?\d{4}/
  # end


end
