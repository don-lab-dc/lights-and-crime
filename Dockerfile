FROM jupyter/scipy-notebook
RUN conda install -y -c conda-forge \
    geopy \
    rtree \
    fiona \
    geopandas \
    postgis \
    psycopg2 \
    jupyterlab=0.31.10 \
    dask \
    distributed \
    python-graphviz

RUN jupyter labextension install @jupyterlab/vega3-extension
RUN pip install astral git+https://github.com/altair-viz/altair cachey
CMD start.sh jupyter lab --NotebookApp.token=''
