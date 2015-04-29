require 'spec_helper'

describe 'undef' do
  it { should compile.with_all_deps }

  shared_examples 'exec echo' do
    it { should contain_exec('/bin/echo foo').with_user(nil).with_user(:undef) }
  end

  context 'with user => nil' do
    let(:params) { { :user => nil } }
    include_example 'exec echo'
  end

  context 'with user => :undef' do
    let(:params) { { :user => :undef } }
    include_example 'exec echo'
  end

  context 'with params unset' do
    include_example 'exec echo'
  end
end
