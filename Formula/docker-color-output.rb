class DockerColorOutput < Formula
  desc "This package allows to colorize docker output"
  homepage "https://github.com/devemio/docker-color-output"
  url "https://github.com/devemio/docker-color-output/archive/refs/tags/v3.0.1.tar.gz"
  sha256 "12bfdbfcccf493e8e8f89ddfe89a4de99c97c9283c1fd3172c423295efdf1d0c"
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
