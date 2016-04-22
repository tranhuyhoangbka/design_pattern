class Monkey < ActiveRecord::Base
  has_many :bananas, dependent: :destroy

  enum status: {eating: 0, sleeping: 1}
end
