class Recipe < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user

  validates :content, presence: true, length: { maximum: 300 }
  validates :user_id, presence: true

    default_scope order: 'recipes.created_at DESC'



end
