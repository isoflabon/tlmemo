require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User.create' do
    context 'valid params' do
      it 'is true' do
        user = User.new(email: 'testuser@example.com', password: '123456', password_confirmation: '123456')

        expect(user.save).to be true
      end
    end

    context 'password is less than 6 chars' do
      it 'is false' do
        user = User.new(email: 'testuser@example.com', password: '12345', password_confirmation: '12345')

        expect(user.save).to be false
      end
    end

    context 'password is defferent to password_confirmation' do
      it 'is false' do
        user = User.new(email: 'testuser@example.com', password: '123456', password_confirmation: '123450')

        expect(user.save).to be false
      end
    end
  end
end
