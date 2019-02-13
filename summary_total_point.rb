require_relative 'csv_parser'

module SummaryTotalPoint
  module_function

  def summary_of_total_points(file)
    convert_data_into_hash(file)
  end

  def convert_data_into_hash(file)
    data = CsvParser.call(file)
    return nil unless data
    data = data.each_with_object(Hash.new(0)){ |(k,v), h| h[k] += v.to_i }
    sort_hash_data(data)
  end

  def sort_hash_data(data)
    data.sort_by{|key, value| value}.reverse.to_h if data
  end

end
