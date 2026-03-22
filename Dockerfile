#Python version 3.9, matching the book
FROM python:3.9-slim

COPY requirements.txt /tmp/

RUN pip install --no-cache-dir -r /tmp/requirements.txt

WORKDIR /app

# 6. Start JupyterLab directly
# Using the [exec] form is the professional standard for stability
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--NotebookApp.token=", "--NotebookApp.password="]
