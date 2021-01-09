FROM jupyter/datascience-notebook:latest

#RUN apt-get update
#RUN apt-get upgrade -y
#RUN rm -r /var/lib/apt/lists/*

RUN pip3 install nbdev gpy pandas seaborn plotnine pyDOE
RUN jupyter labextension install @arbennett/base16-nord \
    @arbennett/base16-outrun @arbennett/base16-summerfruit-light @arbennett/base16-solarized-light \
    @arbennett/base16-mexico-light @arbennett/base16-monokai
