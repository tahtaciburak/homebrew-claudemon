class Claudemon < Formula
  desc "Menu bar app showing your Claude Code usage limits"
  homepage "https://github.com/tahtaciburak/claudemon"
  url "https://github.com/tahtaciburak/claudemon/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "6bee3fd9fa68c7813ea12f52c531cdc662b87afc963ac0be50355e8503bace89"
  license "MIT"
  head "https://github.com/tahtaciburak/claudemon.git", branch: "main"

  depends_on xcode: :build
  depends_on :macos

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
