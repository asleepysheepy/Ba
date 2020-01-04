# frozen_string_literal: true

RSpec.describe User, type: :model do
  describe 'from_omniauth' do
    context 'when the user does not exist' do
      let(:auth_hash) { build :user_auth_hash }
      let(:user) { described_class.from_omniauth auth_hash }

      it 'creates the user' do
        expect(user.provider).to eq auth_hash.provider
        expect(user.uid).to eq auth_hash.uid
        expect(user.avatar_hash).to eq auth_hash.extra['raw_info']['avatar']
        expect(user.discriminator).to eq auth_hash.extra['raw_info']['discriminator']
        expect(user.snowflake).to eq auth_hash.extra['raw_info']['id']
        expect(user.username).to eq auth_hash.extra['raw_info']['username']
      end
    end

    context 'when the user exists' do
      let(:user) { create :user }
      let(:auth_hash_raw_info) do
        {
          'avatar': user.avatar_hash,
          'discriminator': user.discriminator,
          'id': user.snowflake,
          'username': user.username
        }
      end
      let(:auth_hash) do
        OmniAuth::AuthHash.new(
          provider: user.provider,
          uid: user.uid,
          extra: { 'raw_info': auth_hash_raw_info }
        )
      end
      let(:found_user) { described_class.from_omniauth auth_hash }

      it 'returns the correct user' do
        expect(found_user.provider).to eq user.provider
        expect(found_user.uid).to eq user.uid
        expect(found_user.avatar_hash).to eq user.avatar_hash
        expect(found_user.discriminator).to eq user.discriminator
        expect(found_user.snowflake).to eq user.snowflake
        expect(found_user.username).to eq user.username
      end
    end
  end
end
