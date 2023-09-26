class Memo < ApplicationRecord

  enum level: {easy: 0, normal: 1, hard: 2}

  belongs_to :user

end
