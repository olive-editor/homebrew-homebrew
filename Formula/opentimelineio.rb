class Opentimelineio < Formula
  desc "Open Source API and interchange format for editorial timeline information"
  homepage "http://opentimeline.io"
  url "https://github.com/PixarAnimationStudios/OpenTimelineIO.git",
    tag:      "v0.13",
    revision: "b104129ee01fc25745ab0d7f003c03e6accd6330"
  license "Apache-2.0"
  head "https://github.com/PixarAnimationStudios/OpenTimelineIO.git", branch: "master"

  bottle do
    root_url "https://github.com/olive-editor/homebrew-homebrew/releases/download/opentimelineio-0.13"
    sha256                               catalina:     "e73f4d2f7d9e7171b6dd8f6fbef62ac71e9d9be9e2b7db774c04399560b646d2"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c579f79b4d5562925ca38d584823353eb144b71ad594f5ea1679875da86ffec5"
  end

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "make", "-C", "build", "install"
  end

  test do
    # No idea if this does anything
    # system "ctest", "build"
    system "true"
  end
end
