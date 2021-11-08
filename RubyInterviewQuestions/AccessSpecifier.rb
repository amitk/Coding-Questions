# There are three types of access specifiers in ruby
# - public
# - private
# - protected

=begin
  # public
    - A public method is accessable any where inside the class as well as outsite of the class on it's objects and
      on it's child class objects.
  
  # protected
    - A protected method is accessable any where insite the class and in it's child class. And on the instance of class and
      child class inside the context of the class.
      
  # private
    - A private method is accessable anywhere inside the class and the child class.
=end

class A

  def public_methodA
    p "This is a public method in A"
  end

  protected

  def protected_methodA
    p "This is a protected method A"
  end

  private

  def private_methodA
    # A.new.protected_methodA
    p "This is a private method A"
  end
end

class B < A

  def public_methodB
    private_methodB
    p "Public method in B"
  end

  protected

  def protected_methodB
    p "Protected method in B"
  end
  
  private

  def private_methodB
    B.new.protected_methodA
    p "Protected method in B"
  end
end

p B.new.public_methodB

