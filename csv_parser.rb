require 'csv'

module CsvParser
  module_function

  def call(csv_path)
    return false unless csv_path && File.exists?(csv_path)
    file = File.read(csv_path)
    CSV.parse(file)
  end
end
