require_relative '../leader_board'

RSpec.describe LeaderBoard do

  describe 'summary of total points' do
    let(:csv_path) { 'spec/test_input_file.csv' }
    let!(:csv) do
      CSV.open(csv_path, 'w') do |csv|
        csv << ['John', '1']
        csv << ['Jack', '2']
      end
    end
    let(:leader_board) { LeaderBoard.new(csv_path) }

    after do
      File.delete(csv_path)
    end

    it 'summary for given points ' do
      game_summary = leader_board.result
      values = game_summary.values
      expect(values).to eql(values.sort.reverse)
    end
  end
end

