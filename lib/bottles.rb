class Bottles
  def initialize
    @count = 1 
  end

  def bottles(count)
    if count > 0
      "#{count} bottle#{count == 1 ? '' : 's'}"
    elsif count == 0
      'no more bottles'
    else
      '99 bottles'
    end
  end

  def beer_run(count)
    if count > 0
      "Take #{count == 1 ? 'it' : 'one'} down and pass it around, "
    else
      'Go to the store and buy some more, '
    end
  end

  def verse(count)
    "#{bottles(count).capitalize} of beer on the wall, " +
      "#{bottles(count)} of beer.\n" +
      "#{beer_run(count)}" +
      "#{bottles(count - 1)} of beer on the wall.\n"
  end

  def verses(start_verse, end_verse)
    @count = start_verse
    verses_array = []

    until @count < end_verse do 
      @count -= 1
      verses_array.push(verse(@count + 1))
    end 
    verses_array.join("\n")
  end

  def song
    verses(99,0)
  end
end
