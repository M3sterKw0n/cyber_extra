#!/bin/bash

useradd -m -s /bin/bash monk
echo -e "admin\nadmin" | passwd monk

useradd -m -s /bin/bash natalie
echo -e "password123\npassword123" | passwd natalie

