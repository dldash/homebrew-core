class DockerColorOutput < Formula
  desc "This package allows to colorize the docker output"
  homepage "https://github.com/devemio/docker-color-output"
  url "https://github.com/devemio/docker-color-output/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "e36e44f7ed524cc5ea229055beda651d09dc9e6d7617712d148c565fb2b6a18e"
  license "MIT"

  depends_on "cmake" => :build
  depends_on "go" => :build

  def install
    system "make"
    mv "bin/dco-darwin-amd64", "docker-color-output"
    bin.install "docker-color-output"
  end

  test do
    system "false"
  end
end
