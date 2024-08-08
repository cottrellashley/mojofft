# mojofft
Fast Fourier Transform implemented in mojo programming language.

## Installation
### conda
If you don't have `conda`, install [miniconda here](https://docs.conda.io/projects/miniconda/en/latest), and follow the instructions uder your operating system.


### Create conda environemt
Create and activate conda environment:

```bash
conda env create -f environment.yml
conda activate mojofft
```

### Update conda environemt (if you're extending this project)
Update and activate conda environment:

```bash
conda env update -f environment.yml
conda activate mojofft
```


### Auto Set Mojo Environment
```bash
mkdir -p $CONDA_PREFIX/etc/conda/activate.d
export MOJO_PYTHON_LIBRARY="$(find $CONDA_PREFIX/lib -iname 'libpython*.[s,d]*' | sort -r | head -n 1)"
echo "export MOJO_PYTHON_LIBRARY=\"$MOJO_PYTHON_LIBRARY"" > $CONDA_PREFIX/ect/conda/activate.d/export-mojo.sh

mkdir -p $CONDA_PREFIX/etc/conda/deactivate.d
echo "unset MOJO_PYTHON_LIBRARY" > $CONDA_PREFIX/etc/conda/deactivate.d/unset-mojo.sh
```