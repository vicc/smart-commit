# Homebrew Formula for smart-commit
#
# To use this formula:
# 1. Create a new GitHub repo named "homebrew-tap"
# 2. Create directory: Formula/
# 3. Copy this file to: Formula/smart-commit.rb
# 4. Push to GitHub
# 5. Users can install with: brew tap vicc/tap && brew install smart-commit
#
# Before publishing:
# 1. Create a GitHub release with tag v1.0.0
# 2. Calculate SHA256 of the tarball:
#    curl -sL https://github.com/vicc/smart-commit/archive/refs/tags/v1.0.0.tar.gz | shasum -a 256
# 3. Replace CALCULATED_SHA256 below with the actual hash

class SmartCommit < Formula
  desc "LLM-powered git commit message generator"
  homepage "https://github.com/vicc/smart-commit"
  url "https://github.com/vicc/smart-commit/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "0a5d38b4edcd5113593b85b1d31f739db1e8523d646be73aa0688a4d30a253ce"
  license "MIT"

  depends_on "python@3" => :recommended

  def install
    bin.install "bin/git-smart-commit"
    bin.install_symlink bin/"git-smart-commit" => "smart-commit"
  end

  def caveats
    <<~EOS
      ✅ smart-commit installed!

      Run: smart-commit

      First run will walk you through a quick setup to configure your LLM provider.

      To re-run setup later: smart-commit --setup
    EOS
  end

  test do
    # Test that both commands exist and are executable
    assert_match "Welcome to smart-commit", shell_output("#{bin}/git-smart-commit --setup 2>&1", 1)
    assert_match "Welcome to smart-commit", shell_output("#{bin}/smart-commit --setup 2>&1", 1)
  end
end
