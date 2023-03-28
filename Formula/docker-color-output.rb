class DockerColorOutput < Formula
  desc "This package allows to colorize the docker output"
  homepage "https://github.com/devemio/docker-color-output"
  url "https://github.com/devemio/docker-color-output/archive/refs/tags/2.3.0.tar.gz"
  sha256 "a9dfd933553011043067403782c2bc55afc768fae5538c947e67a2738ac1ea86"
  license "MIT"

  depends_on "cmake" => :build
  depends_on "go" => :build

  def install
    system "make"
    mv "bin/docker-color-output", "docker-color-output"
    bin.install "docker-color-output"
  end

  test do
    system "false"
  end
end
