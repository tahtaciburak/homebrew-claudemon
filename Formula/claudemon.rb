class Claudemon < Formula
  desc "Menu bar app showing your Claude Code usage limits"
  homepage "https://github.com/tahtaciburak/claudemon"
  url "https://github.com/tahtaciburak/claudemon/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "413a49c155a0a61cf1b8714feaf7209616ea1971360f0e5a38fe2e7888f35fd0"
  license "MIT"
  head "https://github.com/tahtaciburak/claudemon.git", branch: "main"

  depends_on :macos
  depends_on xcode: :build

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/Claudemon" => "claudemon"
  end

  service do
    run [opt_bin/"claudemon"]
    keep_alive true
    log_path var/"log/claudemon.log"
    error_log_path var/"log/claudemon.log"
  end

  test do
    assert_path_exists bin/"claudemon"
  end
end
