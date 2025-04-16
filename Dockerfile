# Official odoo images
FROM odoo:16

# Copy addons folder and odoo configuration
COPY ./addons /mnt/extra-addons
COPY ./odoo.conf /etc/odoo/odoo.conf
COPY ./requirements.txt /etc/odoo/requirements.txt

# Install python module
RUN pip3 install -r /etc/odoo/requirements.txt

