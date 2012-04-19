require 'rspec'

describe "Twitter Checker" do

  it "Should match some strings" do
    regex_to_match = "olly|moss|poster|black|widow"

    examples = Array.new
    examples << "Poster by Olly Moss for the BLACK WIDOW is released!!asdfjhasdfkjhuue /1 ;asdfkjh/!! "
    examples << "The olly moss poster for black widow has been released"
    examples << "the OLly mOss poster for bLACk wiDOW has been released"

    examples.each do |example|
      example.downcase.match(regex_to_match).should_not be_nil
    end

    fail_examples = Array.new
    fail_examples << " for the is released!!asdfjhasdfkjhuue /1 ;asdfkjh/!! "
    fail_examples << "The  for  has been released"
    fail_examples << "the  for  has been released"

    fail_examples.each do |example|
      example.downcase.match(regex_to_match).should be_nil
    end

  end

end