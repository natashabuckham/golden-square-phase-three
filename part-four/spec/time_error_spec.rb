require 'time_error'

RSpec.describe TimeError do
  it "returns the difference in seconds between server time and the time on this computer" do
    time_dbl = double :time
    expect(time_dbl).to receive(:now).and_return(Time.new(2023, 3, 23, 12, 20, 23)) #Time.at(1679574023)
    requester_dbl = double :requester
    expect(requester_dbl).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"GMT","client_ip":"81.110.184.48","datetime":"2023-03-23T12:20:23.953131+00:00","day_of_week":4,"day_of_year":82,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1679574023,"utc_datetime":"2023-03-23T12:20:23.953131+00:00","utc_offset":"+00:00","week_number":12}')

    time_error = TimeError.new(requester_dbl)
    expect(time_error.error(time_dbl)).to eq 0.953131
  end
end
