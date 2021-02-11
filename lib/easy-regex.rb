module ERegex
  class Internet
    class << self
      def email
        # Regex to validate an email -> from Michael Hartl Rails book 
        /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
      end

      def email_custom(domain, length)
         /\A[\w+\-.]{1,#{length}}@#{domain}\z/i
      end

      def password
        # Regex if a string contains at least a lowercase letter, a uppercase, a digit, a scpecial char and +8 chars
        /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[\W]).{8,}$/
      end

      def password_custom(length, start_with="", end_with="")
        /^#{start_with}(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[\W]).{#{length},}#{end_with}$/
      end

      def domain
        /[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
      end

      def domain_custom(length, end_with="")
        return /^[a-z\d\-]{0,#{length}}(\.[a-z\d\-]{0,#{length}})*\.[a-z]+\z/ if end_with.length == 0
        /[a-z\d\-]{0,#{length}}(\.[a-z\d\-]{0,#{length}})*\.#{end_with}\z/
      end

      def url
        /^((http|https):\/\/)(([a-z0-9-\.]*)\.)?([a-z0-9-]+)\.([a-z]{2,5})(:[0-9]{1,5})?(\/)?$/ix
      end
    end
  end

  class Personal
    class << self
      def name
        /^\s*[A-Za-z]+((\s)?((\'|\-|\.)?([A-Za-z])*))*\s*$/
      end

      def phone
          /\A(\+(\d{1,2}-)?\d{1,4}\s?)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/
      end

      def phone_custom(region, spaces=true)
        region_regex = /(\+(\d{1,2}-)?\d{1,4}\s?)/
        region_regex = "" if !region
        return /\A#{region_regex}\(?\d{3}\)?\d{3}\d{4}\z/ if !spaces

        /\A#{region_regex}\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/
      end

      def address
        /\A[\w+\-.]\s(#?\d+)\s[\w+\-.]/
      end
    end
  end
end
