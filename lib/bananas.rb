class Bananas
  def initialize bananas
    @bananas = bananas
  end

  def status_class
    "banana-count"
  end

  def count
    @bananas.size
  end

  def count_message
    "The monkey has had #{count} bananas so far"
  end

  def favorite_dip_suaces
    @bananas.map(&:free_comment).to_sentence
  end
end