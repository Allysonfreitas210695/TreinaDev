class Finder
  def index_of(list, value)
    array = []
    list.each_index do |l|
      array << l if list[l].include? value
    end
    array
  end
end
