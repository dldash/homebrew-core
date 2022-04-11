class DockerColorOutput < Formula
  desc "This package allows to colorize the docker output"
  homepage "https://github.com/devemio/docker-color-output"
  url "https://github.com/devemio/docker-color-output/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "f0b09b798bcee1e495d1b3198c02a452e27e252123a741f9adb403ef4f836a2f"
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
