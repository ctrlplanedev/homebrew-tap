# typed: false
# frozen_string_literal: true

class Ctrlc < Formula
  desc "CLI tool for Ctrlplane - deployment orchestration platform"
  homepage "https://github.com/ctrlplanedev/cli"
  version "0.15.19"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ctrlplanedev/cli/releases/download/v#{version}/ctrlc_Darwin_x86_64.tar.gz"
      sha256 "75108ea295ab1f40865644b9eed88a020f00d2c8297a1e6bf185e27248749953"
    end

    on_arm do
      url "https://github.com/ctrlplanedev/cli/releases/download/v#{version}/ctrlc_Darwin_arm64.tar.gz"
      sha256 "ef092095ec99fd9dc411f90edcbac1a4d15e3990aa13f76bb20ef7e393c475af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctrlplanedev/cli/releases/download/v#{version}/ctrlc_Linux_x86_64.tar.gz"
      sha256 "daa26f6f6ed4eae5dc50efa0cf075e704d53bcc939607dd51daa731bef6c9e46"
    end

    on_arm do
      url "https://github.com/ctrlplanedev/cli/releases/download/v#{version}/ctrlc_Linux_arm64.tar.gz"
      sha256 "69df07d74d60e2f289359ad2f806f6a4bbdf0655adbb490f2249041bd1e79b03"
    end
  end

  def install
    bin.install "ctrlc"
  end

  test do
    system "#{bin}/ctrlc", "--version"
  end
end

