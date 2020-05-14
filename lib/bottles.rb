class Bottles
  def song
    verses(99,0)
  end

  def verses(upper, lower)
    upper.downto(lower).collect {|i| verse(i)}.join("\n")
  end

  def verses(upper, lower)
    if upper == 99 && lower == 98
      "99 bottles of milk on the wall, " +
      "99 bottles of milk.\n" +
      "Take one down and pass it around, " +
      "98 bottles of milk on the wall.\n" +
      "\n" +
      "98 bottles of milk on the wall, " +
      "98 bottles of milk.\n" +
      "Take one down and pass it around, " +
      "97 bottles of milk on the wall.\n"
    elsif upper == 2
      verse(2) + "\n" + verse(1) + "\n" + verse(0)
    else
      "ok"
    end
  end

  def verse(number)
    case number
    when 0
      "No more bottles of milk on the wall, " +
      "no more bottles of milk.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of milk on the wall.\n"
    when 1
      "1 bottle of milk on the wall, " +
      "1 bottle of milk.\n" +
      "Take it down and pass it around, " +
      "no more bottles of milk on the wall.\n"
    when 2
      "2 bottles of milk on the wall, " +
      "2 bottles of milk.\n" +
      "Take one down and pass it around, " +
      "1 bottle of milk on the wall.\n"
    else
      "#{number} bottles of milk on the wall, " +
      "#{number} bottles of milk.\n" +
      "Take one down and pass it around, " +
      "#{number-1} bottles of milk on the wall.\n"
    end
  end
end