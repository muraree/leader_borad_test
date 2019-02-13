require_relative '../summary_total_point'

RSpec.describe SummaryTotalPoint do

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

    it 'summary hash' do
      data = SummaryTotalPoint.summary_of_total_points(csv_path)
      expect(data).to include("Jack")
    end

    it 'convert data into hash' do
      data = SummaryTotalPoint.convert_data_into_hash(csv_path)
      expect(data).to eq({"Jack"=>2, "John"=>1})
    end
  end
end

