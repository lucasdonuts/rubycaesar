def cipher (old_string, shift)
  new_string = shift_character(old_string, shift)
end

def shift_character(string, num)
  ascii_array = string.bytes
  ascii_array.map! do |code|
    if (code == 32)
      code = 32
    elsif (code >= 65 && code <= 90)
      code = ((code + num - 65) % 26) + 65
    elsif (code >= 97 && code <= 122)
      code = ((code + num - 97) % 26) + 97
    else
      return
    end
  end

  return ascii_array.map { |char| char.chr }.join
end

p cipher("Lucas", 42)