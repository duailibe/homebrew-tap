class LinearCli < Formula
  desc "A fast, no-nonsense CLI for Linear"
  homepage "https://github.com/duailibe/linear-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/duailibe/linear-cli/releases/download/v#{version}/linear_#{version}_darwin_arm64.tar.gz"
      sha256 "9eee8b559153367c0251cc27e61f8d1389253ad2e565bdb34c85e5afe09658a7"
    else
      url "https://github.com/duailibe/linear-cli/releases/download/v#{version}/linear_#{version}_darwin_amd64.tar.gz"
      sha256 "a9305285f18c845a9a18652e48a326df91850d952e7d59c56a3990960f36c7e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/duailibe/linear-cli/releases/download/v#{version}/linear_#{version}_linux_arm64.tar.gz"
      sha256 "228814b76d7f095ad4e282be9a217a368c4d72b72c1618f88aee5dcb1feb906b"
    else
      url "https://github.com/duailibe/linear-cli/releases/download/v#{version}/linear_#{version}_linux_amd64.tar.gz"
      sha256 "c092b384260ede67a0a5c6e80d98a949ce37de75377ea56268735251bccad231"
    end
  end

  def install
    bin.install "linear"
  end

  test do
    assert_match "linear version", shell_output("#{bin}/linear --version")
  end
end
