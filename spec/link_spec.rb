require 'spec_helper'

describe Link do
  context 'Demonstration of how datamapper works' do

    it 'should be created and then retrieved from the db' do
      puts Link.count
      expect(Link.count).to eq(0)
      Link.create(title: 'Makers Academy',
                  url: 'http://www.makersacademy.com/')
      puts Link.inspect
      expect(Link.count).to eq(1)
      puts "*"*20
      puts Link.count
      link = Link.first
      expect(link.url).to eq('http://www.makersacademy.com/')
      expect(link.title).to eq('Makers Academy')
      link.destroy
      puts "=" * 10
      puts Link.count
      expect(Link.count).to eq(0)
    end
  end
end
