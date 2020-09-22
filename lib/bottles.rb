class Bottles

  def verses(start_num, end_num)
    verses_to_sing = (end_num..start_num).to_a.reverse
    verses_to_sing.map { |number| verse(number) }.join('')
  end

  def verse(number)
    if number == 1
      verse_1
    elsif number.zero?
      verse_0
    else
      one_less = number - 1
      "#{number} bottles of milk on the wall, " +
        "#{number} bottles of milk.\n" +
        "Take one down and pass it around, " +
        "#{one_less} #{pluralize('bottle', one_less)} of milk on the wall.\n"
    end
  end

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

private

  def pluralize(word, number)
    number > 1 ? "#{word}s" : word
  end

end
