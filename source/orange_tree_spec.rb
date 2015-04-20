require_relative 'orange_tree'

describe OrangeTree do
  let(:tree) { OrangeTree.new }

  #You'll need to switch `pending` to `describe` when you're ready
  # to implement each set of tests.

  pending '#age' do
  end

  pending '#height' do
  end


  pending '#age!' do
    it 'should change the age' do
      #This should be more explicit. How much should the tree age by?
      #https://www.relishapp.com/rspec/rspec-expectations/v/2-0/docs/matchers/expect-change
      expect{tree.age!}.to change{tree.age}
    end

    it 'should make the tree grow' do
      #This should be more explicit. How much should the tree grow?
      expect{tree.age!}.to change{tree.height}
    end

    it 'should cause the tree to eventually die' do
    end
  end

  pending '#dead?' do
    it 'should return false for an alive tree' do
    end

    it 'should return true for a dead tree' do
    end
  end

  pending '#any_oranges?' do
    it 'should return true if oranges are on the tree' do
    end

    it 'should return false if the tree has no oranges' do
    end
  end

  pending '#pick_an_orange' do
    it 'should return an orange from the tree' do
    end
  end
end
