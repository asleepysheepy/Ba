# frozen_string_literal: true

require 'ba/ba_helpers'

RSpec.describe Ba::BaHelpers do
  let(:ba_emoji) { '🐑' }
  let(:nya_emoji) { 'nya:434511854505558019' }
  let(:awoo_emoji) { 'awoo:434500209012375553' }
  let(:train_emoji) { '🚄' }
  let(:arf_emoji) { 'arf:446677431160668161' }
  let(:bear_emoji) { '🐻' }

  describe 'get_message_reactions' do
    context 'with message ba' do
      it 'returns ba emoji when the mesage contains only ba' do
        expect(described_class.get_message_reactions('ba')).to include(ba_emoji)
      end

      it 'returns ba emoji when the message contains ba in a sentence' do
        expect(described_class.get_message_reactions('some ba')).to include(ba_emoji)
        expect(described_class.get_message_reactions('ba some')).to include(ba_emoji)
      end

      it 'returns ba emoji when the message contains ba with multiple As' do
        expect(described_class.get_message_reactions('baaa')).to include(ba_emoji)
      end

      it 'returns nothing when the string "ba" appears in another word' do
        expect(described_class.get_message_reactions('someba')).not_to include(ba_emoji)
        expect(described_class.get_message_reactions('basome')).not_to include(ba_emoji)
        expect(described_class.get_message_reactions('sobame')).not_to include(ba_emoji)
      end
    end

    context 'with message nya' do
      it 'returns nya emoji when the mesage contains only nya' do
        expect(described_class.get_message_reactions('nya')).to include(nya_emoji)
      end

      it 'returns nya emoji when the message contains nya in a sentence' do
        expect(described_class.get_message_reactions('some nya')).to include(nya_emoji)
        expect(described_class.get_message_reactions('nya some')).to include(nya_emoji)
      end

      it 'returns nya emoji when the message contains nya with multiple As' do
        expect(described_class.get_message_reactions('nyaaa')).to include(nya_emoji)
      end

      it 'returns nothing when the string "nya" appears in another word' do
        expect(described_class.get_message_reactions('somenya')).not_to include(nya_emoji)
        expect(described_class.get_message_reactions('nyasome')).not_to include(nya_emoji)
        expect(described_class.get_message_reactions('sonyame')).not_to include(nya_emoji)
      end
    end

    context 'with message nyah' do
      it 'returns nya emoji when the mesage contains only nyah' do
        expect(described_class.get_message_reactions('nyah')).to include(nya_emoji)
      end

      it 'returns nya emoji when the message contains nyah in a sentence' do
        expect(described_class.get_message_reactions('some nyah')).to include(nya_emoji)
        expect(described_class.get_message_reactions('nyah some')).to include(nya_emoji)
      end

      it 'returns nya emoji when the message contains nya with multiple As' do
        expect(described_class.get_message_reactions('nyaaah')).to include(nya_emoji)
      end

      it 'returns nothing when the string "nyah" appears in another word' do
        expect(described_class.get_message_reactions('somenyah')).not_to include(nya_emoji)
        expect(described_class.get_message_reactions('nyahsome')).not_to include(nya_emoji)
        expect(described_class.get_message_reactions('sonyahme')).not_to include(nya_emoji)
      end
    end

    context 'with message nyan' do
      it 'returns nya emoji when the mesage contains only nyan' do
        expect(described_class.get_message_reactions('nyan')).to include(nya_emoji)
      end

      it 'returns nya emoji when the message contains nyan in a sentence' do
        expect(described_class.get_message_reactions('some nyan')).to include(nya_emoji)
        expect(described_class.get_message_reactions('nyan some')).to include(nya_emoji)
      end

      it 'returns nya emoji when the message contains nyan with multiple As' do
        expect(described_class.get_message_reactions('nyaaan')).to include(nya_emoji)
      end

      it 'returns nothing when the string "nyah" appears in another word' do
        expect(described_class.get_message_reactions('somenyan')).not_to include(nya_emoji)
        expect(described_class.get_message_reactions('nyansome')).not_to include(nya_emoji)
        expect(described_class.get_message_reactions('sonyanme')).not_to include(nya_emoji)
      end
    end

    context 'with message awoo' do
      it 'returns awoo emoji when the message contains only awoo' do
        expect(described_class.get_message_reactions('awoo')).to include(awoo_emoji)
      end

      it 'returns awoo emoji when the message contains awoo in a sentence' do
        expect(described_class.get_message_reactions('some awoo')).to include(awoo_emoji)
        expect(described_class.get_message_reactions('awoo some')).to include(awoo_emoji)
      end

      it 'returns awoo emoji when the message contains awoo with multiple Os' do
        expect(described_class.get_message_reactions('awoooo')).to include(awoo_emoji)
      end

      it 'returns nothing when the string "awoo" appears in another word' do
        expect(described_class.get_message_reactions('someawoo')).not_to include(awoo_emoji)
        expect(described_class.get_message_reactions('awoosome')).not_to include(awoo_emoji)
        expect(described_class.get_message_reactions('soawoome')).not_to include(awoo_emoji)
      end

      it 'returns nothing when "awo" appears with only one O' do
        expect(described_class.get_message_reactions('awo')).not_to include(awoo_emoji)
        expect(described_class.get_message_reactions('some awo')).not_to include(awoo_emoji)
        expect(described_class.get_message_reactions('awo some')).not_to include(awoo_emoji)
      end
    end

    context 'with message awu' do
      it 'returns awoo emoji when the message contains only awu' do
        expect(described_class.get_message_reactions('awu')).to include(awoo_emoji)
      end

      it 'returns awoo emoji when the message contains awu in a sentence' do
        expect(described_class.get_message_reactions('some awu')).to include(awoo_emoji)
        expect(described_class.get_message_reactions('awu some')).to include(awoo_emoji)
      end

      it 'returns awoo emoji when the message contains awoo with multiple Us' do
        expect(described_class.get_message_reactions('awuuu')).to include(awoo_emoji)
      end

      it 'returns nothing when the string "awu" appears in another word' do
        expect(described_class.get_message_reactions('someawu')).not_to include(awoo_emoji)
        expect(described_class.get_message_reactions('awusome')).not_to include(awoo_emoji)
        expect(described_class.get_message_reactions('soawume')).not_to include(awoo_emoji)
      end
    end

    context 'with message train' do
      it 'returns train emoji when the mesage contains only train' do
        expect(described_class.get_message_reactions('train')).to include(train_emoji)
      end

      it 'returns train emoji when the message contains train in a sentence' do
        expect(described_class.get_message_reactions('some train')).to include(train_emoji)
        expect(described_class.get_message_reactions('train some')).to include(train_emoji)
      end

      it 'returns train emoji when the message contains train with multiple As' do
        expect(described_class.get_message_reactions('traaaain')).to include(train_emoji)
      end

      it 'returns nothing when the string "train" appears in another word' do
        expect(described_class.get_message_reactions('sometrain')).not_to include(train_emoji)
        expect(described_class.get_message_reactions('trainsome')).not_to include(train_emoji)
        expect(described_class.get_message_reactions('sotrainme')).not_to include(train_emoji)
      end
    end

    context 'with message arf' do
      it 'returns arf emoji when the mesage contains only arf' do
        expect(described_class.get_message_reactions('arf')).to include(arf_emoji)
      end

      it 'returns arf emoji when the message contains arf in a sentence' do
        expect(described_class.get_message_reactions('some arf')).to include(arf_emoji)
        expect(described_class.get_message_reactions('arf some')).to include(arf_emoji)
      end

      it 'returns arf emoji when the message contains arf with multiple Fs' do
        expect(described_class.get_message_reactions('arfffff')).to include(arf_emoji)
      end

      it 'returns nothing when the string "arf" appears in another word' do
        expect(described_class.get_message_reactions('somearf')).not_to include(arf_emoji)
        expect(described_class.get_message_reactions('arfsome')).not_to include(arf_emoji)
        expect(described_class.get_message_reactions('soarfme')).not_to include(arf_emoji)
      end
    end

    context 'with message choo choo' do
      it 'returns train emoji when the mesage contains only choo choo with various spacings' do
        expect(described_class.get_message_reactions('choochoo')).to include(train_emoji)
        expect(described_class.get_message_reactions('choo choo')).to include(train_emoji)
        expect(described_class.get_message_reactions('choo  choo')).to include(train_emoji)
      end

      it 'returns train emoji when the message contains choo choo in a sentence' do
        expect(described_class.get_message_reactions('some choo choo')).to include(train_emoji)
        expect(described_class.get_message_reactions('choo choo some')).to include(train_emoji)
      end

      it 'returns train emoji when the message contains train with multiple Os' do
        expect(described_class.get_message_reactions('chooo chooooo')).to include(train_emoji)
      end

      it 'returns nothing when the string "choo" appears alone' do
        expect(described_class.get_message_reactions('choo')).not_to include(train_emoji)
      end

      it 'returns nothing when the string appears between "choo choo"' do
        expect(described_class.get_message_reactions('choo some choo')).not_to include(train_emoji)
      end

      it 'returns nothing when the string "choo choo" appears in another word' do
        expect(described_class.get_message_reactions('somechoo choo')).not_to include(train_emoji)
        expect(described_class.get_message_reactions('choo choosome')).not_to include(train_emoji)
        expect(described_class.get_message_reactions('sochoo choome')).not_to include(train_emoji)
      end
    end

    context 'with message bear' do
      it 'returns bear emoji when the message contains only bear' do
        expect(described_class.get_message_reactions('bear')).to include(bear_emoji)
      end

      it 'returns bear emoji when the message bear in a sentence' do
        expect(described_class.get_message_reactions('some bear some')).to include(bear_emoji)
        expect(described_class.get_message_reactions('bear some some')).to include(bear_emoji)
        expect(described_class.get_message_reactions('some some bear')).to include(bear_emoji)
      end

      it 'returns bear emoji when the message contains bear with multiple Es and/or As' do
        expect(described_class.get_message_reactions('beeeaaaaaaaaaar')).to include(bear_emoji)
      end

      it 'returns nothing when the string "bear" is part of another word' do
        expect(described_class.get_message_reactions('unbearable')).not_to include(bear_emoji)
        expect(described_class.get_message_reactions('bearable')).not_to include(bear_emoji)
        expect(described_class.get_message_reactions('iamabear')).not_to include(bear_emoji)
      end
    end

    context 'with message beary' do
      it 'returns bear emoji when the message contains only beary' do
        expect(described_class.get_message_reactions('beary')).to include(bear_emoji)
      end

      it 'returns bear emoji when the message beary in a sentence' do
        expect(described_class.get_message_reactions('some beary some')).to include(bear_emoji)
        expect(described_class.get_message_reactions('beary some some')).to include(bear_emoji)
        expect(described_class.get_message_reactions('some some beary')).to include(bear_emoji)
      end

      it 'returns bear emoji when the message contains beary with multiple Es and/or As' do
        expect(described_class.get_message_reactions('beeeaaaaaaaaaary')).to include(bear_emoji)
      end

      it 'returns nothing when the string "bear" is part of another word' do
        expect(described_class.get_message_reactions('unbearyable')).not_to include(bear_emoji)
        expect(described_class.get_message_reactions('bearyable')).not_to include(bear_emoji)
        expect(described_class.get_message_reactions('iamabeary')).not_to include(bear_emoji)
      end
    end
  end
end
