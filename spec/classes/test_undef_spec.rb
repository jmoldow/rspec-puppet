require 'spec_helper'

describe 'test_undef' do
  let(:title) { 'test_undef' }

  it { should compile.with_all_deps }

  shared_examples 'file /tmp/foo' do
    it { should contain_file('/tmp/foo').with_ensure(nil) }
  end

  context 'with ensure => nil' do
    let(:params) { { :ensure => nil } }
    include_examples 'file /tmp/foo'
  end

  context 'with params unset' do
    include_examples 'file /tmp/foo'
  end
end
