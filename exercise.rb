class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    array = str.split(' ')
    array = array.map{ |word| word.length > 4 && word[0]!=word[0].upcase ? 'marklar' + (word[-1]=='.' || word[-1]=='?' || word[-1]=='!' ? word[-1]: '')  : word}
    array = array.map{ |word| word.length > 4 && word[0]==word[0].upcase ? 'Marklar' + (word[-1]=='.' || word[-1]=='?' || word[-1]=='!' ? word[-1]: ''): word}
    result = array.join(' ')
    result
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth) 
    evensum=0
    fib1=1
    fib2=1
    count=0
    until (count==nth-2) do
      fib2=fib1+fib2
      fib1=fib2-fib1
      (fib2%2==0 ? evensum= evensum + fib2 :  evensum+=0)
      count += 1
    end
    # TODO: Implement this method
    evensum
  end

end
