# Easy regex ruby

class EasyRegex
  def email
    # Regex to validate an email -> from Michael Hartl Rails book 
    /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  end

  def password
    # Regex if a string contains at least a lowercase letter, a uppercase, a digit, a scpecial char and +8 chars
    /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[\W]).{8,}$/
  end

  def domain
    /[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  end

  def url
    /^((http|https):\/\/)(([a-z0-9-\.]*)\.)?([a-z0-9-]+)\.([a-z]{2,5})(:[0-9]{1,5})?(\/)?$/ix
  end

  def name
    /\A(?=[\w' -]{5,64})([\w'-]{2,})([\s]{1})\s*?([\w'-]{2,})\Z/
  end

  def phone
    /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/
  end

  def address
    /\A[\w+\-.]\s(#?\d+)\s[\w+\-.]/
  end
end
