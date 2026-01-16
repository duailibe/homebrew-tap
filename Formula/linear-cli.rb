class LinearCli < Formula
  desc "A fast, no-nonsense CLI for Linear"
  homepage "https://github.com/duailibe/linear-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/duailibe/linear-cli/releases/download/v#{version}/linear_#{version}_darwin_arm64.tar.gz"
      sha256 "ef917aa6f155e31cb09abb147db4fbeab8ddf09f19f8a76c0956b9161f933614"
    else
      url "https://github.com/duailibe/linear-cli/releases/download/v#{version}/linear_#{version}_darwin_amd64.tar.gz"
      sha256 "383c9a5f5a69860cd471bd71ce5d4d383ef21970a08c16fa6b7402a09de9af43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/duailibe/linear-cli/releases/download/v#{version}/linear_#{version}_linux_arm64.tar.gz"
      sha256 "2c1bfc9cfcf2c01e401e467387417407473cdae032286d76d6213dad481c0a83"
    else
      url "https://github.com/duailibe/linear-cli/releases/download/v#{version}/linear_#{version}_linux_amd64.tar.gz"
      sha256 "1c8899f1c000727b97c8526b1d6e1216d594196f778c4557d2b8314aed52ac70"
    end
  end

  def install
    bin.install "linear"
  end

  test do
    assert_match "linear version", shell_output("#{bin}/linear --version")
  end
end
