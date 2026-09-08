class ZestfulCli < Formula
  desc "CLI for sending notifications to the Zestful macOS app"
  homepage "https://zestful.app"
  url "https://github.com/caladriuslogic/zestful/releases/download/v3.0.0/zestful-3.0.0-macos.tar.gz"
  sha256 "adc9b2dffd8ee0aef02c7ca0a2ff5a586c656566aab8589d397f75884f9323b2"
  version "3.0.0"
  # Proprietary, all rights reserved -- Caladrius Logic, Inc. The MIT this line
  # carried was never chosen: it mirrored an unintended MIT in the source repo,
  # and this tap is public, so it read as a grant. `:cannot_represent` is
  # Homebrew's value for a licence with no SPDX identifier.
  license :cannot_represent

  def install
    bin.install "zestful"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/zestful --help")
  end
end
