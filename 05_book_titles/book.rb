class Book
# write your code here

  def title=(str)
    words = str.split(" ").map do |word|
      if %w(the and over in of to a an).include?(word)
        word
      else
        word.capitalize
      end
    end
    words.first.capitalize!
    @title = words.join(" ")
  end

  def title
    @title
  end

end
