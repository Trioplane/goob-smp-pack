"""Plugin that outputs the data pack and the resource pack in a local directory as a folder and zip archive, along with a sha1 hash of the resource pack in a JSON file. Original by: @foxeddev on GitHub"""

__all__ = [
    "OutputOptions",
    "output",
]


from typing import Optional
from pathlib import Path
import hashlib
import json

from beet import Context, PluginOptions, configurable


class OutputOptions(PluginOptions):
    directory: Optional[Path] = None


def beet_default(ctx: Context):
    ctx.require(output)


@configurable(validator=OutputOptions)
def output(ctx: Context, opts: OutputOptions):
    """Plugin that outputs the data pack and the resource pack in a local directory as a folder and zip archive, along with a sha1 hash of the resource pack in a JSON file. Original by: @foxeddev on GitHub"""

    output_path = opts.directory or ctx.output_directory or ctx.directory

    name = f"{ctx.project_id}_{ctx.project_version}"

    if ctx.project_version == "":
        name = ctx.project_id

    ctx.data.save(
        path = output_path / f"{name}_data_pack.zip",
        overwrite=True,
    )
    zipped_resource_pack = ctx.assets.save(
        path = output_path / f"{name}_resource_pack.zip",
        overwrite=True,
    )

    ctx.data.save(
        path = output_path / f"{name}_data_pack",
        overwrite=True,
    )
    ctx.assets.save(
        path = output_path / f"{name}_resource_pack",
        overwrite=True,
    )

    with open(zipped_resource_pack, "rb") as resource_pack_file:
        digest = hashlib.file_digest(resource_pack_file, "sha1")
        data = json.dumps({
            "sha1": digest.hexdigest()
        })
    
    hash_path = output_path / f"{name}_resource_pack_hash.json"
    with open(hash_path, "w") as hash_file:
        hash_file.write(data)

    
            

