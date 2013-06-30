# encoding: utf-8
require File.join(File.dirname(__FILE__), '..', 'lib', 'datagrepper')

describe Datagrepper do
  before(:each) do
    @dg = Datagrepper.new
  end

  it 'lists messages over the past 7 days' do
    res = @dg.query :delta => 1.week, :user => ['codeblock', 'kevin', 'toshio', 'ralph']
    expect(res['raw_messages'].class).to eq(Array)
    expect(res['raw_messages'].length).to be > 0
    expect(res['raw_messages'].length).to be < 10000
    expect(res['raw_messages'].first['topic']).to start_with('org.fedoraproject.prod')
  end
end
