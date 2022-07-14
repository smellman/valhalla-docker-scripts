# Valhalla in docker

## prepare

```bash
docker pull valhalla/valhalla:run-latest 
```

## create routing

```bash
# wget pbf file
docker run --rm -u `id -u`:`id -g` -e PBF_FILE=planet-220704.osm.pbf -v ${PWD}:/srv valhalla/valhalla:run-latest /srv/run_valhalla_all.sh 
```

## run routing

```bash
docker run --rm -it -u `id -u`:`id -g` -p 8002:8002 -v ${PWD}:/srv valhalla/valhalla:run-latest /srv/run_valhalla_api.sh
```

### visual demo

```bash
git clone --depth=1 --recurse-submodules --single-branch --branch=gh-pages https://github.com/valhalla/demos.git
# open demos/routing/index-internal.html
```
