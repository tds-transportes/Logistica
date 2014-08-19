class Cnh < ActiveRecord::Base
  validates :numero, presence: true, numericality: true, length: {is: 11}
  validates :validade, presence: true
end
