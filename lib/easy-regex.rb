module ERegex
  class Internet
    class << self
      def email
        /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
      end

      def email_custom(domain, length)
         /\A[\w+\-.]{1,#{length}}@#{domain}\z/i
      end

      def password
        /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[\W]).{8,}$/
      end

      def password_custom(length, start_with='', end_with='')
        /^#{start_with}(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[\W]).{#{length},}#{end_with}$/
      end

      def domain
        /[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
      end

      def domain_custom(length, end_with=/\.[a-z]+\z/)
        Regexp.new("[a-z\d\-]{0,#{length}}(\.[a-z\d\-]{0,#{length}})*\.#{end_with}")
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

      def phone_custom(region=/(\+(\d{1,2}-)?\d{1,4}\s?)/, spaces=true)
        return /\A#{region}\(?\d{3}\)?\d{3}\d{4}\z/ unless spaces
        /\A#{region}\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/
      end

      def address
        /\A[\w+\-.]\s(#?\d+)\s[\w+\-.]/
      end
    end
  end
end
