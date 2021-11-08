a = {
  half_of_no = no/2
  (2..half_of_no).each do |n|
    return false if (no%n).zero?
  end
  true
}

def print_prime

n = gets

