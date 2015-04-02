class String
  def to_eval
    return "\"#{self}\""
  end
end

class Hash
  def to_eval
    result = []
    each do |key, producer|
      result << "#{key.to_eval} => #{producer.to_eval}"
    end
    return "{#{result.join ", "}}"
  end
end