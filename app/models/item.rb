class Item < ActiveRecord::Base
  attr_accessible :name, :description, :size

  scope :order_by, ->(param) {
    sort = param.ends_with?('_desc') ? 'DESC' : 'ASC'

    case param.sub(/_(desc|asc)$/, '')
    when 'name' then order("name #{sort}")
    when 'desc' then order("description #{sort}")
    when 'size' then order("size #{sort}")
    else             scoped     # fallback
    end
  }
end
