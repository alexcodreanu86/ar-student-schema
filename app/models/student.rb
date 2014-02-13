require_relative '../../db/config'
require 'sqlite3'

class Student < ActiveRecord::Base
# implement your Student model here
  has_many :student_teachers, :foreign_key => :student_id
  has_many :teachers, :through => :student_teachers

  validates :email, :format => { :with => /\w+\W?\w+?\@\w+\.\w+/,
    :message => "Invalid email" }
  validates :email, :uniqueness => true, :on => :create
  validates :age, :numericality  => {:greater_than => 3 }
  #validates :phone, :format => {:with => /\d?(\W|\s)+?\d{3}(\W|\s)+?\d{3}(\W|\s)+?\d{4}/,
    #:message => "Invalid phone number"}
  def generate_name
    first_name + " " + last_name
  end


  def age
    ((Date.today - birthday) / 365).to_i
  end
end
