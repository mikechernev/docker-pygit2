## Dockerised Pygit2

This is a dockerised version of the Pygit2

Usage: `docker run --rm -it mikechernev/pygit2 python`

Example with using a local file:
Given that you have a `test.py` in your current directory run -
`docker run --rm -it -v $(pwd):/code -w /code mikechernev/pygit2 python test.py`