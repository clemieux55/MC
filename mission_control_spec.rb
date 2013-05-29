require 'rspec'

require_relative './mission_control.rb'

describe 'MissionControlCheck' do 
	let(:check) {MissionControlCheck.new}

	it 'Checks in with time' do
		result = check.check_in
		expect(File.exist?('./time_of_check_in.csv')).to be_true
	end

	it 'Checks AM/PM' do
		result = check.display_time
		expect(result.length).to eq(2)
	end

	it 'Check out with time, time elapsed' do
		result = check.check_out
		expect(result.class).to eq(Array)


	end
end
