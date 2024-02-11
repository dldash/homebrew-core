class DockerColorOutput < Formula
  desc "This package allows to colorize the docker output"
  homepage "https://github.com/devemio/docker-color-output"
  url "https://github.com/devemio/docker-color-output/archive/refs/tags/2.5.1.tar.gz"
  sha256 "fbc33a3280c4ac3676a1c1cfa625d8b48928416a88b40d13b72330dc6ee7076c"
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
