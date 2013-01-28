def beatiful_string(s)
  s = s.sub('\n', '')
  if s.length >= 2 and s.length <= 500 then  
    raking_letters = {}
    val_beatiful_letter = 26
    val_beatiful_string = 0

    s.split(/[^a-zA-Z]*/).each do |letter|
      letter.downcase!
      if raking_letters.key?(letter) then 
        raking_letters[letter]  += 1
      else 
        raking_letters.merge! letter => 1 
      end
    end

    raking_letters = raking_letters.sort_by{ |k, v| v }.reverse 
    raking_letters.each do |letter|
      val_beatiful_string += letter[1] * val_beatiful_letter
      val_beatiful_letter -= 1
    end 

    return  val_beatiful_string
  end
end

def multi_beatiful_string(a)
  num = a[0].to_i
  if num >= 5 and num <= 50 then
    i = 1
    num.times do 
      puts "Case ##{i}: #{ beatiful_string(a[i]) }" 
      i += 1
    end 
  end   
end

lines = File.readlines("beautiful_stringstxt.sdx")
multi_beatiful_string(lines)
