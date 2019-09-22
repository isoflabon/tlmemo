require 'rails_helper'

RSpec.describe Card, type: :model do
  describe 'Card.create' do
    let(:page) { create(:page) }

    context 'valid params' do
      it 'is true' do
        card = Card.new(content: 'test content', page_id: page.id)

        expect(card.save).to be true
      end
    end

    context 'blank content' do
      it 'is false' do
        card = Card.new(content: '', page_id: page.id)

        expect(card.save).to be false
      end
    end
  end
end
