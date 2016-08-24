class TestHelper
  include BackupsBoard::Helpers
end

module BackupsBoard
  describe Helpers do
    let(:helpers) { TestHelper.new }

    it 'strips a repo name' do
      expect(helpers.strip_name 'theodi/backups-foo-bar').to eq 'foo-bar'
    end
  end
end
