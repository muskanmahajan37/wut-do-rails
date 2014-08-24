require 'rails_helper'

describe Task do
  it { should validate_presence_of :name }

  describe '#done' do
    it 'should return completed tasks' do
      task1 = Task.create(name: 'Empty trash', done: true)
      task2 = Task.create(name: 'Go to Mars', done: false)
      expect(Task.done).to eq [task1]
    end
  end
end
