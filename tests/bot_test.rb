require_relative '../app/bot'

command1 = {
  "command": "color",
  "data": "red"
}

command2 = {
  "command": "xxxxxxxx",
  "data": "yyyyyyyy"
}

describe "Bot" do
  
  it "create a simple bot command and generate hash for command1" do
    c1 = Bot.new(command1)
    expect(c1.command).to eq("color")
    expect(c1.data).to eq("red")
    c1.generateHash();
    expect(c1.hash).to eq("5a2421317676")
  end 

  it "create a simple bot command and generate hash for command1" do
    c2 = Bot.new(command2)
    expect(c2.command).to eq( "xxxxxxxx")
    expect(c2.data).to eq("yyyyyyyy")
    c2.generateHash();
    expect(c2.hash).to eq("ea6de796d93dc")
  end 
end