const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    const exe_mod = b.createModule(.{
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });
    exe_mod.addAnonymousImport("build.zig.zon", .{ .root_source_file = b.path("build.zig.zon") });
    const exe = b.addExecutable(.{
        .name = "testing",
        .root_module = exe_mod,
    });
    b.installArtifact(exe);
}
