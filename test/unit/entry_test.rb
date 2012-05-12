require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "you should not add an entry without a title" do
    entry = Entry.new(:link => "http://www.uq.edu.au/staringatuq")
    assert !entry.save, "Saved an entry without a title"
  end

  test "entries must have a url" do
    entry = Entry.new(:title => "enrolment stuff")
    assert !entry.save, "Saved an entry without a url"
  end

  test "links are in a vaild format" do
    entry = Entry.new(:title => "starting at uq", :link => "staringatuq.edu.au")
    assert !entry.save, "invalid url format"
  end
end
