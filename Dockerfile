FROM continuumio/miniconda3
WORKDIR /home
COPY ./entrypoint.sh ./entrypoint.sh
RUN chmod +x ./entrypoint.sh
RUN conda create -n myenv python=3.6
SHELL ["conda", "run", "-n", "myenv", "/bin/bash", "-c"]


ENTRYPOINT [ "./entrypoint.sh" ]
# ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "myenv", "python", "run.py"]
# RUN echo "Make sure flask is installed:"
# # RUN /bin/bash -c ". activate myenv" && \
# #     pip install pandas && \ 
# #     pip install ../mylocal_package/