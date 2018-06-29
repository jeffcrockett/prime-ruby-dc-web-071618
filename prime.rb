# Add  code here!
def prime(n)
  if n <= 1 
    return false
  end
  a = (2..n).map{|i| true}
  for i in (2..Math.sqrt(n))
    if a[i]
      for j in ((i**2 + i)..n)
        a[j] = false
      end
    end
  end
  if a.include?(true)
    return true
  else 
    return false 
  end
end