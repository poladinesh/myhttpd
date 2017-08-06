#
# Cookbook:: myhttpd
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

=begin
describe 'myhttpd::default' do
  context 'When all attributes are default, on an Ubuntu 16.04' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
=end

describe 'myhttpd::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end


    it 'installs the correct package' do
      expect(chef_run).to install_package('httpd')
    end

    it 'creates an motd file' do
      expect(chef_run).to create_template('/etc/motd')
    end

    it 'starts the service' do
      expect(chef_run).to start_service('httpd')
    end

    it 'enables the service' do
      expect(chef_run).to enable_service('httpd')
    end
  end
end
