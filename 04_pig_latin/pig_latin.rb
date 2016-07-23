#write your code here
def translate(sentence)
  vowels = ['a','e','i','o','u']
  words = sentence.split(" ").map do |word|
    temp = word
    if vowels.include?(temp[0])
      temp = temp+"ay"
    else
      #if temp[0]=='q' and temp[1]=='u'
      #  c = temp[0]
      #  temp = temp[1..-1]
      #  temp = temp+c+"ay"
      #end
      if vowels.include?(temp[1])
        if temp[0]=='q' and temp[1]=='u'
          c = temp[0..1]
          temp = temp[2..-1]
          temp = temp+c+"ay"
        else
          c = temp[0]
          temp = temp[1..-1]
          temp = temp+c+"ay"
        end
      else
        if vowels.include?(temp[2])
          if temp[1]=='q' and temp[2]=='u'
            c = temp[0..2]
            temp = temp[3..-1]
            temp = temp+c+"ay"
          else
            c = temp[0..1]
            temp = temp[2..-1]
            temp = temp+c+"ay"
          end
        else
          c = temp[0..2]
          temp = temp[3..-1]
          temp = temp+c+"ay"
        end
      end
    end
    word = temp
  end
  words.join(" ")
end
