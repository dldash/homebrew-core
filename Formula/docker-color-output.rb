class DockerColorOutput < Formula
  desc "This package allows to colorize docker output"
  homepage "https://github.com/devemio/docker-color-output"
  url "https://github.com/devemio/docker-color-output/archive/refs/tags/2.6.1.tar.gz"
  sha256 "ba4d4935e6745ca8976e48f9c71ccd9978d8cc24a79a9048451df1c0b855f58d"
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
