# Singularity Alpine NoVNC
Primary repository for an Alpine-based linux container running noVNC.

## Usage

Clone the repo.
```
git clone https://github.com/richward1/alpine-novnc
```

Build the container from Singularityfile.
```
singularity build alpine-novnc.simg Singularity
```

Run the container
**Note:** You must (for now) run this with the ``--containall`` flag!
```
singularity run --containall alpine-novnc.simg
```

## Author
Rich Ward

### More Info
Version: 1.0

