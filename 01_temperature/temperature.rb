#write your code here
def ftoc(num)
  num = num - 32
  num = num * (5.0/9.0)
  num
end

def ctof(num)
  num = num * (9.0/5.0)
  num = num + 32
  num
end
