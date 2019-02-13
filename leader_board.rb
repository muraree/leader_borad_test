require_relative 'summary_total_point'

class LeaderBoard
  include SummaryTotalPoint

  def initialize(file_path)
    @file_path = file_path
  end

  def result
    result_hash = summary_of_total_points(@file_path)

    format_output(result_hash)
  end

  # TEMP: STDOUT desire output
  def format_output(data)
    puts 'Record not found' unless data
    data.each{|k, v| puts "#{k}: #{v}"} if data
  end
end

# Calling
LeaderBoard.new(ARGV[0]).result
