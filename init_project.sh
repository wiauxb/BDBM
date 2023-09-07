cp all_the_things/binrec_module/.env .env
sed -i "s/\${PWD}/\${PWD}\/all_the_things\/binrec_module/g" .env
echo "export MUTATOR_ROOT=${PWD}/all_the_things/mutator" >> .env

#FIX wrong relative path in binrec
sed -i "s/binrec\.campaign/\.campaign/" all_the_things/binrec_module/binrec/project.py

# just binrec install-binrec