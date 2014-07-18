class Search
  include ActiveModel::Model

  attr_accessor :category

  def search
    rows = Meme.all
    if category.present?
      rows = rows.where("category ILIKE ?", "%#{category}%")
    end
    rows
  end
end
