require_relative 'orange_tree'

describe OrangeTree do
  let(:tree) { OrangeTree.new }
  let(:tree3) { OrangeTree.new }
  #You'll need to switch `pending` to `describe` when you're ready
  # to implement each set of tests.

  describe '#age' do
    it 'should return age of tree' do
      expect(tree.age).to eq (0)
    end
  end

  describe '#height' do
    before (:each) do
      5.times { |i| tree.age! }
    end
    it 'aging should increment height' do
      expect(tree.height).to be < 50
    end
  end


  describe '#age!' do
    it 'should change the age' do
      #This should be more explicit. How much should the tree age by?
      #https://www.relishapp.com/rspec/rspec-expectations/v/2-0/docs/matchers/expect-change
      expect { tree.age! }.to change { tree.age }.by(1)
    end

    it 'should make the tree grow' do
      #This should be more explicit. How much should the tree grow?
      expect { tree.age! }.to change { tree.height }
    end


    it 'should cause the tree to eventually die' do
    end
  end

  describe '#dead?' do
    it 'should return false for an alive tree' do
      expect(tree.dead?).to eq(false)
    end


    it 'should return true for a dead tree' do
      200.times { |i| tree.age! }
      expect(tree.dead?).to eq(true)
    end
  end

   describe '#any_oranges?' do
    it 'should return true if oranges are on the tree' do
      10.times { |i| tree3.age! }
      expect(tree3.any_oranges?).to eq(true)
    end

    it 'should return false if the tree has no oranges' do
      while tree.any_oranges?
        tree.pick_an_orange!
      end
      expect(tree.any_oranges?).to eq(false)
    end
   end

   describe 'pick_an_orange' do
     let(:tree2) {OrangeTree.new}
    it 'should return an orange from the tree' do

      10.times {tree2.age!}
       expect(tree2.pick_an_orange!).to be_an_instance_of(Orange)
    end
  end
end
