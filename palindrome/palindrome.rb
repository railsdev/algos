module Palindrome

  refine String do
    def palindrome?
      i       = 0
      str     = formatted_p
      str_len = str.length

      while i < str_len/2 do
        if str[i] != str[str_len - 1 - i]
          return false
        end
        i += 1
      end
      return true
    end

    private

    def formatted_p
      self.downcase.gsub(/[^A-Za-z0-9]/, '')
    end
  end
end
