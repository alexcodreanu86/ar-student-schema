require_relative '../../db/config'
require 'sqlite3'

class StudentTeacher < ActiveRecord::Base
  belongs_to :student
  belongs_to :teacher
end
