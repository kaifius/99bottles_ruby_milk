class Bottles

  def song
    verses(99, 0)
  end

  def verses(start_num, end_num)
    verses_to_sing = (end_num..start_num).to_a.reverse
    verses_to_sing.map { |number| verse(number) }.join("\n")
  end

  def verse(number)
    case number
    when 1
      verse_1
    when 0
      verse_0
    else
      verse_n(number)
    end
  end

  private

  def verse_1
    "1 bottle of milk on the wall, " +
      "1 bottle of milk.\n" +
      "Take it down and pass it around, " +
      "no more bottles of milk on the wall.\n"
  end

  def verse_0
    "No more bottles of milk on the wall, " +
      "no more bottles of milk.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of milk on the wall.\n"
  end

  def verse_n(number)
    one_less = number - 1
      "#{number} bottles of milk on the wall, " +
      "#{number} bottles of milk.\n" +
      "Take one down and pass it around, " +
      "#{one_less} #{pluralize('bottle', one_less)} of milk on the wall.\n"
  end

  def pluralize(word, number)
    number > 1 ? "#{word}s" : word
  end

end
