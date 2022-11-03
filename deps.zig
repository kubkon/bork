const std = @import("std");
const Pkg = std.build.Pkg;
const FileSource = std.build.FileSource;

pub const pkgs = struct {
    pub const zbox = Pkg{
        .name = "zbox",
        .source = FileSource{
            .path = "forks\\zbox\\src\\box.zig",
        },
        .dependencies = &[_]Pkg{
            Pkg{
                .name = "ziglyph",
                .source = FileSource{
                    .path = ".gyro\\ziglyph-jecolon-github.com-531d3095\\pkg\\src\\ziglyph.zig",
                },
            },
        },
    };

    pub const datetime = Pkg{
        .name = "datetime",
        .source = FileSource{
            .path = ".gyro\\zig-datetime-frmdstryr-github.com-932d2845\\pkg\\src\\datetime.zig",
        },
    };

    pub const clap = Pkg{
        .name = "clap",
        .source = FileSource{
            .path = ".gyro\\zig-clap-Hejsil-github.com-749c43f1\\pkg\\clap.zig",
        },
    };

    pub const iguanaTLS = Pkg{
        .name = "iguanaTLS",
        .source = FileSource{
            .path = ".gyro\\iguanaTLS-nektro-github.com-bd003aa7\\pkg\\src\\main.zig",
        },
    };

    pub const hzzp = Pkg{
        .name = "hzzp",
        .source = FileSource{
            .path = ".gyro\\hzzp-truemedian-github.com-4ecbaa41\\pkg\\src\\main.zig",
        },
    };

    pub const tzif = Pkg{
        .name = "tzif",
        .source = FileSource{
            .path = ".gyro\\zig-tzif-leroycep-github.com-cbb1d9f6\\pkg\\tzif.zig",
        },
    };

    pub const ziglyph = Pkg{
        .name = "ziglyph",
        .source = FileSource{
            .path = ".gyro\\ziglyph-jecolon-github.com-531d3095\\pkg\\src\\ziglyph.zig",
        },
    };

    pub const @"known-folders" = Pkg{
        .name = "known-folders",
        .source = FileSource{
            .path = ".gyro\\known-folders-ziglibs-github.com-24845b01\\pkg\\known-folders.zig",
        },
    };

    pub fn addAllTo(artifact: *std.build.LibExeObjStep) void {
        artifact.addPackage(pkgs.zbox);
        artifact.addPackage(pkgs.datetime);
        artifact.addPackage(pkgs.clap);
        artifact.addPackage(pkgs.iguanaTLS);
        artifact.addPackage(pkgs.hzzp);
        artifact.addPackage(pkgs.tzif);
        artifact.addPackage(pkgs.ziglyph);
        artifact.addPackage(pkgs.@"known-folders");
    }
};

pub const exports = struct {
    pub const bork = Pkg{
        .name = "bork",
        .source = FileSource{ .path = "src/main.zig" },
        .dependencies = &[_]Pkg{
            pkgs.zbox,
            pkgs.datetime,
            pkgs.clap,
            pkgs.iguanaTLS,
            pkgs.hzzp,
            pkgs.tzif,
            pkgs.ziglyph,
            pkgs.@"known-folders",
        },
    };
};
