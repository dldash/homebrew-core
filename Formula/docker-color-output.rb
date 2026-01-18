class DockerColorOutput < Formula
  desc "This package allows to colorize docker output"
  homepage "https://github.com/devemio/docker-color-output"
  url "https://github.com/devemio/docker-color-output/archive/refs/tags/v3.0.0.tar.gz"
  sha256 "f3cad11d729caebc7b68dd6794be9b3f4fc0cbd4d050548d4558f4cd509f4cc2"
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
