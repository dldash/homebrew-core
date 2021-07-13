class DockerColorOutput < Formula
  desc "This package allows to colorize the docker output"
  homepage "https://github.com/devemio/docker-color-output"
  url "https://github.com/devemio/docker-color-output/archive/refs/tags/v2.0.1.tar.gz"
  sha256 "00f60bfd1a4d46b4717a7697742f4c27af180b050dda3c2720bac26e067c715f"
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
