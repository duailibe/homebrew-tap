class LinearCli < Formula
  desc "A fast, no-nonsense CLI for Linear"
  homepage "https://github.com/duailibe/linear-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/duailibe/linear-cli/releases/download/v#{version}/linear_#{version}_darwin_arm64.tar.gz"
      sha256 "dbc37e3b06d148b2f29b54f4fa6a85149965c371fcfdee4c07fe798096426c44"
    else
      url "https://github.com/duailibe/linear-cli/releases/download/v#{version}/linear_#{version}_darwin_amd64.tar.gz"
      sha256 "3afa296f5cabf00242f420ac403fc4732730a4309fbffbce702c3ede173ee6fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/duailibe/linear-cli/releases/download/v#{version}/linear_#{version}_linux_arm64.tar.gz"
      sha256 "ed6380f1d08a9ebfffdbef85c960780f496fa3830afea45c3cf50c1a803733ba"
    else
      url "https://github.com/duailibe/linear-cli/releases/download/v#{version}/linear_#{version}_linux_amd64.tar.gz"
      sha256 "926b118a828cc5144a232147b75ad906e29e5c95bc79c99e2c61970f89ff7d36"
    end
  end

  def install
    bin.install "linear"
  end

  test do
    assert_match "linear version", shell_output("#{bin}/linear --version")
  end
end
