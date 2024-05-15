FROM thekevjames/coveralls:3.3.1

COPY src/ /src/
RUN python3 -m pip install Cython

RUN python3 -m pip install "coverage[toml] < 7"

RUN git config --system --add safe.directory "/github/workspace"

ENTRYPOINT ["/src/entrypoint.py"]
