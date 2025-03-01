class DockerColorOutput < Formula
  desc "This package allows to colorize docker output"
  homepage "https://github.com/devemio/docker-color-output"
  url "https://github.com/devemio/docker-color-output/archive/refs/tags/2.6.0.tar.gz"
  sha256 "9258ac4543cba5aca14b4c0b661be9ccf3d64cbf5f9f0117833482c266833409"
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
