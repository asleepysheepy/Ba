# frozen_string_literal: true

require 'ba/ba_support/reaction'

RSpec.describe Ba::BaSupport::Reaction do
  describe 'Ba React' do
    let(:react) { described_class.base_reactions[:ba] }

    context 'with message ba' do
      it 'returns true when the mesage contains only ba' do
        expect(react.should_react('ba')).to be_truthy
      end

      it 'returns true when the message contains ba in a sentence' do
        expect(react.should_react('some ba')).to be_truthy
        expect(react.should_react('ba some')).to be_truthy
      end

      it 'returns true when the message contains ba with multiple As' do
        expect(react.should_react('baaa')).to be_truthy
      end

      it 'returns false when the string "ba" appears in another word' do
        expect(react.should_react('someba')).to be_falsey
        expect(react.should_react('basome')).to be_falsey
        expect(react.should_react('sobame')).to be_falsey
      end
    end
  end

  describe 'Nya React' do
    let(:react) { described_class.base_reactions[:nya] }

    context 'with message nya' do
      it 'returns true when the mesage contains only nya' do
        expect(react.should_react('nya')).to be_truthy
      end

      it 'returns true when the message contains nya in a sentence' do
        expect(react.should_react('some nya')).to be_truthy
        expect(react.should_react('nya some')).to be_truthy
      end

      it 'returns true when the message contains nya with multiple As' do
        expect(react.should_react('nyaaa')).to be_truthy
      end

      it 'returns false when the string "nya" appears in another word' do
        expect(react.should_react('somenya')).to be_falsey
        expect(react.should_react('nyasome')).to be_falsey
        expect(react.should_react('sonyame')).to be_falsey
      end
    end

    context 'with message nyah' do
      it 'returns nya emoji when the mesage contains only nyah' do
        expect(react.should_react('nyah')).to be_truthy
      end

      it 'returns nya emoji when the message contains nyah in a sentence' do
        expect(react.should_react('some nyah')).to be_truthy
        expect(react.should_react('nyah some')).to be_truthy
      end

      it 'returns nya emoji when the message contains nya with multiple As' do
        expect(react.should_react('nyaaah')).to be_truthy
      end

      it 'returns nothing when the string "nyah" appears in another word' do
        expect(react.should_react('somenyah')).to be_falsey
        expect(react.should_react('nyahsome')).to be_falsey
        expect(react.should_react('sonyahme')).to be_falsey
      end
    end

    context 'with message nyan' do
      it 'returns nya emoji when the mesage contains only nyan' do
        expect(react.should_react('nyan')).to be_truthy
      end

      it 'returns nya emoji when the message contains nyan in a sentence' do
        expect(react.should_react('some nyan')).to be_truthy
        expect(react.should_react('nyan some')).to be_truthy
      end

      it 'returns nya emoji when the message contains nyan with multiple As' do
        expect(react.should_react('nyaaan')).to be_truthy
      end

      it 'returns nothing when the string "nyah" appears in another word' do
        expect(react.should_react('somenyan')).to be_falsey
        expect(react.should_react('nyansome')).to be_falsey
        expect(react.should_react('sonyanme')).to be_falsey
      end
    end
  end

  describe 'Awoo React' do
    let(:react) { described_class.base_reactions[:awoo] }

    context 'with message awoo' do
      it 'returns awoo emoji when the message contains only awoo' do
        expect(react.should_react('awoo')).to be_truthy
      end

      it 'returns awoo emoji when the message contains awoo in a sentence' do
        expect(react.should_react('some awoo')).to be_truthy
        expect(react.should_react('awoo some')).to be_truthy
      end

      it 'returns awoo emoji when the message contains awoo with multiple Os' do
        expect(react.should_react('awoooo')).to be_truthy
      end

      it 'returns nothing when the string "awoo" appears in another word' do
        expect(react.should_react('someawoo')).to be_falsey
        expect(react.should_react('awoosome')).to be_falsey
        expect(react.should_react('soawoome')).to be_falsey
      end

      it 'returns nothing when "awo" appears with only one O' do
        expect(react.should_react('awo')).to be_falsey
        expect(react.should_react('some awo')).to be_falsey
        expect(react.should_react('awo some')).to be_falsey
      end
    end

    context 'with message awu' do
      it 'returns awoo emoji when the message contains only awu' do
        expect(react.should_react('awu')).to be_truthy
      end

      it 'returns awoo emoji when the message contains awu in a sentence' do
        expect(react.should_react('some awu')).to be_truthy
        expect(react.should_react('awu some')).to be_truthy
      end

      it 'returns awoo emoji when the message contains awoo with multiple Us' do
        expect(react.should_react('awuuu')).to be_truthy
      end

      it 'returns nothing when the string "awu" appears in another word' do
        expect(react.should_react('someawu')).to be_falsey
        expect(react.should_react('awusome')).to be_falsey
        expect(react.should_react('soawume')).to be_falsey
      end
    end
  end

  describe 'Arf React' do
    let(:react) { described_class.base_reactions[:arf] }

    context 'with message arf' do
      it 'returns arf emoji when the mesage contains only arf' do
        expect(react.should_react('arf')).to be_truthy
      end

      it 'returns arf emoji when the message contains arf in a sentence' do
        expect(react.should_react('some arf')).to be_truthy
        expect(react.should_react('arf some')).to be_truthy
      end

      it 'returns arf emoji when the message contains arf with multiple Fs' do
        expect(react.should_react('arfffff')).to be_truthy
      end

      it 'returns nothing when the string "arf" appears in another word' do
        expect(react.should_react('somearf')).to be_falsey
        expect(react.should_react('arfsome')).to be_falsey
        expect(react.should_react('soarfme')).to be_falsey
      end
    end
  end

  describe 'Train React' do
    let(:react) { described_class.base_reactions[:train] }

    context 'with message choo choo' do
      it 'returns train emoji when the mesage contains only choo choo with various spacings' do
        expect(react.should_react('choochoo')).to be_truthy
        expect(react.should_react('choo choo')).to be_truthy
        expect(react.should_react('choo  choo')).to be_truthy
      end

      it 'returns train emoji when the message contains choo choo in a sentence' do
        expect(react.should_react('some choo choo')).to be_truthy
        expect(react.should_react('choo choo some')).to be_truthy
      end

      it 'returns train emoji when the message contains train with multiple Os' do
        expect(react.should_react('chooo chooooo')).to be_truthy
      end

      it 'returns nothing when the string "choo" appears alone' do
        expect(react.should_react('choo')).to be_falsey
      end

      it 'returns nothing when the string appears between "choo choo"' do
        expect(react.should_react('choo some choo')).to be_falsey
      end

      it 'returns nothing when the string "choo choo" appears in another word' do
        expect(react.should_react('somechoo choo')).to be_falsey
        expect(react.should_react('choo choosome')).to be_falsey
        expect(react.should_react('sochoo choome')).to be_falsey
      end
    end
  end

  describe 'Bear React' do
    let(:react) { described_class.base_reactions[:bear] }

    context 'with message bear' do
      it 'returns bear emoji when the message contains only bear' do
        expect(react.should_react('bear')).to be_truthy
      end

      it 'returns bear emoji when the message bear in a sentence' do
        expect(react.should_react('some bear some')).to be_truthy
        expect(react.should_react('bear some some')).to be_truthy
        expect(react.should_react('some some bear')).to be_truthy
      end

      it 'returns bear emoji when the message contains bear with multiple Es and/or As' do
        expect(react.should_react('beeeaaaaaaaaaar')).to be_truthy
      end

      it 'returns nothing when the string "bear" is part of another word' do
        expect(react.should_react('unbearable')).to be_falsey
        expect(react.should_react('bearable')).to be_falsey
        expect(react.should_react('iamabear')).to be_falsey
      end
    end

    context 'with message beary' do
      it 'returns bear emoji when the message contains only beary' do
        expect(react.should_react('beary')).to be_truthy
      end

      it 'returns bear emoji when the message beary in a sentence' do
        expect(react.should_react('some beary some')).to be_truthy
        expect(react.should_react('beary some some')).to be_truthy
        expect(react.should_react('some some beary')).to be_truthy
      end

      it 'returns bear emoji when the message contains beary with multiple Es and/or As' do
        expect(react.should_react('beeeaaaaaaaaaary')).to be_truthy
      end

      it 'returns nothing when the string "bear" is part of another word' do
        expect(react.should_react('unbearyable')).to be_falsey
        expect(react.should_react('bearyable')).to be_falsey
        expect(react.should_react('iamabeary')).to be_falsey
      end
    end
  end

  describe 'Caw React' do
    let(:react) { described_class.base_reactions[:caw] }

    context 'with message caw' do
      it 'returns caw emoji when the message contains only caw' do
        expect(react.should_react('caw')).to be_truthy
      end

      it 'returns caw emoji when the message caw in a sentence' do
        expect(react.should_react('some caw some')).to be_truthy
        expect(react.should_react('caw some some')).to be_truthy
        expect(react.should_react('some some caw')).to be_truthy
      end

      it 'returns caw emoji when the message contains caw with multiple As and/or Ws' do
        expect(react.should_react('caaawwwwww')).to be_truthy
      end

      it 'returns nothing when the string "caw" is part of another word' do
        expect(react.should_react('socawme')).to be_falsey
        expect(react.should_react('cawsome')).to be_falsey
        expect(react.should_react('somecaw')).to be_falsey
      end
    end
  end

  describe 'Rat React' do
    let(:react) { described_class.base_reactions[:rat] }

    context 'with message squeak' do
      it 'returns rat emoji when the message contains only squeak' do
        expect(react.should_react('squeak')).to be_truthy
      end

      it 'returns rat emoji when the message squeak in a sentence' do
        expect(react.should_react('some squeak some')).to be_truthy
        expect(react.should_react('squeak some some')).to be_truthy
        expect(react.should_react('some some squeak')).to be_truthy
      end

      it 'returns rat emoji when the message contains squeak with multiple Es and/or As' do
        expect(react.should_react('squeeeeaaaaaak')).to be_truthy
      end

      it 'returns nothing when the string "squeak" is part of another word' do
        expect(react.should_react('sosqueakme')).to be_falsey
        expect(react.should_react('squeaksome')).to be_falsey
        expect(react.should_react('somesqueak')).to be_falsey
      end
    end
  end

  describe 'Cow React' do
    let(:react) { described_class.base_reactions[:cow] }

    context 'with message moo' do
      it 'returns cow emoji when the message contains only moo' do
        expect(react.should_react('moo')).to be_truthy
      end

      it 'returns cow emoji when the message moo in a sentence' do
        expect(react.should_react('some moo some')).to be_truthy
        expect(react.should_react('moo some some')).to be_truthy
        expect(react.should_react('some some moo')).to be_truthy
      end

      it 'returns cow emoji when the message contains moo with multiple Os' do
        expect(react.should_react('moooooo')).to be_truthy
      end

      it 'returns nothing when the string "moo" is part of another word' do
        expect(react.should_react('somoome')).to be_falsey
        expect(react.should_react('moosome')).to be_falsey
        expect(react.should_react('somemoo')).to be_falsey
      end
    end
  end

  describe 'Frog React' do
    let(:react) { described_class.base_reactions[:frog] }

    context 'with message ribbit' do
      it 'returns frog emoji when the message contains only ribbit' do
        expect(react.should_react('ribbit')).to be_truthy
      end

      it 'returns frog emoji when the message ribbit in a sentence' do
        expect(react.should_react('some ribbit some')).to be_truthy
        expect(react.should_react('ribbit some some')).to be_truthy
        expect(react.should_react('some some ribbit')).to be_truthy
      end

      it 'returns frog emoji when the message contains ribbit with multiple Is' do
        expect(react.should_react('riiiibbiiit')).to be_truthy
      end

      it 'returns nothing when the string "ribbit" is part of another word' do
        expect(react.should_react('soribbitme')).to be_falsey
        expect(react.should_react('ribbitsome')).to be_falsey
        expect(react.should_react('someribbit')).to be_falsey
      end
    end

    context 'with message croak' do
      it 'returns frog emoji when the message contains only croak' do
        expect(react.should_react('croak')).to be_truthy
      end

      it 'returns frog emoji when the message croak in a sentence' do
        expect(react.should_react('some croak some')).to be_truthy
        expect(react.should_react('croak some some')).to be_truthy
        expect(react.should_react('some some croak')).to be_truthy
      end

      it 'returns frog emoji when the message contains croak with multiple Os and As' do
        expect(react.should_react('croooaaak')).to be_truthy
      end

      it 'returns nothing when the string "croak" is part of another word' do
        expect(react.should_react('socroakme')).to be_falsey
        expect(react.should_react('croaksome')).to be_falsey
        expect(react.should_react('somecroak')).to be_falsey
      end
    end
  end

  describe 'Wooloo React' do
    let(:react) { described_class.base_reactions[:wooloo] }

    context 'with message wooloo' do
      it 'returns true when the mesage contains only wooloo' do
        expect(react.should_react('wooloo')).to be_truthy
      end

      it 'returns true when the message contains wooloo in a sentence' do
        expect(react.should_react('some wooloo')).to be_truthy
        expect(react.should_react('wooloo some')).to be_truthy
      end

      it 'returns true when the message contains wooloo with multiple Os' do
        expect(react.should_react('wooooolooooooo')).to be_truthy
        expect(react.should_react('woolooooooo')).to be_truthy
        expect(react.should_react('woooooloo')).to be_truthy
      end

      it 'returns false when the string "wooloo" appears in another word' do
        expect(react.should_react('somewooloo')).to be_falsey
        expect(react.should_react('wooloosome')).to be_falsey
        expect(react.should_react('sowooloome')).to be_falsey
      end

      it 'returns false the message contains wooloo with not enough Os' do
        expect(react.should_react('wolooooo')).to be_falsey
        expect(react.should_react('wolo')).to be_falsey
        expect(react.should_react('wooooolo')).to be_falsey
      end
    end
  end

  describe 'Moon React' do
    let(:react) { described_class.base_reactions[:moon] }

    context 'with message nini' do
      it 'returns true when the message contains only nini' do
        expect(react.should_react('nini')).to be_truthy
      end

      it 'returns true when the message contains nini in a sentence' do
        expect(react.should_react('some nini')).to be_truthy
        expect(react.should_react('nini some')).to be_truthy
      end

      it 'returns true when the message contains nini with extra nis' do
        expect(react.should_react('nininini')).to be_truthy
      end

      it 'returns false when the string "nini" appears in another word' do
        expect(react.should_react('somenini')).to be_falsey
        expect(react.should_react('ninisome')).to be_falsey
        expect(react.should_react('soninime')).to be_falsey
      end

      it 'returns false when the message contains only one ni' do
        expect(react.should_react('ni')).to be_falsey
      end
    end

    context "with message g'night" do
      it "returns true when the message contains only g'night" do
        expect(react.should_react("g'night")).to be_truthy
      end

      it "returns true when the message contains g'night in a sentence" do
        expect(react.should_react("some g'night")).to be_truthy
        expect(react.should_react("g'night some")).to be_truthy
      end

      it 'returns false when the string "g\'night" appears in another word' do
        expect(react.should_react("someg'night")).to be_falsey
        expect(react.should_react("g'nightsome")).to be_falsey
        expect(react.should_react("sog'nightme")).to be_falsey
      end
    end

    context 'with message good night' do
      it 'returns true when the message contains only good night' do
        expect(react.should_react('good night')).to be_truthy
      end

      it 'returns true when the message contains good night in a sentence' do
        expect(react.should_react('some good night')).to be_truthy
        expect(react.should_react('good night some')).to be_truthy
      end

      it 'returns false when the string "good night" appears in another word/phrase' do
        expect(react.should_react('somegood night')).to be_falsey
        expect(react.should_react('good nightsome')).to be_falsey
        expect(react.should_react('sogood nightme')).to be_falsey
      end
    end
  end
  describe 'Honk React' do
    let(:react) { described_class.base_reactions[:honk] }

    context 'with message honk' do
      it 'returns true when the mesage contains only honk' do
        expect(react.should_react('honk')).to be_truthy
      end

      it 'returns true when the message contains honk in a sentence' do
        expect(react.should_react('some honk')).to be_truthy
        expect(react.should_react('honk some')).to be_truthy
      end

      it 'returns true when the message contains honk with multiple Os' do
        expect(react.should_react('hoooonk')).to be_truthy
      end

      it 'returns false when the string "honk" appears in another word' do
        expect(react.should_react('somehonk')).to be_falsey
        expect(react.should_react('honksome')).to be_falsey
        expect(react.should_react('somehonksome')).to be_falsey
      end
    end
  end
end
