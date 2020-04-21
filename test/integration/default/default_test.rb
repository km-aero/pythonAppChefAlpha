# InSpec test for recipe pythonAppChefAlpha::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe package('python3.6') do
  it { should be_installed }
end

describe package('python3-pip') do
  it { should be_installed }
end

describe package('packer') do
  it { should be_installed }
end

describe package('chef') do
  it { should be_installed }
end

describe package('openjdk-8-jdk') do
  it { should be_installed }
end

describe package('openjdk-8-jre') do
  it { should be_installed }
end

describe file('/home/ubuntu/Downloads') do
  it { should exist }
  its('mode') { should cmp '0007' }
end

describe file('/home/jenkins') do
  it { should exist }
  its('mode') { should cmp '0731' }
end

describe file('/usr/local/lib/python3.6/dist-packages/certifi') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/idna') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/six.py') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/urllib3') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/requests') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/atomicwrites') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/bs4') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/importlib_metadata') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/more_itertools') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/packaging') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/pluggy') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/py') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/pyparsing.py') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/pytest.py') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/soupsieve') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/wcwidth') do
  it { should exist }
end

describe file('/usr/local/lib/python3.6/dist-packages/zipp.py') do
  it { should exist }
end
