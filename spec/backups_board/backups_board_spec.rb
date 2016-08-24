module BackupsBoard
  describe App do
    it 'says hello' do
      get '/'
      expect(last_response).to be_ok
      expect(last_response.body).to match /Backup Status/
    end
  end
end
