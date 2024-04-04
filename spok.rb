# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Spok < Formula
  desc "Sans Password or Key (SPoK) - An easier way for remote server authentication."
  homepage "https://github.com/devlup-labs/spok"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/devlup-labs/spok/releases/download/0.1.0/spok_0.1.0_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4a02411af58a75f94c96342cc144e7507cad5da627cbdc4dd14b0adea9b722da"

      def install
        bin.install "bin/spok"

        (etc/"spok"/"scripts").install "scripts/configure-spok-server.sh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/devlup-labs/spok/releases/download/0.1.0/spok_0.1.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4f90d411bb2797dbd7c01fa2e33f7fe976a209281634da60c80bf4828a29fa72"

      def install
        bin.install "bin/spok"

        (etc/"spok"/"scripts").install "scripts/configure-spok-server.sh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/devlup-labs/spok/releases/download/0.1.0/spok_0.1.0_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d62b376f21e9a3486e17a461f06e181ea90c0b26c3c29d49138a299043f59695"

      def install
        bin.install "bin/spok"

        (etc/"spok"/"scripts").install "scripts/configure-spok-server.sh"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/devlup-labs/spok/releases/download/0.1.0/spok_0.1.0_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3990c3f0bf89bab022226344d0b389908f10676e89da22c25463202c1021ec64"

      def install
        bin.install "bin/spok"

        (etc/"spok"/"scripts").install "scripts/configure-spok-server.sh"
      end
    end
  end
end
