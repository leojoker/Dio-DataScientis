from setuptools import setup, find_packages

with open("README.md", "r") as f:
    page_description = f.read()

with open("requirements.txt") as f:
    requirements = f.read().splitlines()

setup(
    name="hello_world_dio_leo",
    version="0.0.1",
    author="Leonardo_Barbosa",
    author_email="leodanimanu@gmail.com",
    description="Exercicio para conclusão",
    long_description=page_description,
    long_description_content_type="text/markdown",
    url="https://github.com/leojoker"
    packages=find_packages(),
    install_requires=requirements,
    python_requires='>=3.8',
)