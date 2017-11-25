RSpec.describe SphynxGrape::Api do
  include Rack::Test::Methods

  def app
    SphynxGrape::Api
  end

  describe 'GET /' do
    it 'should return a 204 response' do
      get('/')
      expect(last_response).to be_successful
      expect(last_response.status).to be(204)
    end
  end

  describe 'GET /protected' do
    context 'when the user is authenticated' do
      let(:token) { Warden::JWTAuth::UserEncoder.new.call(SphynxGrape::User.new, :user) }

      it 'should return a 204 response' do
        header('Authorization', "Bearer #{token}")
        get('/protected')

        user = {
          'id' => 1,
          'first_name' => 'John',
          'last_name' => 'Doe'
        }

        expect(last_response).to be_successful
        expect(last_response.status).to be(200)
        expect(JSON.parse(last_response.body)).to eq(user)
      end
    end

    context 'when the user is not authenticated' do
      it 'should return a 401 response' do
        header('Authorization', 'Bearer bad_token')
        get('/protected')

        expect(last_response).to be_unauthorized
        expect(last_response.status).to be(401)
      end
    end
  end
end
