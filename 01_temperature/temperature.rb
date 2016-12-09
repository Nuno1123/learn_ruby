#write your code here
def ftoc f_num
  (f_num.to_f - 32.0) * (5.0 / 9.0)
end

def ctof c_num
  c_num.to_f / (5.0 / 9.0) + 32.0
end
