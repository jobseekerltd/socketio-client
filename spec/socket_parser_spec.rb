require 'socket_io'

describe SocketParser do
  
  it 'should be able to decode all valid messages' do
    described_class.decode("0").should == {type: "0"}
    described_class.decode("1::").should == {type: "1", id: nil, end_point: nil, data: ""}
    described_class.decode("2::").should == {type: "2", id: nil, end_point: nil, data: ""}
    described_class.decode("3:::hay you").should == {type: "3", id: nil, end_point: nil, data: "hay you"}
    described_class.decode("4:::{\"can\":\"youcall\"}").should == {type: "4", id: nil, end_point: nil, data: "{\"can\":\"youcall\"}"}
    described_class.decode("5:::hay you").should == {type: "5", id: nil, end_point: nil, data: "hay you"}
    described_class.decode("6:::").should == {type: "6", id: nil, end_point: nil, data: ""}
    described_class.decode("7:::there is an error").should == {type: "7", id: nil, end_point: nil, data: "there is an error"}
    described_class.decode("8:::").should == {type: "8", id: nil, end_point: nil, data: ""}
  end

  it "should give a disconnect if bad input" do
    described_class.decode("hay dude").should == {type: "0"}
    described_class.decode("9").should == {type: "0"}
  end

end
