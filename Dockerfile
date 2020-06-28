FROM python:3.8-buster AS builder

WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
RUN python app.py


FROM nginx:alpine
COPY --from=builder /app/build /usr/share/nginx/html
RUN cp /usr/share/nginx/html/static/cv.pdf /usr/share/nginx/html/cv.pdf
