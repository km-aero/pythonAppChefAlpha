#
# Cookbook:: pythonAppChefAlpha
# Spec:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'pythonAppChefAlpha::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'updates the sources list' do
      expect(chef_run).to update_apt_update('update_sources')
    end

    it 'installs pip3' do
      expect(chef_run).to install_package('python3-pip')
    end

    it 'installs packer' do
      expect(chef_run).to install_package('packer')
    end

    it 'installs chef' do
      expect(chef_run).to install_package('chef')
    end

    it 'creates the Downloads folder with the correct permissions' do
      expect(chef_run).to create_directory('/home/ubuntu/Downloads').with(mode: '0007')
    end

    it 'creates the jenkins folder with the correct permissions' do
      expect(chef_run).to create_directory('/home/jenkins').with(mode: '0731')
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
