# frozen_string_literal: true

require 'ba/ba_support/reaction'

RSpec.describe Ba::BaSupport::Reaction do
  describe 'Ba React' do
    let(:react) { described_class.new name: :ba, emoji: '🐑', regex: /\bba+\b/ }

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
    let(:react) { described_class.new name: :nya, emoji: 'nya:434511854505558019', regex: /\bnya+[hn]?\b/ }

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
    let(:react) { described_class.new name: :awoo, emoji: 'awoo:434500209012375553', regex: /\baw(u+|oo+)\b/ }

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
    let(:react) { described_class.new name: :arf, emoji: 'arf:446677431160668161', regex: /\barf+\b/ }

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
    let(:react) { described_class.new name: :train, emoji: '🚄', regex: /\b(choo+\s*choo+)\b/ }

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
    let(:react) { described_class.new name: :bear, emoji: '🐻', regex: /\bbe+a+ry?\b/ }

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
    let(:react) { described_class.new name: :caw, emoji: 'caw:522999846043648010', regex: /\bca+w+\b/ }

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
end
