require "refile/spec_helper"
require "refile/s3"

WebMock.allow_net_connect!

config = {
  region: "sa-east-1",
  bucket: "my-bucket",
  prefix: "files"
}

RSpec.describe Refile::S3 do
  let(:backend) { Refile::S3.new(max_size: 100, **config) }

  it_behaves_like :backend
end
