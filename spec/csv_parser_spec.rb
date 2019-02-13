require_relative '../csv_parser'

RSpec.describe CsvParser do

  describe 'summary of total points' do
    let(:csv_path) { 'spec/test_input_file.csv' }
    let!(:csv) do
      CSV.open(csv_path, 'w') do |csv|
        csv << ['John', '1']
        csv << ['Jack', '2']
      end
    end

    after do
      File.delete(csv_path)
    end

    it 'read CSV file' do
      csv = CsvParser.call(csv_path)
      expect(csv).to eql([['John', '1'], ['Jack', '2']])
    end

    it 'path not present' do
      csv_path = nil
      csv = CsvParser.call(csv_path)
      expect(csv).to eql(false)
    end
  end
end

