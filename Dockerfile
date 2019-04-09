FROM hashload/radserver:10.3.1-rio
COPY emsserver.ini /etc/ems/
COPY . /app
RUN cp -f $(find /app/dist -iname "*.so") /usr/lib/ems 2> /dev/null || true 
