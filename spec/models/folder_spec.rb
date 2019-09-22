require 'rails_helper'

RSpec.describe Folder, type: :model do
  describe 'Folder.create' do
    let(:u) { create(:user) }

    context 'valid params' do
      it 'is true' do
        folder = Folder.new(name: 'folder', user_id: u.id)

        expect(folder.save).to be true
      end
    end

    context 'blank name' do
      it 'is false' do
        folder = Folder.new(name: '', user_id: u.id)

        expect(folder.save).to be false
      end
    end

    context 'not uniq name' do
      let(:folder) { create(:folder) }

      it 'is false' do
        not_uniq_name = folder.name
        f = Folder.new(name: not_uniq_name, user_id: u.id)

        expect(f.save).to be false
      end
    end
  end
end
