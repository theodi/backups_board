class TestHelper
  include BackupsBoard::Helpers
end

module BackupsBoard
  describe Helpers do
    let(:helpers) { TestHelper.new }

    it 'says hello' do
      expect(helpers.hello).to eq 'Hello'
    end
  end
end
