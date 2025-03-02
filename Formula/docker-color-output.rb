class DockerColorOutput < Formula
  desc "This package allows to colorize docker output"
  homepage "https://github.com/devemio/docker-color-output"
  url "https://github.com/devemio/docker-color-output/archive/refs/tags/2.6.1.tar.gz"
  sha256 "af0bd41925aa7313967944a41eee733d319fc216dc58398fd68aa6c424a94e16"
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
