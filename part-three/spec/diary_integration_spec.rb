require 'diary'
require 'secret_diary'

RSpec.describe 'secret diary integration' do
  it "returns the diary's contents if the diary is unlocked" do
    diary = Diary.new("contents")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "contents"
  end

  it "doesn't allow the diary to be read if it's locked" do
    diary = Diary.new("contents")
    secret_diary = SecretDiary.new(diary)
    expect{ secret_diary.read }.to raise_error "Go away!"
  end

  it "locks diary and stops it from being read" do
    diary = Diary.new("contents")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    secret_diary.lock
    expect{ secret_diary.read }.to raise_error "Go away!"
  end
end
