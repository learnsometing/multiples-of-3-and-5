# frozen_string_literal: true

require './sum_multiples_of_3_and_5.rb'

describe 'sum_multiples_of_3_and_5' do
  it 'should return 0 for inputs less than three' do
    expect(sum_multiples_of_3_and_5(-1)).to eq(0)
    expect(sum_multiples_of_3_and_5(2)).to eq(0)
  end

  specify { expect(sum_multiples_of_3_and_5(1000)).to eq(233_168) }
end
