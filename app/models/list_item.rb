class ListItem < ApplicationRecord
  belongs_to :list, optional:true
end
