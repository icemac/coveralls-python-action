FROM thekevjames/coveralls:latest

COPY src/ /src/
RUN python3 -m pip install Cython

RUN python3 -m pip install "coverage[toml]"

RUN git config --system --add safe.directory "/github/workspace"

ENTRYPOINT ["/src/entrypoint.py"]
