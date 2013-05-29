require 'rspec'

require_relative './mission_control.rb'

describe 'MissionControlCheck' do 
	let(:check) {MissionControlCheck.new}
	let(:error)	{"Please only yes or no"}

	it 'Checks in with time' do
		result = check.check_in
		expect(File.exist?('./time_of_check_in.csv')).to be_true
	end

	it 'Checks AM/PM' do
		result = check.display_time("in")
		expect(result).to include("You are checked in")
	end

	it 'Check out with time, time elapsed' do
		command = check.x 
		expect(command = "out").to include("out")
	end


end
