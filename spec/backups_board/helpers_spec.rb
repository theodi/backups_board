class TestHelper
  include BackupsBoard::Helpers
end

module BackupsBoard
  describe Helpers do
    let(:helpers) { TestHelper.new }
  end
end
