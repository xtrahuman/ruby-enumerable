module MyEnumerable
  def list
    @list ||= []
  end

  def all?
    response = true
    list.each do |element|
      response = false unless yield element
    end
    response
  end
end
