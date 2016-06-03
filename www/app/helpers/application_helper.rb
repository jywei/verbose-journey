module ApplicationHelper

  def current_path(path)
    "current" if current_page?(path)
  end

  def category(price)
    if price == 1
      "first"
    elsif price == 2
      "second"
    elsif price == 3
      "third"
    elsif price == 4
      "forth"
    elsif price == 5
      "fifth"
    elsif price == 6
      "sixth"
    else
      "seventh"
    end
  end

  def wordcount(word)
    word.size
  end
end
