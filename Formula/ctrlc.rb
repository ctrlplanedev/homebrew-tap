# typed: false
# frozen_string_literal: true

class Ctrlc < Formula
  desc "CLI tool for Ctrlplane - deployment orchestration platform"
  homepage "https://github.com/ctrlplanedev/cli"
  version "1.18.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ctrlplanedev/cli/releases/download/v#{version}/ctrlc_Darwin_x86_64.tar.gz"
      sha256 "7341be60f0939d87a57fe7f15c5e268b5d49b18020f3a935ba9b053bbc597697"
    end

    on_arm do
      url "https://github.com/ctrlplanedev/cli/releases/download/v#{version}/ctrlc_Darwin_arm64.tar.gz"
      sha256 "a7eeb0d6c7f88cb55a20f1631033cf244bb52b837234acb47b505f468ad41f6f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctrlplanedev/cli/releases/download/v#{version}/ctrlc_Linux_x86_64.tar.gz"
      sha256 "e0b7a83cd63484a2debd3e547c60e14e267fb1646133cf4ed4985823a9a4452a"
    end

    on_arm do
      url "https://github.com/ctrlplanedev/cli/releases/download/v#{version}/ctrlc_Linux_arm64.tar.gz"
      sha256 "9acafc3df0da977c556735aacdcb3df63a7e639df08b1c0a456bedf8f3e3707c"
    end
  end

  def install
    bin.install "ctrlc"
  end

  test do
    system "#{bin}/ctrlc", "--version"
  end
end

