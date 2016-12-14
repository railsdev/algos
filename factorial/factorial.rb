module Factorial
  # Refinements refernece from 
  # Ruby Tips » http://hardikjoshi.me/2016/12/02/Ruby-Tips.html 

  refine Integer do
    def factorial
      self <= 1 ? 1 : self * (self - 1).factorial
    end
  end
end
