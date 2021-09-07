class Opentimelineio < Formula
  desc "Open Source API and interchange format for editorial timeline information"
  homepage "http://opentimeline.io"
  url "https://github.com/PixarAnimationStudios/OpenTimelineIO.git",
    tag: "v0.13",
    revision: "b104129ee01fc25745ab0d7f003c03e6accd6330"
  version: "0.13"
  license "Apache-2.0"
  head "https://github.com/PixarAnimationStudios/OpenTimelineIO.git", branch: "master"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "make", "-C", "build", "install"
  end

  test do
    # No idea if this does anything
    system "ctest", "build"
  end
end
