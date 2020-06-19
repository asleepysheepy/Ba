# frozen_string_literal: true

require 'ba/models/emoji'

RSpec.describe Ba::Models::Emoji do
  let(:emoji) do
    described_class.new(
      emote: Ba::EmojiConfig::Emote::ALL[emoji_name],
      name: emoji_name,
      regex: Ba::EmojiConfig::Regex::ALL[emoji_name]
    )
  end

  describe 'Ba Emoji' do
    let(:emoji_name) { Ba::EmojiConfig::Names::BA }

    context 'with message ba' do
      it 'returns true when the mesage contains only ba' do
        expect(emoji).to be_should_react('ba')
      end

      it 'returns true when the message contains ba in a sentence' do
        expect(emoji).to be_should_react('some ba')
        expect(emoji).to be_should_react('ba some')
      end

      it 'returns true when the message contains ba with multiple As' do
        expect(emoji).to be_should_react('baaa')
      end

      it 'returns false when the string "ba" appears in another word' do
        expect(emoji).not_to be_should_react('someba')
        expect(emoji).not_to be_should_react('basome')
        expect(emoji).not_to be_should_react('sobame')
      end
    end
  end

  describe 'Nya emoji' do
    let(:emoji_name) { Ba::EmojiConfig::Names::NYA }

    context 'with message nya' do
      it 'returns true when the mesage contains only nya' do
        expect(emoji).to be_should_react('nya')
      end

      it 'returns true when the message contains nya in a sentence' do
        expect(emoji).to be_should_react('some nya')
        expect(emoji).to be_should_react('nya some')
      end

      it 'returns true when the message contains nya with multiple As' do
        expect(emoji).to be_should_react('nyaaa')
      end

      it 'returns false when the string "nya" appears in another word' do
        expect(emoji).not_to be_should_react('somenya')
        expect(emoji).not_to be_should_react('nyasome')
        expect(emoji).not_to be_should_react('sonyame')
      end
    end

    context 'with message nyah' do
      it 'returns nya emoji when the mesage contains only nyah' do
        expect(emoji).to be_should_react('nyah')
      end

      it 'returns nya emoji when the message contains nyah in a sentence' do
        expect(emoji).to be_should_react('some nyah')
        expect(emoji).to be_should_react('nyah some')
      end

      it 'returns nya emoji when the message contains nya with multiple As' do
        expect(emoji).to be_should_react('nyaaah')
      end

      it 'returns nothing when the string "nyah" appears in another word' do
        expect(emoji).not_to be_should_react('somenyah')
        expect(emoji).not_to be_should_react('nyahsome')
        expect(emoji).not_to be_should_react('sonyahme')
      end
    end

    context 'with message nyan' do
      it 'returns nya emoji when the mesage contains only nyan' do
        expect(emoji).to be_should_react('nyan')
      end

      it 'returns nya emoji when the message contains nyan in a sentence' do
        expect(emoji).to be_should_react('some nyan')
        expect(emoji).to be_should_react('nyan some')
      end

      it 'returns nya emoji when the message contains nyan with multiple As' do
        expect(emoji).to be_should_react('nyaaan')
      end

      it 'returns nothing when the string "nyah" appears in another word' do
        expect(emoji).not_to be_should_react('somenyan')
        expect(emoji).not_to be_should_react('nyansome')
        expect(emoji).not_to be_should_react('sonyanme')
      end
    end
  end

  describe 'Awoo emoji' do
    let(:emoji_name) { Ba::EmojiConfig::Names::AWOO }

    context 'with message awoo' do
      it 'returns awoo emoji when the message contains only awoo' do
        expect(emoji).to be_should_react('awoo')
      end

      it 'returns awoo emoji when the message contains awoo in a sentence' do
        expect(emoji).to be_should_react('some awoo')
        expect(emoji).to be_should_react('awoo some')
      end

      it 'returns awoo emoji when the message contains awoo with multiple Os' do
        expect(emoji).to be_should_react('awoooo')
      end

      it 'returns nothing when the string "awoo" appears in another word' do
        expect(emoji).not_to be_should_react('someawoo')
        expect(emoji).not_to be_should_react('awoosome')
        expect(emoji).not_to be_should_react('soawoome')
      end

      it 'returns nothing when "awo" appears with only one O' do
        expect(emoji).not_to be_should_react('awo')
        expect(emoji).not_to be_should_react('some awo')
        expect(emoji).not_to be_should_react('awo some')
      end
    end

    context 'with message awu' do
      it 'returns awoo emoji when the message contains only awu' do
        expect(emoji).to be_should_react('awu')
      end

      it 'returns awoo emoji when the message contains awu in a sentence' do
        expect(emoji).to be_should_react('some awu')
        expect(emoji).to be_should_react('awu some')
      end

      it 'returns awoo emoji when the message contains awoo with multiple Us' do
        expect(emoji).to be_should_react('awuuu')
      end

      it 'returns nothing when the string "awu" appears in another word' do
        expect(emoji).not_to be_should_react('someawu')
        expect(emoji).not_to be_should_react('awusome')
        expect(emoji).not_to be_should_react('soawume')
      end
    end
  end

  describe 'Arf emoji' do
    let(:emoji_name) { Ba::EmojiConfig::Names::ARF }

    context 'with message arf' do
      it 'returns arf emoji when the mesage contains only arf' do
        expect(emoji).to be_should_react('arf')
      end

      it 'returns arf emoji when the message contains arf in a sentence' do
        expect(emoji).to be_should_react('some arf')
        expect(emoji).to be_should_react('arf some')
      end

      it 'returns arf emoji when the message contains arf with multiple Fs' do
        expect(emoji).to be_should_react('arfffff')
      end

      it 'returns nothing when the string "arf" appears in another word' do
        expect(emoji).not_to be_should_react('somearf')
        expect(emoji).not_to be_should_react('arfsome')
        expect(emoji).not_to be_should_react('soarfme')
      end
    end
  end

  describe 'Train emoji' do
    let(:emoji_name) { Ba::EmojiConfig::Names::TRAIN }

    context 'with message choo choo' do
      it 'returns train emoji when the mesage contains only choo choo with various spacings' do
        expect(emoji).to be_should_react('choochoo')
        expect(emoji).to be_should_react('choo choo')
        expect(emoji).to be_should_react('choo  choo')
      end

      it 'returns train emoji when the message contains choo choo in a sentence' do
        expect(emoji).to be_should_react('some choo choo')
        expect(emoji).to be_should_react('choo choo some')
      end

      it 'returns train emoji when the message contains train with multiple Os' do
        expect(emoji).to be_should_react('chooo chooooo')
      end

      it 'returns nothing when the string "choo" appears alone' do
        expect(emoji).not_to be_should_react('choo')
      end

      it 'returns nothing when the string appears between "choo choo"' do
        expect(emoji).not_to be_should_react('choo some choo')
      end

      it 'returns nothing when the string "choo choo" appears in another word' do
        expect(emoji).not_to be_should_react('somechoo choo')
        expect(emoji).not_to be_should_react('choo choosome')
        expect(emoji).not_to be_should_react('sochoo choome')
      end
    end
  end

  describe 'Bear emoji' do
    let(:emoji_name) { Ba::EmojiConfig::Names::BEAR }

    context 'with message bear' do
      it 'returns bear emoji when the message contains only bear' do
        expect(emoji).to be_should_react('bear')
      end

      it 'returns bear emoji when the message bear in a sentence' do
        expect(emoji).to be_should_react('some bear some')
        expect(emoji).to be_should_react('bear some some')
        expect(emoji).to be_should_react('some some bear')
      end

      it 'returns bear emoji when the message contains bear with multiple Es and/or As' do
        expect(emoji).to be_should_react('beeeaaaaaaaaaar')
      end

      it 'returns nothing when the string "bear" is part of another word' do
        expect(emoji).not_to be_should_react('unbearable')
        expect(emoji).not_to be_should_react('bearable')
        expect(emoji).not_to be_should_react('iamabear')
      end
    end

    context 'with message beary' do
      it 'returns bear emoji when the message contains only beary' do
        expect(emoji).to be_should_react('beary')
      end

      it 'returns bear emoji when the message beary in a sentence' do
        expect(emoji).to be_should_react('some beary some')
        expect(emoji).to be_should_react('beary some some')
        expect(emoji).to be_should_react('some some beary')
      end

      it 'returns bear emoji when the message contains beary with multiple Es and/or As' do
        expect(emoji).to be_should_react('beeeaaaaaaaaaary')
      end

      it 'returns nothing when the string "bear" is part of another word' do
        expect(emoji).not_to be_should_react('unbearyable')
        expect(emoji).not_to be_should_react('bearyable')
        expect(emoji).not_to be_should_react('iamabeary')
      end
    end
  end

  describe 'Caw emoji' do
    let(:emoji_name) { Ba::EmojiConfig::Names::CAW }

    context 'with message caw' do
      it 'returns caw emoji when the message contains only caw' do
        expect(emoji).to be_should_react('caw')
      end

      it 'returns caw emoji when the message caw in a sentence' do
        expect(emoji).to be_should_react('some caw some')
        expect(emoji).to be_should_react('caw some some')
        expect(emoji).to be_should_react('some some caw')
      end

      it 'returns caw emoji when the message contains caw with multiple As and/or Ws' do
        expect(emoji).to be_should_react('caaawwwwww')
      end

      it 'returns nothing when the string "caw" is part of another word' do
        expect(emoji).not_to be_should_react('socawme')
        expect(emoji).not_to be_should_react('cawsome')
        expect(emoji).not_to be_should_react('somecaw')
      end
    end
  end

  describe 'Rat emoji' do
    let(:emoji_name) { Ba::EmojiConfig::Names::RAT }

    context 'with message squeak' do
      it 'returns rat emoji when the message contains only squeak' do
        expect(emoji).to be_should_react('squeak')
      end

      it 'returns rat emoji when the message squeak in a sentence' do
        expect(emoji).to be_should_react('some squeak some')
        expect(emoji).to be_should_react('squeak some some')
        expect(emoji).to be_should_react('some some squeak')
      end

      it 'returns rat emoji when the message contains squeak with multiple Es and/or As' do
        expect(emoji).to be_should_react('squeeeeaaaaaak')
      end

      it 'returns nothing when the string "squeak" is part of another word' do
        expect(emoji).not_to be_should_react('sosqueakme')
        expect(emoji).not_to be_should_react('squeaksome')
        expect(emoji).not_to be_should_react('somesqueak')
      end
    end
  end

  describe 'Cow emoji' do
    let(:emoji_name) { Ba::EmojiConfig::Names::COW }

    context 'with message moo' do
      it 'returns cow emoji when the message contains only moo' do
        expect(emoji).to be_should_react('moo')
      end

      it 'returns cow emoji when the message moo in a sentence' do
        expect(emoji).to be_should_react('some moo some')
        expect(emoji).to be_should_react('moo some some')
        expect(emoji).to be_should_react('some some moo')
      end

      it 'returns cow emoji when the message contains moo with multiple Os' do
        expect(emoji).to be_should_react('moooooo')
      end

      it 'returns nothing when the string "moo" is part of another word' do
        expect(emoji).not_to be_should_react('somoome')
        expect(emoji).not_to be_should_react('moosome')
        expect(emoji).not_to be_should_react('somemoo')
      end
    end
  end

  describe 'Frog emoji' do
    let(:emoji_name) { Ba::EmojiConfig::Names::FROG }

    context 'with message ribbit' do
      it 'returns frog emoji when the message contains only ribbit' do
        expect(emoji).to be_should_react('ribbit')
      end

      it 'returns frog emoji when the message ribbit in a sentence' do
        expect(emoji).to be_should_react('some ribbit some')
        expect(emoji).to be_should_react('ribbit some some')
        expect(emoji).to be_should_react('some some ribbit')
      end

      it 'returns frog emoji when the message contains ribbit with multiple Is' do
        expect(emoji).to be_should_react('riiiibbiiit')
      end

      it 'returns nothing when the string "ribbit" is part of another word' do
        expect(emoji).not_to be_should_react('soribbitme')
        expect(emoji).not_to be_should_react('ribbitsome')
        expect(emoji).not_to be_should_react('someribbit')
      end
    end

    context 'with message croak' do
      it 'returns frog emoji when the message contains only croak' do
        expect(emoji).to be_should_react('croak')
      end

      it 'returns frog emoji when the message croak in a sentence' do
        expect(emoji).to be_should_react('some croak some')
        expect(emoji).to be_should_react('croak some some')
        expect(emoji).to be_should_react('some some croak')
      end

      it 'returns frog emoji when the message contains croak with multiple Os and As' do
        expect(emoji).to be_should_react('croooaaak')
      end

      it 'returns nothing when the string "croak" is part of another word' do
        expect(emoji).not_to be_should_react('socroakme')
        expect(emoji).not_to be_should_react('croaksome')
        expect(emoji).not_to be_should_react('somecroak')
      end
    end
  end

  describe 'Wooloo emoji' do
    let(:emoji_name) { Ba::EmojiConfig::Names::WOOLOO }

    context 'with message wooloo' do
      it 'returns true when the mesage contains only wooloo' do
        expect(emoji).to be_should_react('wooloo')
      end

      it 'returns true when the message contains wooloo in a sentence' do
        expect(emoji).to be_should_react('some wooloo')
        expect(emoji).to be_should_react('wooloo some')
      end

      it 'returns true when the message contains wooloo with multiple Os' do
        expect(emoji).to be_should_react('wooooolooooooo')
        expect(emoji).to be_should_react('woolooooooo')
        expect(emoji).to be_should_react('woooooloo')
      end

      it 'returns false when the string "wooloo" appears in another word' do
        expect(emoji).not_to be_should_react('somewooloo')
        expect(emoji).not_to be_should_react('wooloosome')
        expect(emoji).not_to be_should_react('sowooloome')
      end

      it 'returns false the message contains wooloo with not enough Os' do
        expect(emoji).not_to be_should_react('wolooooo')
        expect(emoji).not_to be_should_react('wolo')
        expect(emoji).not_to be_should_react('wooooolo')
      end
    end
  end

  describe 'Moon emoji' do
    let(:emoji_name) { Ba::EmojiConfig::Names::MOON }

    context 'with message nini' do
      it 'returns true when the message contains only nini' do
        expect(emoji).to be_should_react('nini')
      end

      it 'returns true when the message contains nini in a sentence' do
        expect(emoji).to be_should_react('some nini')
        expect(emoji).to be_should_react('nini some')
      end

      it 'returns true when the message contains nini with extra nis' do
        expect(emoji).to be_should_react('nininini')
      end

      it 'returns false when the string "nini" appears in another word' do
        expect(emoji).not_to be_should_react('somenini')
        expect(emoji).not_to be_should_react('ninisome')
        expect(emoji).not_to be_should_react('soninime')
      end

      it 'returns false when the message contains only one ni' do
        expect(emoji).not_to be_should_react('ni')
      end
    end

    context "with message g'night" do
      it "returns true when the message contains only g'night" do
        expect(emoji).to be_should_react("g'night")
      end

      it "returns true when the message contains g'night in a sentence" do
        expect(emoji).to be_should_react("some g'night")
        expect(emoji).to be_should_react("g'night some")
      end

      it 'returns false when the string "g\'night" appears in another word' do
        expect(emoji).not_to be_should_react("someg'night")
        expect(emoji).not_to be_should_react("g'nightsome")
        expect(emoji).not_to be_should_react("sog'nightme")
      end
    end

    context 'with message good night' do
      it 'returns true when the message contains only good night' do
        expect(emoji).to be_should_react('good night')
      end

      it 'returns true when the message contains good night in a sentence' do
        expect(emoji).to be_should_react('some good night')
        expect(emoji).to be_should_react('good night some')
      end

      it 'returns false when the string "good night" appears in another word/phrase' do
        expect(emoji).not_to be_should_react('somegood night')
        expect(emoji).not_to be_should_react('good nightsome')
        expect(emoji).not_to be_should_react('sogood nightme')
      end
    end
  end

  describe 'Honk emoji' do
    let(:emoji_name) { Ba::EmojiConfig::Names::HONK }

    context 'with message honk' do
      it 'returns true when the mesage contains only honk' do
        expect(emoji).to be_should_react('honk')
      end

      it 'returns true when the message contains honk in a sentence' do
        expect(emoji).to be_should_react('some honk')
        expect(emoji).to be_should_react('honk some')
      end

      it 'returns true when the message contains honk with multiple Os' do
        expect(emoji).to be_should_react('hoooonk')
      end

      it 'returns false when the string "honk" appears in another word' do
        expect(emoji).not_to be_should_react('somehonk')
        expect(emoji).not_to be_should_react('honksome')
        expect(emoji).not_to be_should_react('somehonksome')
      end
    end
  end
end
