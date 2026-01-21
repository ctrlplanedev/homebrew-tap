# typed: false
# frozen_string_literal: true

class Ctrlc < Formula
  desc "CLI tool for Ctrlplane - deployment orchestration platform"
  homepage "https://github.com/ctrlplanedev/cli"
  version "0.15.13"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ctrlplanedev/cli/releases/download/v#{version}/ctrlc_Darwin_x86_64.tar.gz"
      sha256 "690b59931faa66ca7b6ce341f5a12775252eab8d800d839ab446a6061b073267"
    end

    on_arm do
      url "https://github.com/ctrlplanedev/cli/releases/download/v#{version}/ctrlc_Darwin_arm64.tar.gz"
      sha256 "6b6dd651d4d85dcc76066cec86e3a2644e5e51ac01cc7bfadfaba7baeb3c2f01"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctrlplanedev/cli/releases/download/v#{version}/ctrlc_Linux_x86_64.tar.gz"
      sha256 "01d99dcba79dc092b90c576343fe7f773772cd23a7c4aff5903bebeeedb21924"
    end

    on_arm do
      url "https://github.com/ctrlplanedev/cli/releases/download/v#{version}/ctrlc_Linux_arm64.tar.gz"
      sha256 "d3eaa6101e9af3a86dcd98671ba47156b18b8fc7f8ca6a1e6b32bfd450f569ce"
    end
  end

  def install
    bin.install "ctrlc"
  end

  test do
    system "#{bin}/ctrlc", "--version"
  end
end

