# vscode-pytorch-ffmpeg

An OpenShift AI Image running VSCode for PyTorch development.
- Based on the [VS code server image by Red Hat Data Services](https://github.com/red-hat-data-services/notebooks/tree/main/codeserver/ubi9-python-3.12). 
- Uses cuda-toolkit-12-8.
- Uses flash-attention.

Base image: [https://quay.io/repository/modh/codeserver?tab=tags&tag=codeserver-ubi9-python-3.11-20250212](https://github.com/red-hat-data-services/notebooks/tree/main/codeserver/ubi9-python-3.12)

| Python packages | Description |
| --- | --- |
| flash-attention | Fast and Memory-Efficient Exact Attention with IO-Awareness |

| System packages | Description |
| --- | --- |
| cuda-toolkit-12-8 | Meta-package containing all runtime library packages and the CUDA driver. |

### Build the container with podman

```bash
podman build -t nerc-images/vscode-pytorch-ffmpeg:latest .
```

### Run the container with podman

```bash
podman run --rm -it --entrypoint /bin/bash nerc-images/vscode-pytorch-ffmpeg:latest
```

You can pull the latest [vscode-pytorch-ffmpeg container image](https://github.com/nerc-images/vscode-pytorch-ffmpeg/pkgs/container/vscode-pytorch-ffmpeg) below:

```
podman pull quay.io/nerc-images/vscode-pytorch-ffmpeg:latest
```
