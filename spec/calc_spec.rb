require 'calc'

#05 仮実装
# 
# RSpec.describe "A calc" do
#   it "given 2 and 3, returns 5" do
#     calc = Calc.new
#     expect(calc.add(2, 3)).to eq(5)
#   end
# end
#
#  #06 開発サイクル
#
# RSpec.describe "A calc" do
#   before do
#     @calc = Calc.new
#   end
#   it "given 2 and 3, returns 5" do
#     expect(@calc.add(2, 3)).to eq(5)
#   end
#   # 三角測量
#   it "given 5 and 8, returns 13" do
#     expect(@calc.add(5, 8)).to eq(13)
#   end
# end
#
#
#
# 07 describe､context(describe､contextは同じ)
#
# RSpec.describe Calc do
#   context "when normal mode" do
#     it "given 2 and 3, returns 5" do
#       calc = Calc.new
#       expect(calc.add(2, 3)).to eq(5)
#     end
#   end
#   context "when graph mode" do
#     it "draw graph" do
#     end
#   end
# end
#
#
#
# 08 example(it,specify,exampleは同じ)
#
# RSpec.describe Calc do
#   # example / specify
#   it do
#     calc = Calc.new
#     expect(calc.add(2, 3)).to eq(5)
#   end
# end
#
# RSpec.describe Calc do
#   # example / specify
#   it {
#     calc = Calc.new
#     expect(calc.add(2, 3)).to eq(5)
#   }
#   it "draws grarh" # pending
# end
#
#
# #09 matcher(判定)
#
# RSpec.describe Calc do
#   it {
#     calc = Calc.new
#     expect(calc.add(2, 3)).to eq(5) # matcher
#     expect(calc.add(2, 3)).not_to eq(5)
#     expect(calc.add(2, 3)).to be true
#     expect(calc.add(2, 3)).to be false
#     expect(calc.add(2, 3)).to be < 10
#     expect(calc.add(2, 3)).to be_between(1, 10).inclusive #1から10の間、1と10も含む
#     expect(calc).to respond_to(:add)  #addがあるかどうか
#     expect(calc.add(2, 3).integer?).to be true #integer? empty?
#     expect(calc.add(2, 3)).to be_integer #上の文と同じ意味
#   }
# end
#
#
#  #10 subject(calcの役割)
#
#  RSpec.describe Calc do
#    subject(:calc) { Calc.new }
#    it {
#      # calc = Calc.new
#      expect(suject.add(2, 3)).to eq(5)
#    }
#  end
#
#
# 11 let(その他の変数)
#
# RSpec.describe Calc do
#   subject(:calc) { Calc.new }
#   #  let
#   context "tax 5%" do
#     let(:tax) { 0.05 }
#     it { expect(calc.price(100, tax)).to eq(105) }
#   end
#   context "tax 8%" do
#     let(:tax) { 0.08 }
#     it { expect(calc.price(100, tax)).to eq(108) }
#   end
# end
#
#
# #12 letとlet!
#
# RSpec.describe Calc do
#   subject(:calc) { Calc.new }
#   # let
#   # 1, exampleごとに結果がキャッシュされる
#   # 2, 遅延評価
#     let!(:tax) {
#        calc.tax = 0.05
#     }
#     it { expect(tax).to eq(0.05) }
#     it { expect(calc.price(100)).to eq(105) }
# end
#
#
# 13 method stub
# test double: 代役オブジェクト
# method stub
#
# RSpec.describe Calc do
#   it {
#     user = double('user')
#     allow(user).to receive(:name).and_return('taguchi')
#     calc = Calc.new
#     expect(calc.add(5, 2, user.name)).to eq('7 by taguchi')
#   }
# end
#
#  14 message expectation
#
#  test double: 代役オブジェクト
#  message expectation: 呼ばれなかったらfail
#
#  RSpec.describe Calc do
#    it {
#      logger = double('logger')
#      expect(logger).to receive(:log)
#      calc = Calc.new(logger)
#      expect(calc.add(5, 2)).to eq(7)
#    }
#  end
#
#
#   15 shared_examples
#
#   RSpec.shared_examples "basic functions" do
#     it "can add"
#     it "can subtrace"
#     it "can multiply"
#     it "can divide"
#   end
#
#   RSpec.describe Calc do
#     context "normal mode" do
#       include_examples "basic functions"
#     end
#     context "expert mode" do
#       include_examples "basic functions"
#       it "can draw graph"
#     end
#   end
