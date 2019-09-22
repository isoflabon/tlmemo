require 'rails_helper'

RSpec.describe Page, type: :model do
  describe 'Page.create' do
    let(:folder) { create(:folder) }

    context 'valid params' do
      it 'is true' do
        page = Page.new(folder_id: folder.id)

        expect(page.save).to be true
      end
    end
  end
end
