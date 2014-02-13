require_relative '../../db/config'
require 'sqlite3'

class Teacher < ActiveRecord::Base
  has_many :student_teachers, :foreign_key => :teacher_id
  has_many :students, :through => :student_teachers

  validates :email, :format => { :with => /\w+\W?\w+?\@\w+\.\w+/,
    :message => "Invalid email" }
  validates :email, :uniqueness => true, :on => :create
end


