require 'secret_diary'

RSpec.describe "takes the instance from diary" do
  it "test int method read" do
    diary = double :diary, read: "contents"
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "contents"
  end

  it "doesn't allow the diary to be read if it's locked" do
    diary = double :diary, read: "contents"
    secret_diary = SecretDiary.new(diary)
    expect{ secret_diary.read }.to raise_error "Go away!"
  end

  it "locks diary and stops it from being read" do
    diary = double :diary, read: "contents"
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    secret_diary.lock
    expect{ secret_diary.read }.to raise_error "Go away!"
  end
end



