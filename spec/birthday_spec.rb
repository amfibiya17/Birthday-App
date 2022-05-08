require 'birthday'
require 'timecop'

describe Birthday do
  subject(:birthday) { Birthday.new(birthday_date) }
  let(:birthday_date) { '10/12/1986' }

  describe '#birthday date' do
    it 'sets a birthday date' do
      expect(birthday.birthday_date).to eq '10/12/1986'
    end

  end
  
  describe '#count' do
    it 'shows how many days until your birthday' do
      Timecop.freeze(Time.parse('08/05/2022')) do
        allow(birthday).to receive(:birthday_date).and_return('10/12/1986')
        expect(birthday.count).to eq 216
      end
    end
  end
end
