require "spec_helper"

describe String do
  describe "#<<" do
    it "文字の追加" do
      s = "ABC"
      s << "D"
      expect(s.size).to eq(4)
    end

    it "nilは追加できない", :exception do
      # pending("調査中")
      s = "ABC"
      # s << nil
      expect { s << nil }.to raise_error(TypeError)
      # expect(s.size).to eq(4)
    end
  end
end

# 行番号による絞り込み
# rspec spec/experiments/string_spec.rb:11

# タグによる絞り込み
# rspec spec --tag=exception
# example "nilは追加できない", :exception do
